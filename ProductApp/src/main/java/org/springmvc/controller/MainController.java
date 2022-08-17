package org.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;
import org.springmvc.model.Address;
import org.springmvc.model.Customer;
import org.springmvc.model.LogIn;
import org.springmvc.model.Product;
import org.springmvc.service.AddressService;
import org.springmvc.service.CustomerService;
import org.springmvc.service.LogInService;
import org.springmvc.service.ProductService;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private ProductService productService;

    @Autowired
    private LogInService logInService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private AddressService addressService;

    @RequestMapping(path = {"/index", "/Index", "/INDEX"})
    public String index() {

        return "index";
    }

    @RequestMapping(path = {"/start", "/Start", "/START"})
    public String start() {

        return "start";
    }

    @RequestMapping(path = "/handleLogInForm", method = RequestMethod.POST)
    public String handleLogIn(@ModelAttribute("logIn") LogIn logIn, Model model, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {

            return "start";
        }

        logIn.setDate(new Date());

        String email = logIn.getEmail();
        String password = logIn.getPassword();
        System.out.println(logIn);

        Customer customer = this.customerService.getCustomer(email);
        System.out.println(customer);

        if (customer == null) {

            model.addAttribute("message", "Your must need to Sign Up!!");

            return "signUp";

        } else if(!password.equals(customer.getPassword())) {

            model.addAttribute("message", "Your email or password is incorrect!!");

            return "start";
        }

        this.logInService.saveAndUpdateLogInInformation(logIn);

        model.addAttribute("id", logIn.getId());

        return "redirect:/home/" + logIn.getId();
    }

    @RequestMapping(path = {"/forgetPassword", "/forgetpassword", "/Forgetpassword", "/ForgetPassword" , "/FORGETPASSWORD"})
    public String forgetPassword() {

        return "forgetPassword";
    }

    @RequestMapping(path = "/handleForgetPasswordForm", method = RequestMethod.POST)
    public String handleForgetPassword(@ModelAttribute("logIn") LogIn logIn, Model model, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {

            return "forgetPassword";
        }

        String email = logIn.getEmail();

        Customer customer = this.customerService.getCustomer(email);

        if (customer == null) {

            model.addAttribute("message", "Your account is not found!!");

            return "forgetPassword";

        } else if (customer.getPassword().equals(logIn.getPassword())) {

            model.addAttribute("message", "You must need to enter a new password!!");

            return "forgetPassword";
        }

        customer.setPassword(logIn.getPassword());

        this.customerService.saveAndUpdateCustomer(customer);
        this.logInService.saveAndUpdateLogInInformation(logIn);

        return "start";
    }

    @RequestMapping(path= {"/Sign up", "/Sign Up", "/signUp", "/signup", "/Signup", "/SignUp", "SIGNUP"})
    public String signUp(Model model) {

        model.addAttribute("title", "Sign Up");

        return "signUp";
    }

    @RequestMapping(path = "/handleSignUpForm", method = RequestMethod.POST)
    public String handleSignUp(@ModelAttribute("customer") Customer customer, Model model, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {

            return "signUp";

        } else if (this.customerService.getCustomer(customer.getEmail()) != null) {

            model.addAttribute("message", "You are already signed up!!");

            return "signUp";
        }

        customer.setDate(new Date());
        System.out.println(customer);

        this.customerService.saveAndUpdateCustomer(customer);

        Address address = customer.getAddress();
        address.setCustomer(customer);

        System.out.println(address);
        this.addressService.saveAndUpdateAddress(address);

        return "start";
    }

    @RequestMapping(path = {"/home/{logInId}", "/Home/{logInId}", "/HOME/{logInId}"})
    public String home(@PathVariable("logInId") int id, Model model) {

        if ((id == 0) || (this.logInService.getLogInInformation(id) == null)) {
//           (!this.logInService.getLogInInformation(id).getDate().equals(new Date()))) {

            model.addAttribute("message", "You must need to log in!!");

            return "start";
        }

        model.addAttribute("title", "Home Page");
        model.addAttribute("id", id);

        List<Product> products = this.productService.getAllProducts();

        model.addAttribute("products", products);

        return "home";
    }

    @RequestMapping(path = {"/about/{userLogInId}", "/About/{userLogInId}", "/ABOUT/{userLogInId}"})
    public String about(@PathVariable("userLogInId") int logInId, Model model) {

        model.addAttribute("title", "About");
        model.addAttribute("id", logInId);

        return "about";
    }

    @RequestMapping(path= {"/contact us", "/Contact Us", "/contactUs", "/contactus", "/Contactus", "/ContactUs", "/CONTACTUS"})
    public String contactUs(@PathVariable("logInId") int id, Model model) {

        if (id == 0 || (this.logInService.getLogInInformation(id) == null)) {
//           (!this.logInService.getLogInInformation(id).getDate().equals(new Date()))) {

            model.addAttribute("message", "You must need to log in!!");

            return "start";
        }

        model.addAttribute("title", "Contact Us");

        return "contactUs";
    }

    @RequestMapping(path = {"/addProduct/{logInId}", "/AddProduct/{logInId}", "addproduct/{logInId}", "/Addproduct/{logInId}", "ADDPRODUCT/{logInId}"})
    public String addProduct(@PathVariable("logInId") int id, Model model) {

        if ((id == 0) ||( this.logInService.getLogInInformation(id) == null) || (this.logInService.getLogInInformation(id).getDate().getDate() != new Date().getDate())) {

            model.addAttribute("message", "You must need to log in!!");

            return "start";
        }

        System.out.println(this.logInService.getLogInInformation(id));

        model.addAttribute("logInId", id);

        return "addProduct";
    }

    @RequestMapping(path = "/handleProduct", method = RequestMethod.POST)
    public RedirectView handleAddProduct(@RequestParam("userLogInId") int logInId, @ModelAttribute("product") Product product,
                                         Model model, HttpServletRequest request, BindingResult bindingResult) {

        Customer customer = this.customerService.getCustomer(product.getOwnerEmail());
        System.out.println(customer);

        RedirectView redirectView = new RedirectView();

        if (bindingResult.hasErrors()) {

            redirectView.setUrl(request.getContextPath() + "/addProduct/" + logInId);

            return redirectView;

        } else if (customer == null) {

            model.addAttribute("message", "You are not sign up!! Please sign up with same email.");

            redirectView.setUrl("signUp");

            return redirectView;

        } else if ((logInId == 0) || (this.logInService.getLogInInformation(logInId) == null) || (this.logInService.getLogInInformation(logInId).getDate().getDate() != new Date().getDate())) {

            model.addAttribute("message", "You must need to log in!!");

            redirectView.setUrl("start");

            return redirectView;

        } else if (!customer.getEmail().equals(this.logInService.getLogInInformation(logInId).getEmail())) {

            model.addAttribute("message", "Enter Log In Email!!");

            redirectView.setUrl(request.getContextPath() + "/addProduct/" + logInId);
        }

        System.out.println(product);
        this.productService.addAndUpdateProduct(product);

        redirectView.setUrl(request.getContextPath() + "/home/" + logInId);

        return redirectView;
    }

    @RequestMapping(path= {"/productDescription/{productId}", "/ProductDescription/{productId}", "/productdescription/{productId}", "/Productdescription/{productId}"})
    public void productDescription(@PathVariable("productId") int id, Model model) {

        System.out.println(id);

        Product product = this.productService.getProduct(id);

        String description = product.getDescription();
        System.out.println(description);

        model.addAttribute("description", description);
    }

    @RequestMapping(path = {"/updateChecking/{userLogInId}/{productId}", "/UpdateChecking/{userLogInId}/{productId}", "/updatechecking/{userLogInId}/{productId}", "/Updatechecking/{userLogInId}/{productId}"})
    public String updateProductChecking(@PathVariable("userLogInId") int logInId, @PathVariable("productId") int id, Model model) {

        LogIn logIn = this.logInService.getLogInInformation(logInId);

        if (this.customerService.getCustomer(this.productService.getProduct(id).getOwnerEmail()) == null) {

            return "signUp";

        } else if ((logInId == 0 )|| (logIn == null) || (logIn.getDate().getDate() != new Date().getDate())) {

            model.addAttribute("message", "You must need to log in!!");

            return "start";

        } else if ((this.productService.getProduct(id) == null) || (!logIn.getEmail().equals(this.productService.getProduct(id).getOwnerEmail()))) {

            model.addAttribute("message", "You are not owner of this product!!");

            return "redirect:/home/" + logInId;
        }

        model.addAttribute("userLogInId", logInId);
        model.addAttribute("productId", id);

        return "updateChecking";
    }

    @RequestMapping(path = "/handleUpdateChecking", method = RequestMethod.POST)
    public RedirectView handleUpdateProductChecking(@ModelAttribute("userLogInId") int logInId, @ModelAttribute("id") int id,
                                                    @ModelAttribute("logIn") LogIn logIn, Model model, HttpServletRequest request) {

        System.out.println("================================");
        Customer customer = this.customerService.getCustomer(logIn.getEmail());
        System.out.println(customer);

        LogIn log = this.logInService.getLogInInformation(logInId);
        System.out.println(log);

        RedirectView redirectView = new RedirectView();

        if ((customer == null) || (!customer.getPassword().equals(logIn.getPassword()))) {

            model.addAttribute("message", "Something went wrong!! Please enter your correct email and password.");

            redirectView.setUrl(request.getContextPath() + "/updateChecking/" + logInId + "/" + id);

            return redirectView;

        } else if ((logInId == 0 )|| (log == null) || (log.getDate().getDate() != new Date().getDate())) {

            model.addAttribute("message", "You must need to log in!!");

            redirectView.setUrl(request.getContextPath() + "/");

            return redirectView;

        }  else if (!this.productService.getProduct(id).getOwnerEmail().equals(logIn.getEmail())) {

            model.addAttribute("message", "Something went wrong!! You are not owner of this product.");

            redirectView.setUrl(request.getContextPath() + "/updateChecking/" + logInId + "/" + id);

            return redirectView;
        }

        redirectView.setUrl(request.getContextPath() + "/update/" + logInId + "/" + id);

        return redirectView;
    }

    @RequestMapping(path= {"/update/{userLogInId}/{productId}", "/Update/{userLogInId}/{productId}", "/UPDATE/{userLogInId}/{productId}"})
    public String updateProduct(@PathVariable("userLogInId") int logInId, @PathVariable("productId") int id, Model model) {

        LogIn logIn = this.logInService.getLogInInformation(logInId);

        if ((logInId == 0 )|| (logIn == null) || (logIn.getDate().getDate() != new Date().getDate())) {

            model.addAttribute("message", "You must need to log in!!");

            return "start";

        } else if ((this.productService.getProduct(id) == null) || (!logIn.getEmail().equals(this.productService.getProduct(id).getOwnerEmail()))) {

            model.addAttribute("message", "Something went wrong!! You are not owner of this product.");

            return "redirect:/home/" + logInId;
        }

        Product product = this.productService.getProduct(id);

        model.addAttribute("product", product);
        model.addAttribute("userLogInId", logInId);

        return "update";
    }

    @RequestMapping(path= "/handleUpdateProduct", method = RequestMethod.POST)
    public RedirectView handleUpdateProduct(@ModelAttribute("logInId") int userLogInId, @ModelAttribute("product") Product product,
                                            Model model, HttpServletRequest request) {

        System.out.println(product);

        Customer customer = this.customerService.getCustomer(product.getOwnerEmail());
        System.out.println(customer);

        RedirectView redirectView = new RedirectView();

        if (customer == null) {

            model.addAttribute("message", "Your Email cannot be changeable!!");

            redirectView.setUrl(request.getContextPath() + "/update/" + userLogInId + "/" + product.getId());

            return redirectView;
        }

        this.productService.addAndUpdateProduct(product);

        redirectView.setUrl(request.getContextPath() + "/home/" + userLogInId);

        return redirectView;
    }

    @RequestMapping(path = {"/deleteChecking/{userLogInId}/{productId}", "/Deletechecking/{userLogInId}/{productId}", "/DeleteChecking/{userLogInId}/{productId}", "/deletechecking/{productId}"})
    public String deleteProductChecking(@PathVariable("userLogInId") int logInId, @PathVariable("productId") int id, Model model) {

        LogIn logIn = this.logInService.getLogInInformation(logInId);

        if ((logInId == 0 )|| (logIn == null) || (logIn.getDate().getDate() != new Date().getDate())) {

            model.addAttribute("message", "You must need to log in!!");

            return "start";

        } else if ((this.productService.getProduct(id) == null) || (!logIn.getEmail().equals(this.productService.getProduct(id).getOwnerEmail()))) {

            model.addAttribute("message", "You are not owner of this product!!");

            return "redirect:/home/" + logInId;
        }

        model.addAttribute("productId", id);
        model.addAttribute("userLogInId", logInId);

        return "deleteChecking";
    }

    @RequestMapping(path= "/handleDelete", method = RequestMethod.POST)
    public RedirectView handleDeleteProduct(@ModelAttribute("logInId") int userLogInId, @ModelAttribute("id") int id, @ModelAttribute("logIn") LogIn logIn,
                                            Model model, HttpServletRequest request) {

        System.out.println("****************************");
        Customer customer = this.customerService.getCustomer(logIn.getEmail());
        System.out.println(customer);

        RedirectView redirectView = new RedirectView();

        if ((customer == null) || (!customer.getPassword().equals(logIn.getPassword()))) {

            model.addAttribute("message", "Something went wrong!! Please enter your correct email and password.");

            redirectView.setUrl(request.getContextPath() + "/deleteChecking/" + userLogInId + "/" + id);

            return redirectView;

        } else if (!this.productService.getProduct(id).getOwnerEmail().equals(logIn.getEmail())) {

            model.addAttribute("message", "Something went wrong!! Please enter your correct email that is used during putting the product on sale.");

            redirectView.setUrl(request.getContextPath() + "/deleteChecking/" + id);

            return redirectView;
        }

        this.productService.deleteProduct(id);

        redirectView.setUrl(request.getContextPath() + "/home/" + userLogInId);

        return redirectView;
    }

}
