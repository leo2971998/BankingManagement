package LoginPage.LoginApplication.model.dao;

import LoginPage.LoginApplication.model.pojo.Login;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface LoginRepository extends JpaRepository<Login, Long> {
    Optional<Login> findByLoginID(String UserName);
}
