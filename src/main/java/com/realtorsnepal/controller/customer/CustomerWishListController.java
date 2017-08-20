package com.realtorsnepal.controller.customer;

import com.realtorsnepal.model.Customer;
import com.realtorsnepal.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Samima on 4/30/2017.
 */
@Controller
@RequestMapping("/customer")
public class CustomerWishListController {

    @Autowired
    private CustomerService customerService;

    @RequestMapping("/wishlist/mylist")
    public String myWishList(Model model, @AuthenticationPrincipal User activeUser){
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());

        model.addAttribute("customer", customer);

        return "wishlist";
    }

//
//    @RequestMapping
//    public String getWishList(@AuthenticationPrincipal User activeUser){
//        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
//        int wishListId = customer.getWishList().getWishListId();
//
//        return "redirect:/customer/wishlist/mylist/"+wishListId;
//    }
//
//    @RequestMapping("/{wishListId}")
//    public String getWishListRedirect(@PathVariable(value = "wishListId") int wishListId, Model model){
//        model.addAttribute("wishListId", wishListId);
//
//        return "wishlist";
//    }
}
