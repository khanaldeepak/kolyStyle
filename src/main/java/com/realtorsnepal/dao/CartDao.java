package com.realtorsnepal.dao;

import com.realtorsnepal.model.Cart;

import java.io.IOException;

/**
 * Created by Samima on 1/22/2017.
 */
public interface CartDao {

    Cart getCartById(int cartId);

    Cart validate(int cartId) throws IOException;

    void update(Cart cart);
}
