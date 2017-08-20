package com.realtorsnepal.service;

import com.realtorsnepal.model.Cart;
import com.realtorsnepal.model.PromoCodes;

import java.util.List;

/**
 * Created by Samima on 5/14/2017.
 */
public interface PromoCodesService {
    void  addPromoCode(PromoCodes promoCodes);

    void removePromoCode(PromoCodes promoCodes);
    List<PromoCodes> getAllPromoCodes();
    PromoCodes getPromoCodeById(int promoCodeId);
    PromoCodes getPromoCodeByCode(String promoCode);
    void update(Cart cart, String promocode);
}
