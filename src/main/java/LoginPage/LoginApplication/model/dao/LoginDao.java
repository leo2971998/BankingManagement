package LoginPage.LoginApplication.model.dao;

import LoginPage.LoginApplication.model.pojo.Login;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.stream.Collectors;

public class LoginDao implements ILoginDao{
    @Autowired
    LoginRepository loginRepository;

    @Override
    public String AddLogin(Login L) {
        loginRepository.save(L);
        return "Account created";
    }

    @Override
    public String GetPassword(Login L) {
        return loginRepository.findByLoginID(L.getLoginID()).stream().collect(Collectors.toList()).get(0).getPassword();
    }
}
