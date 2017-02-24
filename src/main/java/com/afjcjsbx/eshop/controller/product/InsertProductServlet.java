package com.afjcjsbx.eshop.controller.product;

import com.afjcjsbx.eshop.entity.catalogue.Product;
import com.afjcjsbx.eshop.entity.login.AbstractUser;
import com.afjcjsbx.eshop.entity.login.Producer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static com.afjcjsbx.eshop.utils.SessionUtil.getSessionAttribute;

/**
 * Created by afjcjsbx on 09/02/17.
 */
public class InsertProductServlet extends HttpServlet {



    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, java.io.IOException {

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {

        String product_name = request.getParameter("product_name");
        String product_description = request.getParameter("product_description");

        String isCharitable;
        if(request.getParameter("isCharitable") != null){
            isCharitable = "1";
        }else{
            isCharitable = "0";
        }

        String picture_link = request.getParameter("picture_link");
        String category_name = request.getParameter("category");
        String price = request.getParameter("price");
        String discount_percentage = request.getParameter("discount_percentage");
        String shipment_cost = request.getParameter("shipment_cost");

        Product product = new Product();
        product.setPicture(picture_link);
        product.setPrice(Float.parseFloat(price));


        // do something to produce a response
    }


    public AbstractUser retriveUserSession(HttpServletRequest request){
        return getSessionAttribute("currentSessionUser", request);
    }

}
