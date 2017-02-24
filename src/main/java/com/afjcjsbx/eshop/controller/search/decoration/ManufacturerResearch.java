package com.afjcjsbx.eshop.controller.search.decoration;

import com.afjcjsbx.eshop.controller.search.FilteredSearchController;
import com.afjcjsbx.eshop.controller.search.FilteredSearchDecorator;
import com.afjcjsbx.eshop.entity.catalogue.Manufacturer;
import com.afjcjsbx.eshop.entity.catalogue.Product;

import java.sql.SQLException;
import java.util.ArrayList;

public class ManufacturerResearch extends FilteredSearchDecorator {

    private String manufacturer;

    public ManufacturerResearch(String manufacturer, FilteredSearchController filteredSearch) {
        super(filteredSearch);
        this.manufacturer = manufacturer;
    }

    private ArrayList<Product> filterResearchCity(ArrayList<Product> products) {

        ArrayList<Product> filteredProducts = new ArrayList<Product>();

        for (Product product : products) {
            if (product.getManufacturer().equals(manufacturer))
                filteredProducts.add(product);
        }
        return filteredProducts;
    }

    @Override
    public ArrayList<Product> search(String search) throws SQLException {

        return filterResearchCity(super.search(search));

    }
}