package api.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class CbrService {

  private final ResourceLoader resourceLoader;

  private final ResourcePatternResolver resourcePatternResolver;

  public ResponseEntity<List<String>> getDocumentList(String folder) throws IOException {
    Resource[] resources = resourcePatternResolver.getResources("classpath:" + folder + "/*.pdf");
    List<String> retVal = Arrays.stream(resources)
        .map(Resource::getFilename)
        .toList();
    return ResponseEntity.ok().body(retVal);
  }

  public ResponseEntity<byte[]> getDocument(String folder, String fileName) throws IOException {
    Resource resource = resourceLoader.getResource("classpath:" + folder + "/" + fileName);
    Path path = Paths.get(resource.getURI());
    byte[] content = Files.readAllBytes(path);
    return ResponseEntity.ok()
        .contentType(MediaType.APPLICATION_PDF)
        .body(content);
  }
}
