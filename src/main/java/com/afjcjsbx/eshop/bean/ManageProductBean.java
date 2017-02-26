package com.afjcjsbx.eshop.bean;

/**
 * Created by afjcjsbx on 24/02/17.
 */
public class ManageProductBean {

    private String name;
    private String description;
    private String picture;
    private String price;
    private String discountPercentage;
    private String shipment_cost;
    private String producer_email;
    private String category;
    private String manufacturer;
    private String isCharitable;


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

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDiscountPercentage() {
        return discountPercentage;
    }

    public void setDiscountPercentage(String discountPercentage) {
        this.discountPercentage = discountPercentage;
    }

    public String getShipment_cost() {
        return shipment_cost;
    }

    public void setShipment_cost(String shipment_cost) {
        this.shipment_cost = shipment_cost;
    }

    public String getProducer_email() {
        return producer_email;
    }

    public void setProducer_email(String producer_email) {
        this.producer_email = producer_email;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getIsCharitable() {
        return isCharitable;
    }

    public void setIsCharitable(String isCharitable) {
        this.isCharitable = isCharitable;
    }

    public boolean validate(){

        if(!name.isEmpty() || !description.isEmpty() || !picture.isEmpty() || !price.isEmpty() ||
                !producer_email.isEmpty() || !category.isEmpty()){
            return true;
        }

        return false;
    }
}
