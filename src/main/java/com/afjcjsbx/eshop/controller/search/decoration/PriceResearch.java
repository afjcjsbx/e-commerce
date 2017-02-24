package com.afjcjsbx.eshop.controller.search.decoration;

import com.afjcjsbx.eshop.controller.search.FilteredSearchController;
import com.afjcjsbx.eshop.controller.search.FilteredSearchDecorator;
import com.afjcjsbx.eshop.entity.catalogue.Product;

import java.sql.SQLException;
import java.util.ArrayList;

public class PriceResearch extends FilteredSearchDecorator {

    private Integer minPrice;
    private Integer maxPrice;

    public PriceResearch(Integer minPrice, Integer maxPrice, FilteredSearchController filteredSearch) {
        super(filteredSearch);
        this.minPrice = minPrice;
        this.maxPrice = maxPrice;
    }

    private ArrayList<Product> filterResearchCity(ArrayList<Product> products) {

        ArrayList<Product> filteredProducts = new ArrayList<Product>();

        for (Product product : products) {
            if (product.getPrice() >= minPrice && product.getPrice() <= maxPrice)
                filteredProducts.add(product);
        }
        return filteredProducts;
    }

    @Override
    public ArrayList<Product> search(String search) throws SQLException {

        return filterResearchCity(super.search(search));

    }
}