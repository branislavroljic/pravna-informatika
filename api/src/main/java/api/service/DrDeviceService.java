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
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import static gate.util.Out.print;

@Service
@RequiredArgsConstructor
public class DrDeviceService {
    @Value("${drdevice.path}")
    private String BASE_PATH;

    public String startDrDevice(CaseFeatures caseDTO) throws IOException, InterruptedException {
        if (!BASE_PATH.endsWith("/") && !BASE_PATH.endsWith("\\")) {
            BASE_PATH = BASE_PATH + "/";
        }

        boolean isWindows = System.getProperty("os.name").toLowerCase().contains("win");
        String scriptExt = isWindows ? ".bat" : ".sh";
        String cleanPath = BASE_PATH + "clean" + scriptExt;
        String startPath = BASE_PATH + "start" + scriptExt;

        writeFactsRdf(caseDTO);

        try {
            ProcessBuilder pb = isWindows ? new ProcessBuilder(cleanPath) : new ProcessBuilder("bash", cleanPath);
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
                ProcessBuilder pb = isWindows ? new ProcessBuilder(startPath) : new ProcessBuilder("bash", startPath);
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
        String zivotna_opasnost = "no"; // ?
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

        napad_ili_pretnja = "yes";

        if (Objects.equals(caseDTO.getInjurySeverity(), InjurySeverity.MINOR)) {
            teska_telesna_povreda = "no";
            laka_telesna_povreda = "yes";
        } else if (Objects.equals(caseDTO.getInjurySeverity(), InjurySeverity.SERIOUS)) {
            teska_telesna_povreda = "yes";
            laka_telesna_povreda = "no";
        } else {
            teska_telesna_povreda = "no";
            laka_telesna_povreda = "no";
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
        if (caseDTO.getIsDisturbedPublicOrderAndPeace()) {
            javno_mesto = "yes";
        } else {
            javno_mesto = "no";
        }

        String fileContent = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?>\n" +
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
        print("ovde sam");
        FileWriter writer = new FileWriter(BASE_PATH + "facts.rdf", false);
        writer.write(fileContent);
        writer.close();
        print("opet");
    }

    private static final String PROVEN_POSITIVE = "<defeasible:truthStatus>defeasibly-proven-positive</defeasible:truthStatus>";

    private static final String SUDSKA_OPOMENA = "Sud može umesto kazne izreći sudsku opomenu jer je okrivljeni bio izazvan nepristojnim ili grubim ponašanjem oštećenog (čl. 152 st. 3 KZ).";

    private record Offence(String name, String text,
            String prisonMin, String prisonMax, String prisonUnit,
            String fineMin, String fineMax, String fineUnit) {
    }

    private static final List<Offence> OFFENCES = List.of(
            new Offence("commited_151_st1", "nanošenje teške telesne povrede (čl. 151 st. 1 KZ)",
                    "kazna_zatvora_cl_151_st1_min", "kazna_zatvora_cl_151_st1_max", "meseci", null, null, null),
            new Offence("commited_151_st2", "nanošenje teške telesne povrede (čl. 151 st. 2 KZ)",
                    "kazna_zatvora_cl_151_st2_min", "kazna_zatvora_cl_151_st2_max", "meseci", null, null, null),
            new Offence("commited_152_st1", "nanošenje lake telesne povrede (čl. 152 st. 1 KZ)",
                    null, "kazna_zatvora_cl_152_st1_max", "meseci",
                    "novcana_kazna_152_st1_min", "novcana_kazna_152_st1_max", "EUR"),
            new Offence("commited_152_st2",
                    "nanošenje lake telesne povrede oružjem ili opasnim oruđem (čl. 152 st. 2 KZ)",
                    null, "kazna_zatvora_cl_152_st2_max", "meseci", null, null, null),
            new Offence("commited_376_st1", "napad na službeno lice u vršenju službene dužnosti (čl. 376 st. 1 KZ)",
                    null, "kazna_zatvora_cl_376_st1_max", "meseci", null, null, null),
            new Offence("commited_376_st2", "napad na službeno lice u vršenju službene dužnosti (čl. 376 st. 2 KZ)",
                    "kazna_zatvora_cl_376_st2_min", "kazna_zatvora_cl_376_st2_max", "meseci", null, null, null),
            new Offence("commited_376_st3", "napad na službeno lice u vršenju službene dužnosti (čl. 376 st. 3 KZ)",
                    "kazna_zatvora_cl_376_st3_min", "kazna_zatvora_cl_376_st3_max", "meseci", null, null, null),
            new Offence("commited_8_st1",
                    "podstrekavanje ili izazivanje drugoga na tuču na javnom mestu (čl. 8 st. 1 Zakona o javnom redu i miru)",
                    null, "kazna_zatvora_cl_8_st1_max", "dana",
                    "novcana_kazna_8_st1_min", "novcana_kazna_8_st1_max", "minimalnih zarada"),
            new Offence("commited_8_st2",
                    "fizički napad na drugoga na javnom mestu (čl. 8 st. 2 Zakona o javnom redu i miru)",
                    null, "kazna_zatvora_cl_8_st2_max", "dana",
                    "novcana_kazna_8_st2_min", "novcana_kazna_8_st2_max", "minimalnih zarada"),
            new Offence("commited_10_st1",
                    "ometanje ili omalovažavanje službenog lica (čl. 10 st. 1 Zakona o javnom redu i miru)",
                    null, "kazna_zatvora_cl_10_st1_max", "dana", null, null, null));

    private String formatResults() throws IOException {
        String resultsPath = BASE_PATH + "export.rdf";
        String fileContent = new String(Files.readAllBytes(Paths.get(resultsPath)), StandardCharsets.UTF_8);

        List<String> hidden = new ArrayList<>();
        if (isProven(fileContent, "commited_151_st2")) {
            hidden.add("commited_151_st1");
        }
        if (isProven(fileContent, "commited_152_st2")) {
            hidden.add("commited_152_st1");
        }
        if (isProven(fileContent, "commited_376_st2") || isProven(fileContent, "commited_376_st3")) {
            hidden.add("commited_376_st1");
        }

        boolean clan8ObaStava = isProven(fileContent, "commited_8_st1") && isProven(fileContent, "commited_8_st2");
        String clan376 = isProven(fileContent, "commited_376_st3") ? "commited_376_st3"
                : isProven(fileContent, "commited_376_st1") ? "commited_376_st1" : null;
        boolean clan10iClan376 = isProven(fileContent, "commited_10_st1") && clan376 != null;
        if (clan8ObaStava) {
            hidden.add("commited_8_st2");
        }
        if (clan10iClan376) {
            hidden.add(clan376);
        }

        StringBuilder result = new StringBuilder();
        for (Offence offence : OFFENCES) {
            if (!isProven(fileContent, offence.name()) || hidden.contains(offence.name())) {
                continue;
            }
            if (clan8ObaStava && offence.name().equals("commited_8_st1")) {
                result.append(clan8Sentence(fileContent)).append(" ");
                continue;
            }
            if (clan10iClan376 && offence.name().equals("commited_10_st1")) {
                result.append(clan10Sentence(fileContent, clan376)).append(" ");
                continue;
            }
            result.append("Okrivljeni je optužen za ").append(offence.text()).append(".");
            String penalty = penaltyText(fileContent, offence);
            if (!penalty.isEmpty()) {
                result.append(" Propisana kazna: ").append(penalty).append(".");
            }
            result.append(" ");
            if (offence.name().equals("commited_152_st2") && isProven(fileContent, "sudska_opomena")) {
                result.append(SUDSKA_OPOMENA).append(" ");
            }
        }

        String retVal = result.length() == 0 ? "Nije kriv." : result.toString().trim();
        System.out.print(retVal);
        return retVal;
    }

    private String clan8Sentence(String fileContent) {
        return "Okrivljeni je optužen za prekršaj iz čl. 8 Zakona o javnom redu i miru."
                + " Ako je podstrekavao ili izazivao drugoga na tuču bez fizičkog napada, primenjuje se st. 1 (propisana kazna: "
                + penaltyText(fileContent, offence("commited_8_st1")) + ")."
                + " Ako je fizički napao drugoga ili učestvovao u tuči, primenjuje se st. 2 (propisana kazna: "
                + penaltyText(fileContent, offence("commited_8_st2")) + ").";
    }

    private String clan10Sentence(String fileContent, String clan376) {
        String stav = clan376.equals("commited_376_st3") ? "st. 3" : "st. 1";
        return "Okrivljeni je optužen za prekršaj iz čl. 10 st. 1 Zakona o javnom redu i miru ili za krivično delo iz čl. 376 "
                + stav + " KZ."
                + " Ako je službeno lice samo ometao ili omalovažavao, bez napada ili pretnje napadom, primenjuje se čl. 10 st. 1 Zakona o javnom redu i miru (propisana kazna: "
                + penaltyText(fileContent, offence("commited_10_st1")) + ")."
                + " Ako je službeno lice napao ili pretio da će ga napasti, primenjuje se čl. 376 " + stav
                + " KZ (propisana kazna: " + penaltyText(fileContent, offence(clan376)) + ").";
    }

    private Offence offence(String name) {
        return OFFENCES.stream().filter(o -> o.name().equals(name)).findFirst().orElseThrow();
    }

    private String penaltyText(String fileContent, Offence offence) {
        List<String> parts = new ArrayList<>();
        String fineMin = provenValue(fileContent, offence.fineMin());
        String fineMax = provenValue(fileContent, offence.fineMax());
        if (fineMin != null && fineMax != null) {
            parts.add("novčana kazna od " + fineMin + " do " + fineMax + " " + offence.fineUnit());
        }
        String prisonMin = provenValue(fileContent, offence.prisonMin());
        String prisonMax = provenValue(fileContent, offence.prisonMax());
        if (prisonMax != null) {
            parts.add(prisonMin != null
                    ? "zatvor od " + prisonMin + " do " + prisonMax + " " + offence.prisonUnit()
                    : "zatvor do " + prisonMax + " " + offence.prisonUnit());
        }
        return String.join(" ili ", parts);
    }

    private boolean isProven(String fileContent, String name) {
        String block = exportBlock(fileContent, name);
        return block != null && block.contains(PROVEN_POSITIVE);
    }

    private String provenValue(String fileContent, String name) {
        if (!isProven(fileContent, name)) {
            return null;
        }
        return StringUtils.substringBetween(exportBlock(fileContent, name), "<export:value>", "</export:value>");
    }

    private String exportBlock(String fileContent, String name) {
        if (name == null) {
            return null;
        }
        return StringUtils.substringBetween(fileContent, "<export:" + name + " ", "</export:" + name + ">");
    }
}
