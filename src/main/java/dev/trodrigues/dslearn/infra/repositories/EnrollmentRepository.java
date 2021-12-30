package dev.trodrigues.dslearn.infra.repositories;

import dev.trodrigues.dslearn.domain.entities.Enrollment;
import dev.trodrigues.dslearn.domain.entities.pk.EnrollmentId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EnrollmentRepository extends JpaRepository<Enrollment, EnrollmentId> {

}
