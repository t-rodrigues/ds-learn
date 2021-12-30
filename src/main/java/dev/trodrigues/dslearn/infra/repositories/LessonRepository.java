package dev.trodrigues.dslearn.infra.repositories;

import dev.trodrigues.dslearn.domain.entities.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LessonRepository extends JpaRepository<Lesson, Long> {

}
