package com.realtorsnepal.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Samima on 4/23/2017.
 */

@Entity
public class SavedPayment implements Serializable {


    private static final long serialVersionUID = 7156541823132097162L;
    @Id
    @GeneratedValue
    private int savedPaymentId;
    @NotEmpty(message = "First Name is required!")
    private String firstName;
    @NotEmpty(message = "Last Name is required!")
    private String lastName;
    @NotEmpty(message = "Card Type is required!")
    private String cardType;
    @NotEmpty(message = "Card Number is required!")
    private String cardNumber;
    @NotEmpty(message = "Expiry Date is required!")
    private String cardExpiry;
    @NotEmpty(message = "Security Code is required!")
    private String cardSecurity;
    @NotEmpty(message = "Email is required!")
    private String email;
    @NotEmpty(message = "Phone is required!")
    private String phone;
    @OneToOne
    private BillingAddress billingAddress;
    @OneToOne
    private Customer customer;

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getSavedPaymentId() {
        return savedPaymentId;
    }

    public void setSavedPaymentId(int savedPaymentId) {
        this.savedPaymentId = savedPaymentId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCardType() {
        return cardType;
    }

    public void setCardType(String cardType) {
        this.cardType = cardType;
    }

    public String getCardNumber() {
        return cardNumber;
    }

    public void setCardNumber(String cardNumber) {
        this.cardNumber = cardNumber;
    }

    public String getCardExpiry() {
        return cardExpiry;
    }

    public void setCardExpiry(String cardExpiry) {
        this.cardExpiry = cardExpiry;
    }

    public String getCardSecurity() {
        return cardSecurity;
    }

    public void setCardSecurity(String cardSecurity) {
        this.cardSecurity = cardSecurity;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public BillingAddress getBillingAddress() {
        return billingAddress;
    }

    public void setBillingAddress(BillingAddress billingAddress) {
        this.billingAddress = billingAddress;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public String toString() {
        return "SavedPayment{" +
                "savedPaymentId=" + savedPaymentId +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", cardType='" + cardType + '\'' +
                ", cardNumber='" + cardNumber + '\'' +
                ", cardExpiry='" + cardExpiry + '\'' +
                ", cardSecurity='" + cardSecurity + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
