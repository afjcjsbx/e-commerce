package com.afjcjsbx.eshop.controller.catalogue;



import com.afjcjsbx.eshop.entity.catalogue.Category;
import com.afjcjsbx.eshop.entity.catalogue.Product;
import com.afjcjsbx.eshop.persistence.DataSource;
import com.afjcjsbx.eshop.persistence.Query;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by afjcjsbx on 09/02/17.
 */
public class CatalogueController {


        public static Category retrieveCategoryInfoFromDatabaseQuery(ResultSet resultSet) throws SQLException {

        String c_name = resultSet.getString("CategoryName"),
                c_description = resultSet.getString("CategoryDescription"),
                c_picture = resultSet.getString("Picture");

        return new Category(c_name, c_description, c_picture);
    }


    public ArrayList<Category> retrieveCategories() throws SQLException {

        PreparedStatement preparedStatement = DataSource.getConnection().prepareStatement(Query.RETRIEVE_CATEGORIES);
        ResultSet resultSet = preparedStatement.executeQuery();

        System.err.println("query:" + preparedStatement.toString());

        ArrayList<Category> categories = new ArrayList<Category>();

        while (resultSet.next()) {
            Category c = retrieveCategoryInfoFromDatabaseQuery(resultSet);
            categories.add(c);
        }

        return categories;

    }

}
