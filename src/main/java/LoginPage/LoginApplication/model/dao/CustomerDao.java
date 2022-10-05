package LoginPage.LoginApplication.model.dao;

import LoginPage.LoginApplication.model.pojo.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class CustomerDao implements ICustomerDao {
    @Autowired
    CustomerRepository customerRepository;

    @Override
    public String AddCustomer(Customer C) {
        customerRepository.save(C);
        return "Customer created";
    }
    @Override
    public String UpdateCustomer(Customer newC, Long customerID) {
        Customer oldC = customerRepository.findById(customerID).stream().collect(Collectors.toList()).get(0);
        if (oldC == null) {
            return "No Customer";
        }
        else {
            oldC.setFirstName(newC.getFirstName());
            oldC.setLastName(newC.getLastName());
            oldC.setDob(newC.getDob());
            oldC.setPhoneNumber(newC.getPhoneNumber());
            oldC.setEmail(newC.getEmail());
            customerRepository.save(oldC);
            return "Customer Updated";
        }
    }
    @Override
    public Customer getCustomerbyId(Long customerID) {
        return customerRepository.findById(customerID).stream().collect(Collectors.toList()).get(0);
    }

    @Override
    public List<Customer> loadCustomers() {
        return customerRepository.findAll();
    }
}
