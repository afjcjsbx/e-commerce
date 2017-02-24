package com.afjcjsbx.eshop.bean;

/**
 * Created by afjcjsbx on 24/02/17.
 */
public class CartProductBean {

    private String product_id;
    private String name;
    private String description;
    private String price;
    private String discount_percentage;
    private String shipping_cost;


    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDiscount_percentage() {
        return discount_percentage;
    }

    public void setDiscount_percentage(String discount_percentage) {
        this.discount_percentage = discount_percentage;
    }

    public String getShipping_cost() {
        return shipping_cost;
    }

    public void setShipping_cost(String shipping_cost) {
        this.shipping_cost = shipping_cost;
    }


    public boolean validate(){
        if(!product_id.isEmpty() || !name.isEmpty() || !description.isEmpty() || !price.isEmpty() || !discount_percentage.isEmpty() || !shipping_cost.isEmpty()){
            return true;
        }

        return false;
    }
}
