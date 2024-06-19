package api.service;

import api.dto.CaseFeatures;
import api.service.cbr.CaseDescription;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
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

  public List<String> getDocumentList(String folder) throws IOException {
    Resource[] resources = resourcePatternResolver.getResources("classpath:" + folder + "/*.pdf");
    return Arrays.stream(resources)
        .map(Resource::getFilename)
        .toList();
  }

  public byte[] getDocument(String folder, String fileName) throws IOException {
    Resource resource = resourceLoader.getResource("classpath:" + folder + "/" + fileName);
    Path path = Paths.get(resource.getURI());
    return Files.readAllBytes(path);
  }

  public void addAllJudgmentsFromPdfToCsv() throws IOException {
    List<CaseDescription> caseDescriptions = new ArrayList<>();
    List<String> caseNames = getDocumentList("cases").stream().toList();
    for (int i = 0; i < caseNames.size(); i++) {
      CaseFeatures caseFeatures = featureExtractionService.extractFeatures(caseNames.get(i));
      CaseDescription caseDescription = new CaseDescription(i, caseFeatures);
      caseDescriptions.add(caseDescription);
    }
    File file = new File("judgments.csv");

    try (BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file))) {
      String header =
          "#id;Broj slucaja;Datum;Sud;Sudija;Zapisnicar;Okrivljeni;Krivicno delo;Vrsta presude;"
              + "Kazna;Tezina fizicke povrede;Sluzbeno lice;Korisceno oruzje;Povreda je "
              + "prouzrokovala trajno ostecenje"
              + " povredjenog;Napad je usledio kao posledica vredjanja,provociranja, grubog "
              + "ponasanja ostecenog;Okrivljeni je bio ranije osudjivan\n";


      StringBuilder content = new StringBuilder();
      content.append(header);

      for (CaseDescription caseDescription : caseDescriptions) {
        content.append(caseDescription.toString().replaceAll("\\r?\\n", "")).append("\n");
      }

      bufferedWriter.write(content.toString());
    }
  }

  public CaseDescription addJudgmentToCsv(CaseFeatures newCaseFeatures) {
    int lastId = 0;

    // Read the last line of the CSV file to get the last ID
    try (BufferedReader br =
        new BufferedReader(new InputStreamReader(
            Objects.requireNonNull(getClass().getResourceAsStream("/judgments.csv"))))) {
      String currentLine;
      String lastLine = "";
      while ((currentLine = br.readLine()) != null) {
        if (!currentLine.startsWith("#") && currentLine.length() != 0) {
          lastLine = currentLine;
        }
      }
      if (!lastLine.isEmpty()) {
        String[] values = lastLine.split(";");
        lastId = Integer.parseInt(values[0]);
      }
    } catch (IOException e) {
      throw new RuntimeException("Error reading the last ID from the file", e);
    }

    // Increment the last ID for the new entry
    lastId++;
    CaseDescription newCaseDescription = new CaseDescription(lastId, newCaseFeatures);

    // Append the new case description to the file
    try {
      File file = new File(ResourceUtils.getFile("classpath:judgments.csv/").toURI());
      try (FileWriter myWriter = new FileWriter(file, true)) { // Open FileWriter in append mode
        myWriter.write(newCaseDescription.toString() + "\n");
      } catch (IOException e) {
        System.out.println("An error occurred.");
        e.printStackTrace();
      }
    } catch (Exception e) {
      throw new RuntimeException(e);
    }

    return newCaseDescription;
  }

}
