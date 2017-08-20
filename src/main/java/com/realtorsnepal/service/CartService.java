package com.realtorsnepal.service;

import com.realtorsnepal.model.Cart;

/**
 * Created by Samima on 1/26/2017.
 */
public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
