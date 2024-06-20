package api.controller;

import api.dto.Case;
import api.dto.CaseFeatures;
import api.enumeration.InjurySeverity;
import api.enumeration.JudgmentType;
import api.enumeration.PublicOfficial;
import api.service.CaseService;
import java.io.IOException;
import java.util.List;

import api.service.cbr.CaseDescription;
import api.service.cbr.CbrApplication;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("/cbr")
public class CbrController {

  private final CaseService caseService;

  @GetMapping("/cases")
  public ResponseEntity<List<String>> getCases() throws IOException {
    return ResponseEntity.ok().body(caseService.getDocumentList("cases"));
  }

  @GetMapping("/cases/{caseName:.+}")
  public ResponseEntity<byte[]> getCase(@PathVariable String caseName) throws IOException {
    return ResponseEntity.ok()
        .contentType(MediaType.APPLICATION_PDF)
        .body(caseService.getDocument("cases", caseName));
  }

//  @GetMapping("/cases-akoma/{caseName:.+}")
//  public ResponseEntity<byte[]> getCaseAkoma(@PathVariable String caseName) throws IOException {
//    return ResponseEntity.ok()
//        .contentType(MediaType.APPLICATION_XML)
//        .body(caseService.getDocument("cases_akoma", caseName + ".xml"));
//  }

  @GetMapping("/cases-akoma/{caseName}")
  public ResponseEntity<Case> getCaseAkoma(@PathVariable String caseName) throws IOException {
    return ResponseEntity.ok()
        .body(caseService.getCase(caseName));
  }

  @GetMapping("/laws")
  public ResponseEntity<List<String>> getLaws() throws IOException {
    return ResponseEntity.ok().body(caseService.getDocumentList("laws"));
  }

  @GetMapping("/laws/{lawName:.+}")
  public ResponseEntity<byte[]> getLaw(@PathVariable String lawName) throws IOException {
    return ResponseEntity.ok()
        .contentType(MediaType.APPLICATION_PDF)
        .body(caseService.getDocument("laws", lawName));
  }

  @GetMapping("/recommend")
  public ResponseEntity<?> getRecommendedSolution() {
    CbrApplication recommender = new CbrApplication();
    try {
      recommender.configure();

      recommender.preCycle();

      CBRQuery query = new CBRQuery();
      CaseDescription caseDescription = new CaseDescription();

      caseDescription.setInjurySeverity(InjurySeverity.SERIOUS);
      caseDescription.setCriminalOffense("laka tjelesnapovreda iz čl.152 st. 2 u vezi st. 1 KZ");
      caseDescription.setSentence("4 meseci zatvora");
      caseDescription.setIsRecidivist(false);
      caseDescription.setIsProvoked(false);
      caseDescription.setDefendant("V.V");
      caseDescription.setJudge("M.L.");
      caseDescription.setIsPermanentDamage(true);
      caseDescription.setPublicOfficial(PublicOfficial.NONE);
      caseDescription.setIsUsedWeapon(false);
      caseDescription.setCourtReporter("M.M.");
      caseDescription.setCourt("Osnovni sud u Podgorici");
      caseDescription.setCaseNumber("K13-2022");
      caseDescription.setDate("22-02-2022");
      caseDescription.setJudgmentType(JudgmentType.CONVICTION);

      query.setDescription(caseDescription);

      recommender.cycle(query);

      recommender.postCycle();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return ResponseEntity.ok(recommender);
  }
  @GetMapping("/laws-akoma/{lawName}")
  public ResponseEntity<String> getLawAkoma(@PathVariable String lawName) throws IOException {
    return ResponseEntity.ok()
        .body(caseService.readXMLFile("laws_akoma", lawName));
  }

}
