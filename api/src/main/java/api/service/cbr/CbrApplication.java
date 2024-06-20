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
                "NONE",
                "MINOR",
                "SERIOUS"));
        slicnostTezinaFizickePovrede.setSimilarity("NONE", "MINOR", 0.3);
        slicnostTezinaFizickePovrede.setSimilarity("NONE", "SERIOUS", 0.1);
        slicnostTezinaFizickePovrede.setSimilarity("SERIOUS", "MINOR", 0.5);
        simConfig.addMapping(new Attribute("injurySeverity", CaseDescription.class), slicnostTezinaFizickePovrede);

        TabularSimilarity slicnostSluzbenoLice = new TabularSimilarity(Arrays.asList(
                "NONE",
                "PUBLIC_OFFICIAL",
                "SPECIAL_PUBLIC_OFFICIAL"));
        slicnostTezinaFizickePovrede.setSimilarity("NONE", "PUBLIC_OFFICIAL", 0.3);
        slicnostTezinaFizickePovrede.setSimilarity("NONE", "SPECIAL_PUBLIC_OFFICIAL", 0.1);
        slicnostTezinaFizickePovrede.setSimilarity("SPECIAL_PUBLIC_OFFICIAL", "PUBLIC_OFFICIAL", 0.5);
        simConfig.addMapping(new Attribute("publicOfficial", CaseDescription.class), slicnostSluzbenoLice);


        simConfig.addMapping(new Attribute("isUsedWeapon", CaseDescription.class), new Equal());
        simConfig.addMapping(new Attribute("isPermanentDamage", CaseDescription.class), new Equal());
        simConfig.addMapping(new Attribute("isProvoked", CaseDescription.class), new Equal());
        simConfig.addMapping(new Attribute("isRecidivist", CaseDescription.class), new Equal());

        /*TabularSimilarity slicnostKoriscenoOruzije = new TabularSimilarity(Arrays.asList(
                "true",
                "false"));
        slicnostKoriscenoOruzije.setSimilarity("true", "false", 0.1);
        simConfig.addMapping(new Attribute("isUsedWeapon", CaseDescription.class), slicnostKoriscenoOruzije);


        TabularSimilarity slicnostTrajnoOstecenje = new TabularSimilarity(Arrays.asList(
                "true",
                "false"));
        slicnostTrajnoOstecenje.setSimilarity("true", "false", 0.1);
        simConfig.addMapping(new Attribute("isPermanentDamage", CaseDescription.class), slicnostTrajnoOstecenje);


        TabularSimilarity slicnostProvociranje = new TabularSimilarity(Arrays.asList(
                "true",
                "false"));
        slicnostProvociranje.setSimilarity("true", "false", 0.1);
        simConfig.addMapping(new Attribute("isProvoked", CaseDescription.class), slicnostProvociranje);

        TabularSimilarity slicnostOsudjivan = new TabularSimilarity(Arrays.asList(
                "true",
                "false"));
        slicnostOsudjivan.setSimilarity("true", "false", 0.1);
        simConfig.addMapping(new Attribute("isRecidivist", CaseDescription.class), slicnostOsudjivan);*/


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
