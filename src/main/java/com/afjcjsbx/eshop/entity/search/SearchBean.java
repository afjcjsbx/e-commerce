package com.afjcjsbx.eshop.entity.search;


import com.afjcjsbx.eshop.entity.catalogue.Product;

import java.util.ArrayList;

public class SearchBean {


    private String search = "";
    private String category = "";
    private int minPrice = 0;
    private int maxPrice = 9999;
    private int minDiscount;
    private int maxDiscount;
    private String[] types = null;
    private String[] brands = null;
    private String manufacturer;
    private ArrayList<Product> result = new ArrayList<Product>();



    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(int minPrice) {
        this.minPrice = minPrice;
    }

    public int getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(int maxPrice) {
        this.maxPrice = maxPrice;
    }

    public int getMinDiscount() {
        return minDiscount;
    }

    public void setMinDiscount(int minDiscount) {
        this.minDiscount = minDiscount;
    }

    public int getMaxDiscount() {
        return maxDiscount;
    }

    public void setMaxDiscount(int maxDiscount) {
        this.maxDiscount = maxDiscount;
    }

    public String[] getTypes() {
        return types;
    }

    public void setTypes(String[] types) {
        this.types = types;
    }

    public String[] getBrands() {
        return brands;
    }

    public void setBrands(String[] brands) {
        this.brands = brands;
    }


    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public ArrayList<Product> getResult() {
        return result;
    }

    public void setResult(ArrayList<Product> result) {
        this.result = result;
    }

    public boolean validate() {
        // Syntax check
        return this.search != "";
    }


}
