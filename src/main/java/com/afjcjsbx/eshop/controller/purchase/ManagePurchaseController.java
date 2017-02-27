package com.afjcjsbx.eshop.controller.purchase;

import com.afjcjsbx.eshop.entity.catalogue.Product;
import com.afjcjsbx.eshop.entity.checkout.DeliveryMethod;
import com.afjcjsbx.eshop.entity.checkout.PaymentMethod;
import com.afjcjsbx.eshop.entity.checkout.Transaction;
import com.afjcjsbx.eshop.entity.login.Consumer;
import com.afjcjsbx.eshop.entity.login.Producer;
import com.afjcjsbx.eshop.exceptions.DatabaseException;
import com.afjcjsbx.eshop.persistence.DataSource;
import com.afjcjsbx.eshop.persistence.Query;

import javax.servlet.http.HttpSession;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.concurrent.locks.Lock;

/**
 * Created by Davide on 20/02/2017.
 */
public class ManagePurchaseController {
    private static ManagePurchaseController instance;

    public synchronized static ManagePurchaseController getInstance() {
        if (instance == null)
            instance = new ManagePurchaseController();
        return instance;
    }

    /**
     * Deve essere synchronized perche` un solo consumer deve fare atomicamente la prenotazione per un prodotto.
     * @param productID prodotto prenotato
     * @param availability 0 o 1 a seconda che si stia prenotando o rimettendo in vendita il prodotto
     * @throws SQLException
     */
    public synchronized void setProductAvailability(int productID, int availability) throws SQLException{
        try {

            PreparedStatement statement = DataSource.getConnection().prepareStatement(Query.UPDATE_PRODUCT_AVAILABILITY);

            statement.setInt(1, availability);
            statement.setInt(2, productID);


            int rowsUpdated = statement.executeUpdate();
            if (rowsUpdated > 0) {
                System.out.println("An existing user was updated successfully!");
            }

            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new user was inserted successfully!");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void startTimeout(int productId, HttpSession session){
        PurchaseTimeout timeout = new PurchaseTimeout(productId, session);
        Thread t = new Thread(timeout);
        t.start();
    }


    // TODO deve prendere tutte stringhe e istanziare gli oggetti associati, per poi scrivere nel db
    public void createTransaction(Producer seller, Consumer buyer, Product productOnSale, DeliveryMethod delivery, PaymentMethod payment) throws DatabaseException {
        Transaction transaction = new Transaction(seller, buyer, productOnSale, delivery, payment);

        // JDBC
    }

    public static void main(String[] args) throws SQLException {
        ManagePurchaseController managePurchaseController = new ManagePurchaseController();
        managePurchaseController.setProductAvailability(2,0);
        //managePurchaseController.startTimeout(2);
    }
}
