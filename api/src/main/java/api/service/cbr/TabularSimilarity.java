package api.service.cbr;

import es.ucm.fdi.gaia.jcolibri.exception.NoApplicableSimilarityFunctionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.LocalSimilarityFunction;

import java.util.List;

public class TabularSimilarity implements LocalSimilarityFunction {

    private double matrix[][];
    List<Object> categories;

    public TabularSimilarity(List<Object> categories) {
        this.categories = categories;
        int n = categories.size();
        matrix = new double[n][n];
        for (int i=0; i<n; i++)
            matrix[i][i] = 1;  // symbolic similarity of term with itself
    }

    public void setSimilarity(Object value1, Object value2, double sim) {
        setSimilarity(value1, value2, sim, sim);
    }

    public void setSimilarity(Object value1, Object value2, double sim1, double sim2) {
        int index1 = categories.indexOf(value1);
        int index2 = categories.indexOf(value2);
        if (index1 != -1 && index2 != -1) {
            matrix[index1][index2] = sim1;
            matrix[index2][index1] = sim2;
        }
    }

    private int getIndex(Object value) {
        if (value instanceof Enum) {
            // Handle enums by finding their ordinal (index in enum)
            return ((Enum<?>) value).ordinal();
        } else {
            // Handle other types (like strings)
            return categories.indexOf(value);
        }
    }

    @Override
    public double compute(Object value1, Object value2) throws NoApplicableSimilarityFunctionException {
        if (value1 instanceof Enum && value2 instanceof Enum)
            return compute((Enum<?>) value1, (Enum<?>) value2);
        if (value1 instanceof String && value2 instanceof String)
            return compute((String)value1, (String)value2);
        if (value1 instanceof List && value2 instanceof List)
            return compute((List)value1, (List)value2);
        return 0;
    }

    public double compute(String str1, String str2) {
        int index1 = categories.indexOf(str1);
        int index2 = categories.indexOf(str2);
        if (index1 != -1 && index2 != -1)
            return matrix[index1][index2];
        if (str1 != null && str1.equals(str2))
            return 1;
        return 0;
    }

    public double compute(List<String> list1, List<String> list2) {
        if (list1.isEmpty() && list2.isEmpty())
            return 1;
        double sim1to2 = 0;
        for (String el1: list1) {
            double sim = 0;
            for (String el2: list2)
                sim = Math.max(sim, compute(el1,el2));
            sim1to2 += sim;
        }
        double sim2to1 = 0;
        for (String el2: list2) {
            double sim = 0;
            for (String el1: list1)
                sim = Math.max(sim, compute(el2, el1));
            sim2to1 += sim;
        }
        return (sim1to2 + sim2to1)/(list1.size() + list2.size());
    }

    public double compute(Enum<?> enum1, Enum<?> enum2) {
        int index1 = enum1.ordinal();
        int index2 = enum2.ordinal();
        if (index1 != -1 && index2 != -1)
            return matrix[index1][index2];
        if (enum1.equals(enum2))
            return 1;
        return 0;
    }

    @Override
    public boolean isApplicable(Object value1, Object value2) {
        if (value1 instanceof Enum && value2 instanceof Enum)
            return true;
        if (value1 instanceof String && value2 instanceof String)
            return true;
        if (value1 instanceof List && value2 instanceof List)
            return true;
        return false;
    }
}
