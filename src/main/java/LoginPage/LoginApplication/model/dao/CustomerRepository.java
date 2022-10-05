package LoginPage.LoginApplication.model.dao;

import LoginPage.LoginApplication.model.pojo.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerRepository extends JpaRepository<Customer, Long> {

}
