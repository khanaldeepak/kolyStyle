package com.realtorsnepal.controller.customer;

import com.realtorsnepal.model.BillingAddress;
import com.realtorsnepal.model.Customer;
import com.realtorsnepal.model.SavedPayment;
import com.realtorsnepal.service.CustomerService;
import com.realtorsnepal.service.SavedPaymentService;
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

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

/**
 * Created by Samima on 4/29/2017.
 */
@Controller
@RequestMapping("/customer")
public class CustomerAddCards {
    @Autowired
    private SavedPaymentService savedPaymentService;
    @Autowired
    private CustomerService customerService;

    @RequestMapping("/wallet/addcard")
    public String addCards(Model model){
        SavedPayment savedPayment = new SavedPayment();
        BillingAddress billingAddress = new BillingAddress();
        savedPayment.setBillingAddress(billingAddress);

        model.addAttribute("savedPayment", new SavedPayment());

        return "addcard";
    }

    @RequestMapping(value = "/wallet/addcard", method = RequestMethod.POST)
    public String addCardsPost(@Valid @ModelAttribute("savedPayment") SavedPayment savedPayment, BindingResult result, HttpServletRequest request,@AuthenticationPrincipal User activeUser){

        if(result.hasErrors()){
            return "addcard";
        }
        Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
        savedPayment.setCustomer(customer);
        savedPaymentService.addCard(savedPayment);

        return "redirect:/customer/wallet";
    }

    @RequestMapping("/wallet/editcard/{id}")
    public String editProduct(@PathVariable("id") int id, Model model){
        SavedPayment savedPayment = savedPaymentService.getCardById(id);
        model.addAttribute("savedPayment", savedPayment);

        return "editcard";
    }

    @RequestMapping(value = "/wallet/editcard", method = RequestMethod.POST)
    public String editProductPost(@Valid @ModelAttribute("savedPayment") SavedPayment savedPayment, BindingResult result, HttpServletRequest request){

        if(result.hasErrors()){
            return "editcard";
        }

        savedPaymentService.editCard(savedPayment);

        return "redirect:/customer/wallet";
    }
}
