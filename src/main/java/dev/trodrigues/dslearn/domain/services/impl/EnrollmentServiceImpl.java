package dev.trodrigues.dslearn.domain.services.impl;

import dev.trodrigues.dslearn.domain.entities.pk.EnrollmentId;
import dev.trodrigues.dslearn.domain.services.EnrollmentService;
import dev.trodrigues.dslearn.infra.repositories.EnrollmentRepository;
import dev.trodrigues.dslearn.infra.repositories.OfferRepository;
import dev.trodrigues.dslearn.infra.repositories.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class EnrollmentServiceImpl implements EnrollmentService {

    private final UserRepository userRepository;
    private final OfferRepository offerRepository;
    private final EnrollmentRepository enrollmentRepository;

    public EnrollmentServiceImpl(UserRepository userRepository, OfferRepository offerRepository,
                                 EnrollmentRepository enrollmentRepository) {
        this.userRepository = userRepository;
        this.offerRepository = offerRepository;
        this.enrollmentRepository = enrollmentRepository;
    }

    @Override
    public void updateStatus(Long userId, Long offerId) {
        var user = userRepository.getById(userId);
        var offer = offerRepository.getById(offerId);

        var enrollmentId = new EnrollmentId(user, offer);
        var enrollment = enrollmentRepository.findById(enrollmentId).orElseThrow();
        enrollment.setAvailable(false);
        enrollmentRepository.save(enrollment);
    }
}
