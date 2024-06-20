package api.service.cbr;

import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.*;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Equal;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;

import java.util.Arrays;
import java.util.Collection;

public class CbrApplication implements StandardCBRApplication {

    Connector _connector;  /** Connector object */
    CBRCaseBase _caseBase;  /** CaseBase object */

    NNConfig simConfig;  /** KNN configuration */

    @Override
    public void configure() throws ExecutionException {
        _connector =  new CsvConnector();

        _caseBase = new LinealCaseBase();  // Create a Lineal case base for in-memory organization

        simConfig = new NNConfig(); // KNN configuration
        simConfig.setDescriptionSimFunction(new Average());  // global similarity function = average

        TabularSimilarity slicnostTezinaFizickePovrede = new TabularSimilarity(Arrays.asList(
                "Bez povrede",
                "Laka telesna povreda",
                "Teska telesna povreda"));
        slicnostTezinaFizickePovrede.setSimilarity("Bez povrede", "Laka telesna povreda", 0.3);
        slicnostTezinaFizickePovrede.setSimilarity("Bez povrede", "Teska telesna povreda", 0.1);
        slicnostTezinaFizickePovrede.setSimilarity("Teska telesna povreda", "Laka telesna povreda", 0.5);
        simConfig.addMapping(new Attribute("tezinaFizickePovrede", CaseDescription.class), slicnostTezinaFizickePovrede);

        TabularSimilarity slicnostSluzbenoLice = new TabularSimilarity(Arrays.asList(
                "Nije sluzbeno lice",
                "Jeste sluzbeno lice",
                "Specijalno sluzbeno lice"));
        slicnostTezinaFizickePovrede.setSimilarity("Nije sluzbeno lice", "Jeste sluzbeno lice", 0.3);
        slicnostTezinaFizickePovrede.setSimilarity("Nije sluzbeno lice", "Specijalno sluzbeno lice", 0.1);
        slicnostTezinaFizickePovrede.setSimilarity("Specijalno sluzbeno lice", "Jeste sluzbeno lice", 0.5);
        simConfig.addMapping(new Attribute("sluzbenoLice", CaseDescription.class), slicnostSluzbenoLice);

        simConfig.addMapping(new Attribute("koriscenoOruzije", CaseDescription.class), new Equal());

        simConfig.addMapping(new Attribute("trajnoOstecenjePovredjenog", CaseDescription.class), new Equal());

        simConfig.addMapping(new Attribute("posledicaProvociranja", CaseDescription.class), new Equal());

        simConfig.addMapping(new Attribute("ranijeOsudjivan", CaseDescription.class), new Equal());


        // Equal - returns 1 if both individuals are equal, otherwise returns 0
        // Interval - returns the similarity of two number inside an interval: sim(x,y) = 1-(|x-y|/interval)
        // Threshold - returns 1 if the difference between two numbers is less than a threshold, 0 in the other case
        // EqualsStringIgnoreCase - returns 1 if both String are the same despite case letters, 0 in the other case
        // MaxString - returns a similarity value depending of the biggest substring that belong to both strings
        // EnumDistance - returns the similarity of two enum values as the their distance: sim(x,y) = |ord(x) - ord(y)|
        // EnumCyclicDistance - computes the similarity between two enum values as their cyclic distance
        // Table - uses a table to obtain the similarity between two values. Allowed values are Strings or Enums. The table is read from a text file.
        // TabularSimilarity - calculates similarity between two strings or two lists of strings on the basis of tabular similarities
    }

    @Override
    public CBRCaseBase preCycle() throws ExecutionException {
        _caseBase.init(_connector);
        java.util.Collection<CBRCase> cases = _caseBase.getCases();
//		for (CBRCase c: cases)
//			System.out.println(c.getDescription());
        return _caseBase;
    }

    @Override
    public void cycle(CBRQuery cbrQuery) throws ExecutionException {
        Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), cbrQuery, simConfig);
        eval = SelectCases.selectTopKRR(eval, 5);
        System.out.println("Retrieved cases:");
        for (RetrievalResult nse : eval)
            System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());
    }

    @Override
    public void postCycle() throws ExecutionException {

    }
}