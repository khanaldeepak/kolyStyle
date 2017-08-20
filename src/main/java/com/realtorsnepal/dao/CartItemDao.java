package com.realtorsnepal.dao;

import com.realtorsnepal.model.Cart;
import com.realtorsnepal.model.CartItem;

/**
 * Created by Samima on 1/26/2017.
 */
public interface CartItemDao {

    void  addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);
}
