package com.realtorsnepal.service;

import com.realtorsnepal.model.CustomerOrder;

/**
 * Created by Samima on 1/27/2017.
 */
public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
