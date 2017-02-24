package com.afjcjsbx.eshop.bean;


import java.io.Serializable;

/**
 * Created by Davide on 22/02/2017.
 */
public class ManagePurchaseBean implements Serializable {
    private String deliveryMethod;
    private String paymentMethod;
    private String deliveryAddress;

    public String getDeliveryMethod() {
        return deliveryMethod;
    }

    public void setDeliveryMethod(String deliveryMethod) {
        this.deliveryMethod = deliveryMethod;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getDeliveryAddress() {
        return deliveryAddress;
    }

    public void setDeliveryAddress(String deliveryAddress) {
        this.deliveryAddress = deliveryAddress;
    }

    public boolean validate() {
        // syntax check
        if (this.deliveryAddress.equals("")) { // TODO check everything the user has inserted
            return false;
        }

        return true;
    }
}
