package com.realtorsnepal.controller.admin;

import com.realtorsnepal.model.Customer;
import com.realtorsnepal.model.Product;
import com.realtorsnepal.service.CustomerService;
import com.realtorsnepal.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Samima on 5/8/2017.
 */
@Controller
@RequestMapping("/admin")
public class AdminProfile {

    @Autowired
    private ProductService productService;
    @Autowired
    private CustomerService customerService;

    @RequestMapping("/profile/{username}")
    public String userProfile(@PathVariable("username") String username, Model model){
            Customer customer = customerService.getCustomerByUsername(username);
            if(customer != null) {
                int cartId = customer.getCart().getCartId();
                model.addAttribute("customer", customer);
                model.addAttribute("cartId", cartId);
                return "userprofile";
            }
        return "redirect:/admin/customer";
    }

}