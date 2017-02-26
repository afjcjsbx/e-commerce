package com.afjcjsbx.eshop.controller.login;


import com.afjcjsbx.eshop.controller.AbstractController;
import com.afjcjsbx.eshop.entity.login.AbstractUser;
import com.afjcjsbx.eshop.entity.login.FactoryUsers;
import com.afjcjsbx.eshop.persistence.DataSource;
import com.afjcjsbx.eshop.persistence.Query;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginController extends AbstractController {

	/*
	private AjaxResponse logon(){}


	public @ResponseBody String jsonLogon(){
	}
	
    private ShoppingCartData populateShoppingCartData(){}

*/


    private static AbstractUser retrieveUserInfoFromDatabaseQuery(ResultSet resultSet) throws SQLException {

        String u_name = resultSet.getString("Name"),
                u_surname = resultSet.getString("Surname"),
                u_username = resultSet.getString("Username"),
                u_email = resultSet.getString("Mail"),
                u_password = resultSet.getString("Password"),
                u_type = resultSet.getString("Type");


        AbstractUser user = FactoryUsers.get(u_type);

        user.setName(u_name);
        user.setSurname(u_surname);
        user.setUsername(u_username);
        user.setEmail(u_email);
        user.setPassword(u_password);
        user.setValid(true);

        System.out.println("Welcome " + u_name + " " + u_surname);

        return user;
    }


    public static AbstractUser retrieveOwnerInfoByEmail(String email) throws SQLException {

        PreparedStatement preparedStatement = DataSource.getConnection().prepareStatement(Query.FIND_USER_BY_EMAIL);
        preparedStatement.setString(1, email);

        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            return retrieveUserInfoFromDatabaseQuery(resultSet);
        }

        throw new SQLException();
    }


    public static AbstractUser retrieveUserInfoByEmailAndPassword(String email, String password) throws SQLException {

        PreparedStatement preparedStatement = DataSource.getConnection().prepareStatement(Query.FIND_REGISTERED_USER);
        preparedStatement.setString(1, email);
        preparedStatement.setString(2, password);

        System.out.println("Welcome " + email + " " + password);


        ResultSet resultSet = preparedStatement.executeQuery();

        if (resultSet.next()) {
            return retrieveUserInfoFromDatabaseQuery(resultSet);
        }

        throw new SQLException();
    }


}
