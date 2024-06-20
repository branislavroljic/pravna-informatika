package api.service.cbr;

import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseBaseFilter;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.exception.InitializingException;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Collection;
import java.util.LinkedList;

public class CsvConnector implements Connector {

    @Override
    public Collection<CBRCase> retrieveAllCases() {
        LinkedList<CBRCase> cases = new LinkedList<CBRCase>();

        try {
            BufferedReader br = new BufferedReader(new InputStreamReader(getClass().getResourceAsStream("/presude.csv")));
            if (br == null)
                throw new Exception("Error opening file");

            String line = "";
            while ((line = br.readLine()) != null) {
                if (line.startsWith("#") || (line.length() == 0))
                    continue;
                String[] values = line.split(";");

                CBRCase cbrCase = new CBRCase();

                CaseDescription caseDescription = new CaseDescription();
                caseDescription.setCaseNumber(values[0]);
                caseDescription.setDate(values[1]);
                caseDescription.setCourt(values[2]);
                caseDescription.setJudge(values[3]);
                caseDescription.setCourtReporter(values[4]);
                caseDescription.setDefendant(values[5]);
                caseDescription.setCriminalOffense(values[6]);
                //caseDescription.setInjurySeverity(values[7]);
                //caseDescription.setPublicOfficial(values[8]);
                caseDescription.setUsedWeapon(true ? values[9].equals("1") : false);
                caseDescription.setPermanentDamage(true ? values[10].equals("1") : false);
                caseDescription.setProvoked(true ? values[11].equals("1") : false);
                caseDescription.setRecidivist(true ? values[12].equals("1") : false);
                caseDescription.setSentence(values[13]);

                cbrCase.setDescription(caseDescription);
                cases.add(cbrCase);
                System.out.println(cases);
            }
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cases;
    }

    @Override
    public void initFromXMLfile(URL url) throws InitializingException {

    }

    @Override
    public void close() {

    }

    @Override
    public void storeCases(Collection<CBRCase> collection) {

    }

    @Override
    public void deleteCases(Collection<CBRCase> collection) {

    }

    @Override
    public Collection<CBRCase> retrieveSomeCases(CaseBaseFilter caseBaseFilter) {
        return null;
    }
}
