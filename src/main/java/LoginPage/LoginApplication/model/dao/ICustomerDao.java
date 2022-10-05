package LoginPage.LoginApplication.model.dao;

import LoginPage.LoginApplication.model.pojo.Customer;

import java.util.List;

public interface ICustomerDao {
    String AddCustomer(Customer C);

    String UpdateCustomer(Customer newC, Long customerID);

    Customer getCustomerbyId(Long customerID);

    List<Customer> loadCustomers();
}
