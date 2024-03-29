package dev.trodrigues.dslearn.infra.repositories;

import dev.trodrigues.dslearn.domain.entities.Course;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CourseRepository extends JpaRepository<Course, Long> {

}
