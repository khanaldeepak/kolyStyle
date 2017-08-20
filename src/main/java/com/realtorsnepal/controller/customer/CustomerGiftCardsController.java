package com.realtorsnepal.controller.customer;

import com.realtorsnepal.model.Customer;
import com.realtorsnepal.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Samima on 4/30/2017.
 */
@Controller
@RequestMapping("/customer")
public class CustomerGiftCardsController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/giftcards")
    public String myOrderHistory(Model model, @AuthenticationPrincipal User activeUser){
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());

        model.addAttribute("customer", customer);

        return "giftcards";
    }
}
