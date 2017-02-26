package com.afjcjsbx.eshop.controller.search.decoration;

import com.afjcjsbx.eshop.controller.search.FilteredSearchController;
import com.afjcjsbx.eshop.controller.search.FilteredSearchDecorator;
import com.afjcjsbx.eshop.entity.catalogue.Product;

import java.sql.SQLException;
import java.util.ArrayList;

public class DiscountResearch extends FilteredSearchDecorator {

    private Integer minDiscount;

    public DiscountResearch(Integer minDiscount, FilteredSearchController filteredSearch) {
        super(filteredSearch);
        this.minDiscount = minDiscount;
    }

    private ArrayList<Product> filterResearchDiscount(ArrayList<Product> products) {

        ArrayList<Product> filteredProducts = new ArrayList<Product>();

        for (Product product : products) {
            if (product.getDiscountPercentage() >= minDiscount) {
                filteredProducts.add(product);
            }
        }


        return filteredProducts;
    }

    @Override
    public ArrayList<Product> search(String search) throws SQLException {

        return filterResearchDiscount(super.search(search));

    }
}