<%@ page import="com.afjcjsbx.eshop.controller.shoppingcart.ShoppingCartController" %><%--
  Created by IntelliJ IDEA.
  User: afjcjsbx
  Date: 24/02/17
  Time: 23:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

</body>
</html>

<%

    String product_id = request.getParameter("productid");

    ShoppingCartController scc = new ShoppingCartController();
    scc.removeProduct(request, Integer.parseInt(product_id));

    response.sendRedirect("wishlist.jsp"); //error page

%>