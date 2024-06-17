//package api.service;
//
//import api.dto.CaseFeatures;
//import java.io.File;
//import java.io.FileWriter;
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//import lombok.RequiredArgsConstructor;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.stereotype.Service;
//import org.springframework.util.ResourceUtils;
//
//@Service
//@RequiredArgsConstructor
//@Slf4j
//public class CaseService {
//
//  private final CbrService cbrService;
//  private final FeatureExtractionService featureExtractionService;
//
//  public void addAllJudgmentsFromPdfToCsv() throws IOException {
//    List<CaseFeatures> casesFeatures = new ArrayList<>();
//    List<String> caseNames = new ArrayList<>();
//    for (String caseDoc : cbrService.getDocumentList("cases")) {
//      CaseFeatures caseFeatures = featureExtractionService.extractFeatures(caseDoc);
//      casesFeatures.add(caseFeatures);
//    }
//    File file = new File(ResourceUtils.getFile("classpath:presude.csv/").toURI());
//
//    FileWriter fileWriter = new FileWriter(file);
//    fileWriter.write(
//        "#id;Broj slucaja;Datum;Sud;Sudija;Zapisnicar;Okrivljeni;Krivicno delo;Tezina fizicke "
//            + "povrede;Sluzbeno lice;Korisceno oruzje;Povreda je prouzrokovala trajno ostecenje"
//            + " povredjenog;Napad je usledio kao posledica vredjanja,provociranja, grubog "
//            + "ponasanja ostecenog;Okrivljeni je bio ranije osudjivan"
//            + "Vrsta presude;Kazna\n");
//    casesFeatures.forEach(caseDescription -> {
//      try {
//        fileWriter.write(caseDescription.toString() + "\n");
//      } catch (IOException e) {
//        throw new RuntimeException(e);
//      }
//    });
//    fileWriter.close();
//
//  }
//
//  public CaseFeatures addJudgmentToCsv(CaseFeatures caseFeatures) {
//    List<CaseFeatures> cases = new ArrayList<>();
//    try {
//      BufferedReader br = new BufferedReader(new InputStreamReader(
//          Objects.requireNonNull(JudgmentService.class.getResourceAsStream("/testPresude.csv"))));
//
//      String line = "";
//      while ((line = br.readLine()) != null) {
//        if (line.startsWith("#") || (line.length() == 0)) {
//          continue;
//        }
//        String[] values = line.split(";");
//
//        CaseDescription caseDescription = new CaseDescription();
//        caseDescription.setId(Integer.parseInt(values[0]));
//        caseDescription.setSud(values[1]);
//        caseDescription.setPoslovniBroj(values[2]);
//        caseDescription.setDatum(values[3]);
//        caseDescription.setSudija(values[4]);
//        caseDescription.setTuzilac(values[5]);
//        caseDescription.setOkrivljeni(values[6]);
//        caseDescription.setKrivicnoDjelo(values[7]);
//        caseDescription.setPrekrseniPropisi(Arrays.asList(values[8].split(",")));
//        caseDescription.setPrimijenjeniPropisi(Arrays.asList(values[9].split(",")));
//        caseDescription.setVrstaPresude(values[10]);
//
//        caseDescription.setUgrozenSaobracaj(values[11]);
//        caseDescription.setRadnjeBezPrethodnogUvjerenja(Arrays.asList(values[12].split(",")));
//        caseDescription.setRadnjeBezPrilagodjavanjaBrzine(Arrays.asList(values[13].split(",")));
//        caseDescription.setNedozvoljenoPolukruznoOkretanje(values[14].equals("da"));
//        caseDescription.setPrekrsenaPravilaNaRaskrsnici(values[15].equals("da"));
//        caseDescription.setPrekrsenoKretanjeDesnomStranom(values[16].equals("da"));
//        caseDescription.setOsudjivan(values[17].equals("da"));
//        caseDescription.setBrojOsudjivanja(Integer.parseInt(values[18]));
//        caseDescription.setImovnoStanje(values[19]);
//
//        caseDescription.setKazna(values[20]);
//
//        cases.add(caseDescription);
//      }
//      br.close();
//      if (caseDescriptionToAdd != null) {
//        cases.add(
//            new CaseDescription(cases.get(cases.size() - 1).getId() + 1, caseDescriptionToAdd));
//      }
//
//      File file = new File(ResourceUtils.getFile("classpath:testPresude.csv/").toURI());
//      try {
//        FileWriter myWriter = new FileWriter(file);
//        myWriter.write(
//            "#id;Sud;Poslovni broj;Datum;Sudija;Tuzilac;Okrivljeni;Krivicno djelo;Prekrseni propisi;Primijenjeni propisi;Vrsta presude;Ugrozen saobracaj;Radnje bez prethodnog uvjerenja;Radnje bez prilagodjavanja brzine;Nedozvoljeno polukruzno okretanje;Prekrsena pravila na raskrsnici;;Prekrseno kretanje desnom stranom;Osudjivan;#Broj osudjivanja;Imovno stanje;Kazna\n");
//        cases.forEach(caseDescription -> {
//          try {
//            myWriter.write(caseDescription.toString() + "\n");
//          } catch (IOException e) {
//            throw new RuntimeException(e);
//          }
//        });
//        myWriter.close();
//      } catch (IOException e) {
//        System.out.println("An error occurred.");
//        e.printStackTrace();
//      }
//    } catch (Exception e) {
//      throw new RuntimeException(e);
//    }
//    if (caseDescriptionToAdd != null) {
//      return new CaseDescription(cases.get(cases.size() - 1).getId() + 1, caseDescriptionToAdd);
//    } else {
//      return null;
//    }
//  }
//}
//}
