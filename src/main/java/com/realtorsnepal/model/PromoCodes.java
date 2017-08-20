package com.realtorsnepal.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Samima on 5/14/2017.
 */
@Entity
public class PromoCodes implements Serializable {
    private static final long serialVersionUID = -5208858163289893008L;

    @Id
    @GeneratedValue
    private int promoCodeId;

    @NotEmpty(message = "The promo code must not be null.")
    private String promoCode;

    @NotEmpty(message = "The promo type must not be null.")
    private String promoType;

    @NotEmpty(message = "Promo Amount cannot be empty")
    private int promoPercent;

    @NotEmpty(message = "Min Amount cannot be empty")
    private int minAmount;

    @NotEmpty(message = "Promo details cannot be empty")
    private String promoDetails;

    @NotEmpty(message = "Expiry cannot be empty")
    private Date promoExpiry;

    @NotEmpty(message = "Enabled cannot be empty")
    private Boolean isActive;

    public int getPromoCodeId() {
        return promoCodeId;
    }

    public void setPromoCodeId(int promoCodeId) {
        this.promoCodeId = promoCodeId;
    }

    public String getPromoCode() {
        return promoCode;
    }

    public void setPromoCode(String promoCode) {
        this.promoCode = promoCode;
    }
    public int getMinAmount() {
        return minAmount;
    }

    public String getPromoType() {
        return promoType;
    }

    public void setPromoType(String promoType) {
        this.promoType = promoType;
    }

    public void setMinAmount(int minAmount) {
        this.minAmount = minAmount;
    }

    public int getPromoPercent() {
        return promoPercent;
    }

    public void setPromoPercent(int promoPercent) {
        this.promoPercent = promoPercent;
    }

    public String getPromoDetails() {
        return promoDetails;
    }

    public void setPromoDetails(String promoDetails) {
        this.promoDetails = promoDetails;
    }

    public Date getPromoExpiry() {
        return promoExpiry;
    }

    public void setPromoExpiry(Date promoExpiry) {
        this.promoExpiry = promoExpiry;
    }

    public Boolean getActive() {
        return isActive;
    }

    public void setActive(Boolean active) {
        isActive = active;
    }
}
