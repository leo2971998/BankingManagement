package LoginPage.LoginApplication;

import LoginPage.LoginApplication.model.dao.CustomerDao;
import LoginPage.LoginApplication.model.dao.LoginDao;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class BankingManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(BankingManagementApplication.class, args);
	}
	@Bean
	public LoginDao loginDao() {
		return new LoginDao();
	}
	@Bean
	public CustomerDao customerDao() {
		return new CustomerDao();
	}
}
