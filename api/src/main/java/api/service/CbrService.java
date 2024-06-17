package api.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.List;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternResolver;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class CbrService {

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
}
