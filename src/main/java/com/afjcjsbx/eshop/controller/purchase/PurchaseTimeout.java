package com.afjcjsbx.eshop.controller.purchase;

import javax.jms.Session;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;

/**
 * Created by redridge on 24/02/17.
 */
public class PurchaseTimeout implements Runnable {
    private int productId;
    private HttpSession session;

    public PurchaseTimeout(int productId, HttpSession session) {
        this.productId = productId;
        this.session = session;
    }

    @Override
    public void run() {
        try {
            Thread.sleep(1000*300); // timeout dopo 5 minuti
            ManagePurchaseController managePurchaseController = new ManagePurchaseController();
            //dopo 5 minuti senza aver pagato, rimetti il prodotto in vendita e disconnetti l'utente
            managePurchaseController.setProductAvailability(productId, 1);
            session.setAttribute("currentSessionUser", null);
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
}
