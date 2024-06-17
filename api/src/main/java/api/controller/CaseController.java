package api.controller;

import api.dto.CaseFeatures;
import api.service.CbrService;
import api.service.FeatureExtractionService;
import java.io.IOException;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/cases")
public class CaseController {

  private final FeatureExtractionService featureExtractionService;
  private final CbrService cbrService;

  @GetMapping
  public void getJudgments() throws IOException {
    for (String caseDoc : cbrService.getDocumentList("cases")) {
      System.out.println("--------CASE");
      System.out.println(caseDoc);
      CaseFeatures caseFeatures = featureExtractionService.extractFeatures(caseDoc);

      System.out.println(caseFeatures.toString());
    }

  }
}
