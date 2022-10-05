package LoginPage.LoginApplication.model.dao;

import LoginPage.LoginApplication.model.pojo.Login;

public interface ILoginDao {
    String AddLogin(Login L);
    String GetPassword(Login L);
}
