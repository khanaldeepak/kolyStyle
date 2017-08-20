package com.realtorsnepal.controller.customer;

import com.realtorsnepal.model.Customer;

import com.realtorsnepal.model.Product;
import com.realtorsnepal.model.SavedPayment;
import com.realtorsnepal.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.nio.file.Paths;

/**
 * Created by Samima on 4/16/2017.
 */
@Controller
@RequestMapping("/customer")
public class CustomerHome {
    @Autowired
    private CustomerService customerService;
    @RequestMapping
    public String customerhome(){
        return "myAccount";
    }

    @RequestMapping("/myprofile")
    public String myProfile(Model model,@AuthenticationPrincipal User activeUser){
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());

        model.addAttribute("customer", customer);

        return "myProfile";
    }
    @RequestMapping("/wallet")
    public String mywallet(){
        return "wallet";
    }
//
//    @RequestMapping("/wallet/add")
//    public String addwalletcard(Model model,@AuthenticationPrincipal User activeUser){
//        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
//        SavedPayment savedPayment =
//       model.addAttribute("savedPayment", savedPayment);
//
//        return "addcard";
//    }

    @RequestMapping("/addressbook")
    public String myAddressBook(Model model,@AuthenticationPrincipal User activeUser){
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());

        model.addAttribute("customer", customer);

        return "shippingAddress";
    }

//    @RequestMapping("/myprofile/editProfile/{id}")
//    public String editProfile(@PathVariable("id") int id, Model model,@AuthenticationPrincipal User activeUser){
//        Customer customernew = customerService.getCustomerById(id);
//        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
//        if(customer.equals(customernew)) {
//            model.addAttribute("customer", customernew);
//        }
//        return "editProfile";
//    }

    @RequestMapping(value = "/myprofile/editProfile", method = RequestMethod.POST)
    public String editProfilePost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, HttpServletRequest request){

        if(result.hasErrors()){
            return "myProfile";
        }

        customerService.editCustomer(customer);

        return "redirect:/customer/myprofile";
    }

//    @RequestMapping(value = "/myprofile/editProfile", method = RequestMethod.POST)
//    public String editProfilePost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, Model model, @AuthenticationPrincipal User activeUser, HttpServletRequest request){
//       // customer = customerService.getCustomerByUsername(activeUser.getUsername());
//        if(result.hasErrors()){
//            return "myProfile";
//        }
//        model.addAttribute("customer", customer);
//        customerService.editCustomer(customer);
//
//        return "redirect:/myAccount";
//    }

    @RequestMapping("/preferences")
    public String myPreferences(Model model,@AuthenticationPrincipal User activeUser){
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());

        model.addAttribute("customer", customer);

        return "myPreferences";
    }

    @RequestMapping("/checkout")
    public String checkOut(Model model,@AuthenticationPrincipal User activeUser){
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());

        model.addAttribute("customer", customer);

        return "collectCustomerInfo";
    }
}

