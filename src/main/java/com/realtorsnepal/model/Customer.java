package com.realtorsnepal.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * Created by Samima on 1/22/2017.
 */
@Entity
public class Customer implements Serializable {


    private static final long serialVersionUID = -4424062813564385894L;

    @Id
    @GeneratedValue
    private int customerId;

    @NotEmpty(message = "The customer name cannot be null.")
    private String customerName;



    @NotEmpty(message = "The customer email cannot be null.")
    private String customerEmail;
    private String customerPhone;

    private String customerGender;
    private String customerDob;

    @NotEmpty(message = "The customer username cannot be null.")
    private String username;

    @NotEmpty(message = "The customer password cannot be null.")
    private String password;

    private boolean enabled;


    @OneToOne
    @JoinColumn(name = "shippingAddressId")
    private ShippingAddress shippingAddress;

//    @OneToOne
//    @JoinColumn(name = "billingAddressId")
//    private BillingAddress billingAddress;

    @OneToOne
    @JoinColumn(name = "mailingAddressId")
    private MailingAddress mailingAddress;

    @OneToOne
    @JoinColumn(name = "savedPaymentId")
    private SavedPayment savedPayment;


    @OneToOne
    @JoinColumn(name = "cartId")
    @JsonIgnore
    private Cart cart;


    public String getCustomerGender() {
        return customerGender;
    }
    public void setCustomerGender(String customerGender) {
        this.customerGender = customerGender;
    }
    public String getCustomerDob() {
        return customerDob;
    }
    public void setCustomerDob(String customerDob) {
        this.customerDob = customerDob;
    }
    public int getCustomerId() {
        return customerId;
    }

    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerPhone() {
        return customerPhone;
    }

    public void setCustomerPhone(String customerPhone) {
        this.customerPhone = customerPhone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public ShippingAddress getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(ShippingAddress shippingAddress) {
        this.shippingAddress = shippingAddress;
    }
    public MailingAddress getMailingAddress() {
        return mailingAddress;
    }

    public void setMailingAddress(MailingAddress mailingAddress) {
        this.mailingAddress = mailingAddress;
    }
    public Cart getCart() {
        return cart;
    }

    public void setCart(Cart cart) {
        this.cart = cart;
    }

//    public BillingAddress getBillingAddress() {
//        return billingAddress;
//    }
//
//    public void setBillingAddress(BillingAddress billingAddress) {
//        this.billingAddress = billingAddress;
//    }
    public SavedPayment getSavedPayment() {
        return savedPayment;
    }

    public void setSavedPayment(SavedPayment savedPayment) {
        this.savedPayment = savedPayment;
    }

}
