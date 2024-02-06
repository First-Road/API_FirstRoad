package apiFirstRoad.apiFirstRoad.repositories;

import apiFirstRoad.apiFirstRoad.models.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;
import java.util.UUID;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, UUID> {
    UserDetails findByEmail(String email);

    //Usuario USUARIO
}
