package com.afjcjsbx.eshop.controller.shoppingcart;

import com.afjcjsbx.eshop.controller.search.FilteredSearchController;
import com.afjcjsbx.eshop.entity.catalog.Product;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

/**
 * Created by afjcjsbx on 03/02/17.
 */
public class RemoveToCartServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, java.io.IOException {

        String product_id = request.getParameter("productid");

        ShoppingCartController scc = new ShoppingCartController();
        scc.removeProduct(request, Integer.parseInt(product_id));

        response.sendRedirect("checkout.jsp"); //error page

    }
}
