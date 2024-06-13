package api.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@RestController
@RequestMapping("/files")
public class CbrController {

  private final Path fileStorageLocation = Paths.get("uploads").toAbsolutePath().normalize();

  @GetMapping("/download/{fileName:.+}")
  public ResponseEntity<byte[]> downloadFile(@PathVariable String fileName) {
    try {
      Path filePath = this.fileStorageLocation.resolve(fileName).normalize();
      byte[] data = Files.readAllBytes(filePath);
      HttpHeaders headers = new HttpHeaders();
      headers.setContentType(MediaType.APPLICATION_PDF);
      headers.setContentDispositionFormData("inline", fileName);
      return new ResponseEntity<>(data, headers, HttpStatus.OK);
    } catch (IOException ex) {
      return ResponseEntity.status(HttpStatus.NOT_FOUND).body(null);
    }
  }
}
