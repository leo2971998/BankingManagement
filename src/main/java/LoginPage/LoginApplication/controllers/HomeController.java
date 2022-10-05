package LoginPage.LoginApplication.controllers;

import LoginPage.LoginApplication.model.dao.CustomerDao;
import LoginPage.LoginApplication.model.dao.LoginDao;
import LoginPage.LoginApplication.model.pojo.Customer;
import LoginPage.LoginApplication.model.pojo.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.persistence.PreUpdate;
import javax.validation.Valid;
import java.text.Bidi;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    LoginDao loginDao;

    @Autowired
    CustomerDao customerDao;

    static List<Customer> customerList = null;
    @RequestMapping("/")
    public String Home() {
        return "Home";
    }
    @RequestMapping("/login")
    public String Login(Model M) {
        M.addAttribute("Login", new Login());
        return "Login";
    }
    @RequestMapping("/validatelogin")
    public String ValidateLogin(@Valid @ModelAttribute("Login") Login L, BindingResult BS, Model M) {
            if (L.getPassword().equals(loginDao.GetPassword(L))) {
                return "Admin";
            }
            else {
                M.addAttribute("msg", "Wrong credentials");
                return "Login";
            }
    }
    @RequestMapping("/register")
    public String Register(Model M) {
        M.addAttribute("Login", new Login());
        return "Register";
    }
    @RequestMapping("/validatesignup")
    public String ValidateSignUp(@Valid @ModelAttribute("Login") Login L, BindingResult BS, Model M) {
        if (!BS.hasErrors()) {
            String msg = loginDao.AddLogin(L);
            M.addAttribute("msg", msg);
        }
        return "Register";
    }
    @RequestMapping("/addCustomer")
    public String AddCustomer(Model M) {
        M.addAttribute("Customer", new Customer());
        return "AddCustomer";
    }
    @RequestMapping("/addCustomer/create")
    public String ValidateCustomer(@Valid @ModelAttribute("Customer") Customer C, BindingResult BS, Model M) {
        if (!BS.hasErrors()) {
            String msg = customerDao.AddCustomer(C);
            M.addAttribute("msg", msg);
        }
        return "AddCustomer";
    }
    @RequestMapping("/getCustomerById")
    public String getCustomerById(@RequestParam("customerID") Long customerID, Model M) {
        Customer C = new Customer();
        try {
            C = customerDao.getCustomerbyId(customerID);
            M.addAttribute("Customer", C);
            M.addAttribute("cList", customerList);
            return "ModifyCustomer";
        } catch (Exception E) {
            M.addAttribute("Customer", C);
            M.addAttribute("msg", "No Customer");
            return "ModifyCustomer";
        }
    }
    @RequestMapping("/modifycustomer")
    public String ModifyCustomer(Model M) {
        customerList = customerDao.loadCustomers();
        M.addAttribute("cList", customerList);
        M.addAttribute("Customer", new Customer());
        return "ModifyCustomer";
    }
    @RequestMapping("/modifycustomer/update")
    public String UpdateCustomer(@Valid @ModelAttribute("Customer") Customer C, BindingResult BS, Model M) {
        M.addAttribute("cList", customerList);
        if (!BS.hasErrors()) {
            String msg = customerDao.UpdateCustomer(C, C.getCustomerID());
            M.addAttribute("msg", msg);
        }
        return "ModifyCustomer";
    }
    @RequestMapping("/viewcustomer")
    public String ViewCustomer(Model M) {
        customerList = customerDao.loadCustomers();
        M.addAttribute("cList", customerList);
        return "ViewCustomer";
    }
}
