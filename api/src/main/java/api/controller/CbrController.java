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

  @PostMapping("/get/similar")
  public ResponseEntity<?> getSimilarSolution(@RequestBody CaseFeatures caseFeatures) {
    CbrApplication recommender = new CbrApplication();
    try {
      recommender.configure();

      recommender.preCycle();

      CBRQuery query = new CBRQuery();
      CaseDescription caseDescription = new CaseDescription();

      caseDescription.setInjurySeverity(caseFeatures.getInjurySeverity());
      caseDescription.setIsRecidivist(caseFeatures.getIsRecidivist());
      caseDescription.setIsProvoked(caseFeatures.getIsProvoked());
      caseDescription.setIsPermanentDamage(caseFeatures.getIsPermanentDamage());
      caseDescription.setPublicOfficial(caseFeatures.getPublicOfficial());
      caseDescription.setIsUsedWeapon(caseFeatures.getIsUsedWeapon());

      query.setDescription(caseDescription);

      recommender.cycle(query);

      recommender.postCycle();
      return ResponseEntity.ok(recommender.getCycle(query));
    } catch (Exception e) {
      e.printStackTrace();
      return null;
    }
  }
  @GetMapping("/laws-akoma/{lawName}")
  public ResponseEntity<String> getLawAkoma(@PathVariable String lawName) throws IOException {
    return ResponseEntity.ok()
        .body(caseService.readXMLFile("laws_akoma", lawName));
  }

}
