package com.realtorsnepal.dao;

import com.realtorsnepal.model.Customer;

import java.util.List;

/**
 * Created by Samima on 1/25/2017.
 */
public interface CustomerDao {

    void addCustomer(Customer customer);

    Customer getCustomerById(int customerId);

    List<Customer> getAllCustomers();

    Customer getCustomerByUsername(String username);

    void editCustomer(Customer customer);
}
