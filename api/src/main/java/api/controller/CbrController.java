package api.controller;

import api.service.CaseService;
import java.io.IOException;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
}
