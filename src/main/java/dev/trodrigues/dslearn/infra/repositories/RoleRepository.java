package dev.trodrigues.dslearn.infra.repositories;

import dev.trodrigues.dslearn.domain.entities.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

}
