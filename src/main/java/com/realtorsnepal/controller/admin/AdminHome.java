package com.realtorsnepal.controller.admin;

import com.realtorsnepal.model.Customer;
import com.realtorsnepal.model.Product;
import com.realtorsnepal.model.PromoCodes;
import com.realtorsnepal.service.CustomerService;
import com.realtorsnepal.service.ProductService;
import com.realtorsnepal.service.PromoCodesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Samima on 1/22/2017.
 */
@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    private ProductService productService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private PromoCodesService promoCodesService;

    @RequestMapping
    public String adminPage(){
        return "admin";
    }

    @RequestMapping("/profile")
    public String userProfile(){
        return "userprofile";
    }

    @RequestMapping("/recentorders")
    public String recentOrders(){
        return "orders";
    }

    @RequestMapping("/productInventory")
    public String productInventory(Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productInventory";
    }

    @RequestMapping("/coupons/allcoupons")
    public String recentOrders(Model model){
        List<PromoCodes> promoCodesList = promoCodesService.getAllPromoCodes();
        model.addAttribute("promoCodesList", promoCodesList);

        return "allcoupons";
    }

    @RequestMapping("/customer")
    public String customerManagement(Model model){

        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList", customerList);

        return "customerManagement";
    }
}
