package com.afjcjsbx.eshop.controller.search.decoration;

import com.afjcjsbx.eshop.controller.search.FilteredSearchController;
import com.afjcjsbx.eshop.controller.search.FilteredSearchDecorator;
import com.afjcjsbx.eshop.entity.catalogue.Category;
import com.afjcjsbx.eshop.entity.catalogue.Product;

import java.sql.SQLException;
import java.util.ArrayList;

public class CategoryResearch extends FilteredSearchDecorator {

    private String category;

    public CategoryResearch(String category, FilteredSearchController filteredSearch) {
        super(filteredSearch);
        this.category = category;
    }

    private ArrayList<Product> filterResearchCity(ArrayList<Product> products) {

        ArrayList<Product> filteredProducts = new ArrayList<Product>();

        for (Product product : products) {
            if (product.getCategory().getName().equalsIgnoreCase(category))
                filteredProducts.add(product);
        }
        return filteredProducts;
    }

    @Override
    public ArrayList<Product> search(String search) throws SQLException {

        return filterResearchCity(super.search(search));

    }
}