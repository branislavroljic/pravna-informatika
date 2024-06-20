package api.service.cbr;

import api.enumeration.InjurySeverity;
import api.enumeration.JudgmentType;
import api.enumeration.PublicOfficial;
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
            BufferedReader br = new BufferedReader(new InputStreamReader(getClass().getResourceAsStream("/judgments.csv")));
            if (br == null)
                throw new Exception("Error opening file");

            String line = "";
            while ((line = br.readLine()) != null) {
                if (line.startsWith("#") || (line.length() == 0))
                    continue;
                String[] values = line.split(";");

                CBRCase cbrCase = new CBRCase();

                CaseDescription caseDescription = new CaseDescription();
                caseDescription.setId(Integer.parseInt(values[0]));
                caseDescription.setCaseNumber(values[1]);
                caseDescription.setDate(values[2]);
                caseDescription.setCourt(values[3]);
                caseDescription.setJudge(values[4]);
                caseDescription.setCourtReporter(values[5]);
                caseDescription.setDefendant(values[6]);
                caseDescription.setCriminalOffense(values[7]);
                caseDescription.setJudgmentType("SUSPENDED".equals(values[8]) ? JudgmentType.SUSPENDED :
                        "ACQUITTAL".equals(values[8]) ? JudgmentType.ACQUITTAL :
                        "CONVICTION".equals(values[8]) ? JudgmentType.CONVICTION:
                        JudgmentType.WARNING);
                caseDescription.setSentence(values[9]);
                caseDescription.setInjurySeverity("SERIOUS".equals(values[10]) ? InjurySeverity.SERIOUS :
                                                    "MINOR".equals(values[10]) ? InjurySeverity.MINOR :
                                                    InjurySeverity.NONE);
                caseDescription.setPublicOfficial("NONE".equals(values[11]) ? PublicOfficial.NONE :
                                                  "PUBLIC_OFFICIAL".equals(values[11]) ? PublicOfficial.PUBLIC_OFFICIAL :
                                                          PublicOfficial.SPECIAL_PUBLIC_OFFICIAL);
                caseDescription.setIsUsedWeapon(true ? values[12].equals("true") : false);
                caseDescription.setIsPermanentDamage(true ? values[13].equals("true") : false);
                caseDescription.setIsProvoked(true ? values[14].equals("true") : false);
                caseDescription.setIsRecidivist(true ? values[15].equals("true") : false);

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
