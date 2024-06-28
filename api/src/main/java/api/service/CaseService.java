package api.service;

import api.dto.Case;
import api.dto.CaseFeatures;
import api.service.cbr.CaseDescription;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

@Service
@RequiredArgsConstructor
@Slf4j
public class CaseService {

  private final FeatureExtractionService featureExtractionService;
  private final ResourceLoader resourceLoader;
  private final ResourcePatternResolver resourcePatternResolver;
  private final PdfService pdfService;

  public List<String> getDocumentList(String folder) throws IOException {
    Resource[] resources = resourcePatternResolver.getResources("classpath:" + folder + "/*.pdf");
    return Arrays.stream(resources)
        .map(Resource::getFilename).map(FilenameUtils::removeExtension)
        .toList();
  }

  public byte[] getDocument(String folder, String fileName) throws IOException {
    Resource resource = resourceLoader.getResource("classpath:" + folder + "/" + fileName);
    Path path = Paths.get(resource.getURI());
    return Files.readAllBytes(path);
  }

  public Case getCase(String caseName) throws IOException {
    String caseContent = readXMLFile("cases_akoma", caseName);
//    FileUtils.readFileToString(ResourceUtils.getFile("classpath:cases_akoma/" + caseName +
//        ".xml"), String.valueOf(StandardCharsets.UTF_8));
    CaseFeatures caseFeatures = featureExtractionService.extractFeatures(caseName + ".pdf");
    return Case.builder().xmlContent(caseContent).caseFeatures(caseFeatures).build();
  }

  public String readXMLFile(String folder, String fileName) throws IOException {
    return
        FileUtils.readFileToString(ResourceUtils.getFile("classpath:" + folder + "/" + fileName +
            ".xml"), String.valueOf(StandardCharsets.UTF_8));
  }

  public void addAllJudgmentsFromPdfToCsv() throws IOException {
    List<CaseDescription> caseDescriptions = new ArrayList<>();
    List<String> caseNames = getDocumentList("cases").stream().toList();
    for (int i = 0; i < caseNames.size(); i++) {
      CaseFeatures caseFeatures = featureExtractionService.extractFeatures(
          caseNames.get(i) + ".pdf");
      CaseDescription caseDescription = new CaseDescription(i, caseFeatures);
      caseDescriptions.add(caseDescription);
    }
    File file = new File("judgments.csv");

    try (BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file))) {
      String header =
          "Broj slucaja;Datum;Sud;Sudija;Zapisnicar;Okrivljeni;Krivicno delo;Vrsta presude;"
              + "Kazna;Tezina fizicke povrede;Sluzbeno lice;Korisceno oruzje;Povreda je "
              + "prouzrokovala trajno ostecenje"
              + " povredjenog;Napad je usledio kao posledica vredjanja,provociranja, grubog "
              + "ponasanja ostecenog;Okrivljeni je bio ranije osudjivan; Okrivljeni je narušio "
              + "javni red i mir;\n";

      StringBuilder content = new StringBuilder();
      content.append(header);

      for (CaseDescription caseDescription : caseDescriptions) {
        content.append(caseDescription.toString().replaceAll("\\r?\\n", "")).append("\n");
      }

      bufferedWriter.write(content.toString());
    }
  }

  public void addNewCase(CaseDescription caseDescription) throws Exception {
    addJudgmentToCsv(caseDescription);
    pdfService.createPdf(caseDescription);
  }

  public void addJudgmentToCsv(CaseDescription caseDescription) {

    // Append the new case description to the file
    try {
      File file = new File("judgments.csv");
      try (FileWriter myWriter = new FileWriter(file, true)) { // Open FileWriter in append mode
        myWriter.write(caseDescription.toString() + "\n");
      } catch (IOException e) {
        e.printStackTrace();
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
  }

}
