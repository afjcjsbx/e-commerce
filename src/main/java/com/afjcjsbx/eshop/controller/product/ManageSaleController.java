package com.afjcjsbx.eshop.controller.product;

import com.afjcjsbx.eshop.bean.ManageProductBean;
import com.afjcjsbx.eshop.controller.search.FilteredSearchController;
import com.afjcjsbx.eshop.entity.advertisement.Advertisement;
import com.afjcjsbx.eshop.entity.catalogue.Keyword;
import com.afjcjsbx.eshop.entity.catalogue.Product;
import com.afjcjsbx.eshop.entity.login.Producer;
import com.afjcjsbx.eshop.persistence.DataSource;
import com.afjcjsbx.eshop.persistence.Query;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ManageSaleController {


    public Product displayProduct(String pid) throws SQLException {

        PreparedStatement preparedStatement = DataSource.getConnection().prepareStatement(Query.SEARCH_PRDUCT_BY_ID);
        preparedStatement.setString(1, pid);
        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            return FilteredSearchController.retrieveProductInfoFromDatabaseQuery(resultSet);
        }

        throw new SQLException();
    }


    public boolean insertProduct(ManageProductBean manageProductBean) {

        try {

            PreparedStatement statement = DataSource.getConnection().prepareStatement(Query.INSERT_PRODUCT);

            statement.setString(1, manageProductBean.getProducer_email());
            statement.setString(2, manageProductBean.getCategory());
            statement.setString(3, manageProductBean.getName());
            statement.setString(4, manageProductBean.getDescription());
            statement.setString(5, manageProductBean.getPicture());
            statement.setString(6, manageProductBean.getPrice());
            statement.setString(7, manageProductBean.getManufacturer());
            statement.setString(8, manageProductBean.getIsCharitable());
            statement.setString(9, manageProductBean.getDiscountPercentage());
            statement.setString(10, manageProductBean.getShipment_cost());

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new user was inserted successfully!");
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }


    public void updateproduct(Advertisement advertisement) {

        /*
        try {

            PreparedStatement statement = DataSource.getConnection().prepareStatement(Query.);

            statement.setString(1, advertisement.getProduct().getName());
            statement.setString(2, advertisement.getProduct().getDescription());
            statement.setString(3, Float.toString(advertisement.getProduct().getPrice()));
            statement.setString(4, Integer.toString(advertisement.getProduct().getDiscountPercentage()));

            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("An existing user was updated successfully!");
            }

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new user was inserted successfully!");
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;

        */
    }


    public boolean deleteProduct(String productId) {

        try {

            PreparedStatement statement = DataSource.getConnection().prepareStatement(Query.DELETE_PRODUCT);
            statement.setString(1, productId);

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new user was inserted successfully!");
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }


    private String keywordsToString(List<Keyword> keywords) {
        StringBuilder string_keywords = new StringBuilder();

        for (Keyword keyword : keywords) {
            string_keywords.append(keyword).append(", ");
        }

        return string_keywords.toString();
    }
}

