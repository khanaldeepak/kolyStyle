package com.realtorsnepal.service;

import com.realtorsnepal.model.Customer;
import com.realtorsnepal.model.SavedPayment;

import java.util.List;
/**
 * Created by Samima on 4/29/2017.
 */
public interface SavedPaymentService {
    List<SavedPayment> getCardsList();
    List<SavedPayment> getAllCustomerSavedPayment(Customer customer);
    SavedPayment getCardById(int id);

    void addCard(SavedPayment savedPayment);

    void editCard(SavedPayment savedPayment);

    void deleteCard(SavedPayment savedPayment);
}
