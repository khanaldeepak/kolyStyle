package com.realtorsnepal.service;

import com.realtorsnepal.model.Customer;

import java.util.List;

/**
 * Created by Samima on 1/25/2017.
 */
public interface CustomerService {

    void addCustomer(Customer customer);
    void editCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);
}
