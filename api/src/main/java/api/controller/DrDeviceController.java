package api.controller;

import api.dto.CaseFeatures;
import api.service.DrDeviceService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
@RequiredArgsConstructor
@RequestMapping("/drdev")
public class DrDeviceController {
    private final DrDeviceService drDeviceService;

    @PostMapping("/recommend/byrules")
    public ResponseEntity<?> getByRules(@RequestBody CaseFeatures caseFeatures) throws IOException, InterruptedException {
        return ResponseEntity.ok(drDeviceService.startDrDevice(caseFeatures));
    }
}
