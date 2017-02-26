<%@ page import="com.afjcjsbx.eshop.entity.catalogue.Product" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@ page language="java" session="true" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Swim Wear a E-Commerce online Shopping Category Flat Bootstrap Responsive Website Template | Checkout ::
        w3layouts</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/owl.carousel.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <script src="js/imagezoom.js"></script>

    <!-- FlexSlider -->
    <script defer src="js/jquery.flexslider.js"></script>
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen"/>


    <script>
        // Can also be used with $(document).ready()
        $(window).load(function () {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>


    <%-- Creazione o recupero del JavaBean
    <jsp:useBean id="user" scope="session" class="com.afjcjsbx.eshop.entity.login.Guestt" />
    <jsp:setProperty name="user" property="email" value="afjcjsbx@gmail.com"/>
    <jsp:setProperty name="user" property="password" value="qwerty"/>
    --%>


</head>
<body>
<%@ include file="header_menu.jsp" %>


<%


    if (request.getParameter("submit_remove_to_cart") != null) {

        int value = Integer.parseInt(request.getParameter("submit_remove_to_cart"));
        shoppingCartController.removeProduct(request, value);

        response.sendRedirect("wishlist.jsp"); //reload page

    }

%>



<!--header-->
<!-- purchase -->
<div class="content">
    <div class="cart-items">
        <div class="container">

            <h2>My Shopping Bag (<%= shoppingCartController.productCount(request) %>)</h2>

            <%

                List productlist = shoppingCartController.getProducts(request);

                if (productlist != null && productlist.size() > 0) {

                    for (int i = 0; i < productlist.size(); i++) {

                        Product product = (Product) productlist.get(i);

            %>

            <script>$(document).ready(function (c) {
                $('.close1').on('click', function (c) {
                    $('.cart-header').fadeOut('slow', function (c) {
                        $('.cart-header').remove();
                        location.reload(true);
                    });
                });
            });
            </script>


            <div class="cart-header">

                <div align="right">

                    <form id="submit_remove_to_cart" action="">

                        <a class="acount-btn" onclick="document.getElementById('submit_remove_to_cart').submit();"
                           style="cursor: pointer;">x</a>
                        <input type="hidden" name="submit_remove_to_cart" value="<%= product.getId() %>">
                    </form>



                </div>

                <div class="cart-sec simpleCart_shelfItem">
                    <div class="cart-item cyc">
                        <img src="<%= product.getPicture() %>" class="img-responsive" alt="">
                    </div>
                    <div class="cart-item-info">
                        <h3><a href="#"><%= product.getName() %>
                        </a><span>Pickup time:</span></h3>
                        <ul class="qty">
                            <li><p><%= product.getShipmentCost() %> delivery</p></li>
                        </ul>
                        <div class="delivery">
                            <p>Service Charges : $10.00</p>
                            <div class="clearfix"></div>
                        </div>
                    </div>

                    <br><br>

                    <div align="right">
                        <a class="acount-btn" onclick=""
                           style="cursor: pointer;">Checkout</a>
                    </div>


                    <div class="clearfix"></div>

                </div>
            </div>


            <%
                    }
                }
            %>


        </div>
    </div>


    <!-- purchase -->
    <%@ include file="email_subscription_toolbar.jsp" %>

</div>

<!--footer-->
<%@ include file="footer_menu.jsp" %>
<!--footer-->

</body>
</html>