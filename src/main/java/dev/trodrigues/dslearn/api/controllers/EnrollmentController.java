package dev.trodrigues.dslearn.api.controllers;

import dev.trodrigues.dslearn.domain.services.EnrollmentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/enrollments")
public class EnrollmentController {

    private final EnrollmentService enrollmentService;

    public EnrollmentController(EnrollmentService enrollmentService) {
        this.enrollmentService = enrollmentService;
    }

    @PostMapping("/update/{userId}/{offerId}")
    public ResponseEntity<Void> updateEnrollment(@PathVariable Long userId, @PathVariable Long offerId) {
        enrollmentService.updateStatus(userId, offerId);
        return ResponseEntity.noContent().build();
    }

}
