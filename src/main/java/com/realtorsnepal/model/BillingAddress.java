package com.realtorsnepal.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import java.io.Serializable;

/**
 * Created by Samima on 1/22/2017.
 */
@Entity
public class BillingAddress implements Serializable {


    private static final long serialVersionUID = -7462620163440430716L;

    @Id
    @GeneratedValue
    private int billingAddressId;
    @NotEmpty(message = "Street Name is required!")
    private String streetName;

    private String apartmentNumber;
    @NotEmpty(message = "City is required!")
    private String city;
    @NotEmpty(message = "State is required!")
    private String state;
    private String country;
    @NotEmpty(message = "Zip Code is required!")
    private String zipCode;

//    @OneToOne
//    private Customer customer;
    @OneToOne
    private SavedPayment savedPayment;

    public SavedPayment getSavedPayment() {
        return savedPayment;
    }

    public void setSavedPayment(SavedPayment savedPayment) {
        this.savedPayment = savedPayment;
    }

   public int getBillingAddressId() {
        return billingAddressId;
    }

    public void setBillingAddressId(int billingAddressId) {
        this.billingAddressId = billingAddressId;
    }

    public String getStreetName() {
        return streetName;
    }

    public void setStreetName(String streetName) {
        this.streetName = streetName;
    }

    public String getApartmentNumber() {
        return apartmentNumber;
    }

    public void setApartmentNumber(String apartmentNumber) {
        this.apartmentNumber = apartmentNumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getZipCode() {
        return zipCode;
    }

    public void setZipCode(String zipCode) {
        this.zipCode = zipCode;
    }

//    public Customer getCustomer() {
//        return customer;
//    }
//
//    public void setCustomer(Customer customer) {
//        this.customer = customer;
//    }

    @Override
    public String toString() {
        return "BillingAddress{" +
                "streetName='" + streetName + '\'' +
                ", apartmentNumber='" + apartmentNumber + '\'' +
                ", city='" + city + '\'' +
                ", state='" + state + '\'' +
                ", country='" + country + '\'' +
                ", zipCode='" + zipCode + '\'' +
                '}';
    }
}
