package dev.trodrigues.dslearn.infra.repositories;

import dev.trodrigues.dslearn.domain.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}
