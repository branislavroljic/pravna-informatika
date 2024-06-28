package api.service;

import api.dto.CaseFeatures;
import api.enumeration.InjurySeverity;
import api.enumeration.PublicOfficial;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Objects;

@Service
@RequiredArgsConstructor
public class DrDeviceService {
    @Value("${drdevice.path}")
    private String BASE_PATH;

    public String startDrDevice(CaseFeatures caseDTO) throws IOException, InterruptedException {
        String cleanPath = BASE_PATH + "clean.bat";
        String startPath = BASE_PATH + "start.bat";

        writeFactsRdf(caseDTO);

        try {
            ProcessBuilder pb = new ProcessBuilder(cleanPath);
            pb.redirectOutput(ProcessBuilder.Redirect.INHERIT);
            pb.redirectError(ProcessBuilder.Redirect.INHERIT);
            pb.directory(new File(cleanPath).getParentFile());

            Process process = pb.start();
            int exitCode = process.waitFor();
            // Print the exit code
            System.out.println("CLEAN.BAT file exited with code " + exitCode);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                ProcessBuilder pb = new ProcessBuilder(startPath);
                pb.redirectOutput(ProcessBuilder.Redirect.INHERIT);
                pb.redirectError(ProcessBuilder.Redirect.INHERIT);
                pb.directory(new File(startPath).getParentFile());

                Process process = pb.start();
                int exitCode = process.waitFor();
                // Print the exit code
                System.out.println("START.BAT file exited with code " + exitCode);
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                return formatResults();
            }
        }
    }

    private void writeFactsRdf(CaseFeatures caseDTO) throws IOException {
        String is_entity;
        String teska_telesna_povreda = "yes";
        String laka_telesna_povreda = "no";
        String zivotna_opasnost = "no"; //?
        String trajna_osakacenost = "yes";
        String korisceno_oruzje = "yes";
        String provokacija = "yes";
        String napad_ili_pretnja = "no";
        String javno_mesto = "no";

        if (Objects.equals(caseDTO.getPublicOfficial(), PublicOfficial.NONE)) {
            is_entity = "individual";
        } else if (Objects.equals(caseDTO.getPublicOfficial(), PublicOfficial.PUBLIC_OFFICIAL)) {
            is_entity = "legal_entity";
        } else {
            is_entity = "special_legal_entity";
        }

        if (Objects.equals(caseDTO.getInjurySeverity(), InjurySeverity.MINOR)) {
            teska_telesna_povreda = "no";
            laka_telesna_povreda = "yes";
            napad_ili_pretnja = "no";
        } else if (Objects.equals(caseDTO.getInjurySeverity(), InjurySeverity.SERIOUS)) {
            teska_telesna_povreda = "yes";
            laka_telesna_povreda = "no";
            napad_ili_pretnja = "no";
        } else {
            teska_telesna_povreda = "no";
            laka_telesna_povreda = "no";
            napad_ili_pretnja = "yes";
        }

        if (caseDTO.getIsUsedWeapon()) {
            korisceno_oruzje = "yes";
        } else {
            korisceno_oruzje = "no";
        }
        if (caseDTO.getIsProvoked()) {
            provokacija = "yes";
        } else {
            provokacija = "no";
        }
        if (caseDTO.getIsPermanentDamage()) {
            trajna_osakacenost = "yes";
        } else {
            trajna_osakacenost = "no";
        }

        String fileContent =
                "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n" +
                        "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"\n" +
                        "        xmlns:rdfs=\"http://www.w3.org/2000/01/rdf-schema#\"\n" +
                        "        xmlns:xsd=\"http://www.w3.org/2001/XMLSchema#\"\n" +
                        "        xmlns:lc=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#\">\n" +
                        "    <lc:case rdf:about=\"http://informatika.ftn.uns.ac.rs/legal-case.rdf#case01\">\n" +
                        "       <lc:defendant>John</lc:defendant>\n" +
                        "       <lc:victim>Johny</lc:victim>\n" +
                        "        <lc:name>case 01</lc:name>\n" +
                        "\t<lc:is_entity>" + is_entity + "</lc:is_entity>\n" +
                        "\t<lc:teska_telesna_povreda>" + teska_telesna_povreda + "</lc:teska_telesna_povreda>\n" +
                        "\t<lc:laka_telesna_povreda>" + laka_telesna_povreda + "</lc:laka_telesna_povreda>\n" +
                        "\t<lc:trajna_osakacenost>" + trajna_osakacenost + "</lc:trajna_osakacenost>\n" +
                        "\t<lc:korisceno_oruzje>" + korisceno_oruzje + "</lc:korisceno_oruzje>\n" +
                        "\t<lc:provokacija>" + provokacija + "</lc:provokacija>\n" +
                        "\t<lc:napad_ili_pretnja>" + napad_ili_pretnja + "</lc:napad_ili_pretnja>\n" +
                        "\t<lc:zivotna_opasnost>" + zivotna_opasnost + "</lc:zivotna_opasnost>\n" +
                        "\t<lc:javno_mesto>" + javno_mesto + "</lc:javno_mesto>\n" +
                        "    </lc:case>\n" +
                        "</rdf:RDF>";

        FileWriter writer = new FileWriter(BASE_PATH + "facts.rdf", false);
        writer.write(fileContent);
        writer.close();
    }

    private String formatResults() throws IOException {
        String retVal = "";
        String provenPositive = "<defeasible:truthStatus>defeasibly-proven-positive</defeasible:truthStatus>";

        String resultsPath = BASE_PATH + "export.rdf";
        String fileContent = new String(Files.readAllBytes(Paths.get(resultsPath)), StandardCharsets.UTF_8);

        Boolean didAnythingWrong = false;

        String commited_151_st1 = StringUtils.substringBetween(fileContent, "<export:commited_151_st1", "</export:commited_151_st1");
        if (commited_151_st1 != null && commited_151_st1.contains(provenPositive)) {
            retVal += "Okrivljeni je optuzen za nanosenje teske telesne povrede (cl.151 st.1 KZ).";
            didAnythingWrong = true;
        }

        String commited_151_st2 = StringUtils.substringBetween(fileContent, "<export:commited_151_st2", "</export:commited_151_st2");
        if (commited_151_st2 != null && commited_151_st2.contains(provenPositive)) {
            retVal += "Okrivljeni je optuzen za nanosenje teske telesne povrede (cl.151 st.2 KZ).";
            didAnythingWrong = true;
        }

        String commited_152_st1 = StringUtils.substringBetween(fileContent, "<export:commited_152_st1", "</export:commited_152_st1");
        if (commited_152_st1 != null && commited_152_st1.contains(provenPositive)) {
            retVal += "Okrivljeni je optuzen za nanosenje lake telesne povrede (cl.152 st.1 KZ).";
            didAnythingWrong = true;
        }

        String commited_152_st2 = StringUtils.substringBetween(fileContent, "<export:commited_152_st2", "</export:commited_152_st2");
        if (commited_152_st2 != null && commited_152_st2.contains(provenPositive)) {
            retVal += "Okrivljeni je optuzen za nanosenje lake telesne povrede (cl.152 st.2 KZ).";
            didAnythingWrong = true;
        }
        String commited_152_st3 = StringUtils.substringBetween(fileContent, "<export:commited_152_st3", "</export:commited_152_st3");
        if (commited_152_st3 != null && commited_152_st3.contains(provenPositive)) {
            retVal += "Okrivljeni je optuzen za nanosenje lake telesne povrede (cl.152 st.3 KZ).";
            didAnythingWrong = true;
        }
        String commited_376_st1 = StringUtils.substringBetween(fileContent, "<export:commited_376_st1", "</export:commited_376_st1");
        if (commited_376_st1 != null && commited_376_st1.contains(provenPositive)) {
            retVal += "Okrivljeni je optuzen za napad na sluzbeno lice u vrsenju sluzbene duznosti (cl.376 st.1 KZ).";
            didAnythingWrong = true;
        }
        String commited_376_st2 = StringUtils.substringBetween(fileContent, "<export:commited_376_st2", "</export:commited_376_st2");
        if (commited_376_st2 != null && commited_376_st2.contains(provenPositive)) {
            retVal += "Okrivljeni je optuzen za napad na sluzbeno lice u vrsenju sluzbene duznosti (cl.376 st.2 KZ).";
            didAnythingWrong = true;
        }
        String commited_376_st3 = StringUtils.substringBetween(fileContent, "<export:commited_376_st3", "</export:commited_376_st3");
        if (commited_376_st3 != null && commited_376_st2.contains(provenPositive)) {
            retVal += "Okrivljeni je optuzen za napad na sluzbeno lice u vrsenju sluzbene duznosti (cl.376 st.3 KZ).";
            didAnythingWrong = true;
        }

        String placed_on_market_rezani_duvan = StringUtils.substringBetween(fileContent, "<export:placed_on_market_rezani_duvan", "</export:placed_on_market_rezani_duvan");
        if (placed_on_market_rezani_duvan != null && placed_on_market_rezani_duvan.contains(provenPositive)) {
            retVal += "Okrivljeni je optužen za nedozvoljenu trgovinu rezanog duvana. \n\n";
            didAnythingWrong = true;
        }

        String unauthorized_retail_distribution = StringUtils.substringBetween(fileContent, "<export:unauthorized_retail_distribution", "</export:unauthorized_retail_distribution>");
        if (unauthorized_retail_distribution != null && unauthorized_retail_distribution.contains(provenPositive)) {
            retVal += "Okrivljeni je optužen za nedozvoljenu trgovinu u prometu na malo. \n\n";
            didAnythingWrong = true;
        }

        String unauthorized_wholesale_distribution = StringUtils.substringBetween(fileContent, "<export:unauthorized_wholesale_distribution", "</export:unauthorized_wholesale_distribution>");
        if (unauthorized_wholesale_distribution != null && unauthorized_wholesale_distribution.contains(provenPositive)) {
            retVal += "Okrivljeni je optužen za nedozvoljenu trgovinu u prometu na veliko. \n\n";
            didAnythingWrong = true;
        }

        if (!didAnythingWrong) {
            return "Nije kriv.";
        }
        String novcana_kazna_152_st1_min = StringUtils.substringBetween(fileContent, "<export:novcana_kazna_152_st1_min", "</export:novcana_kazna_152_st1_min");
        if (novcana_kazna_152_st1_min != null && novcana_kazna_152_st1_min.contains(provenPositive)) {
            retVal += "Okrivljeni je optužen da plati MINIMALNO " + StringUtils.substringBetween(novcana_kazna_152_st1_min, "<export:value>", "</export:value>") + "e. \n\n";
        }

        String novcana_kazna_152_st1_max = StringUtils.substringBetween(fileContent, "<export:novcana_kazna_152_st1_max", "</export:novcana_kazna_152_st1_max");
        if (novcana_kazna_152_st1_max != null && novcana_kazna_152_st1_max.contains(provenPositive)) {
            retVal += "Okrivljeni je optužen da plati MAKSIMALNO " + StringUtils.substringBetween(novcana_kazna_152_st1_max, "<export:value>", "</export:value>") + "e. \n\n";
        }

        String kazna_zatvora_min = StringUtils.substringBetween(fileContent, "<export:kazna_zatvora_min", "</export:kazna_zatvora_min");
        if (kazna_zatvora_min != null && kazna_zatvora_min.contains(provenPositive)) {
            retVal += "Okrivljenom se izriče MINIMALNA zatvorska kazna od " + StringUtils.substringBetween(kazna_zatvora_min, "<export:value>", "</export:value>") + " meseci. \n\n";
        }

        String kazna_zatvora_max = StringUtils.substringBetween(fileContent, "<export:kazna_zatvora_max", "</export:kazna_zatvora_max");
        if (kazna_zatvora_max != null && kazna_zatvora_max.contains(provenPositive)) {
            retVal += "Okrivljenom se izriče MASKIMALNA zatvorska kazna od " + StringUtils.substringBetween(kazna_zatvora_max, "<export:value>", "</export:value>") + " meseci. \n\n";
        }

        if (retVal.isEmpty()) {
            retVal = "Nije kriv.";
        }
        System.out.print(retVal);

        return retVal;

    }
}
