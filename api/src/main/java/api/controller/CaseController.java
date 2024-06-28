package api.controller;

import api.dto.CaseFeatures;
import api.service.CaseService;
import api.service.PdfService;
import api.service.cbr.CaseDescription;
import java.io.IOException;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/cases")
public class CaseController {

  private final CaseService caseService;

  @PostMapping
  public ResponseEntity<?> addNewCase(@RequestBody CaseDescription description) throws Exception {
    caseService.addNewCase(description);
    return ResponseEntity.ok().build();
  }

  @GetMapping("/reset/csv")
  public void addAllJudgmentsFromPdfToCsv() throws IOException {
    caseService.addAllJudgmentsFromPdfToCsv();
  }
}
