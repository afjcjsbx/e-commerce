<%@ page import="com.afjcjsbx.eshop.controller.shoppingcart.ShoppingCartController" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.afjcjsbx.eshop.entity.login.Consumer" %>
<%@ page import="com.afjcjsbx.eshop.constants.Constants" %>


<jsp:useBean id="searchBean" scope="session"
             class="com.afjcjsbx.eshop.entity.search.SearchBean"/>

<jsp:setProperty name="searchBean" property="*"/>

<%
    if (request.getParameter("submit") != null) {
/*        System.out.println(feedbackBean.getProductId());
        System.out.println(feedbackBean.getRating());
        System.out.println(feedbackBean.getComment());*/

        searchBean.setSearch(request.getParameter("search"));

        if (searchBean.validate()) {
%>
<!-- Syntax check is successful -> pass to new page -->
<jsp:forward page="products.jsp"/>
<%
} else {
%>
<jsp:forward page="categories.jsp"/>
<%

        }
    }
%>


<!DOCTYPE HTML>
<html>
<head>
    <title>Swim Wear a E-Commerce online Shopping Category Flat Bootstrap Responsive Website Template | Home ::
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
    <!-- shoppingCart -->
    <!-- shoppingCart -->
</head>
<body>
<!--header-->
<%@ include file="header_menu.jsp" %>
<!--header-->
<div class="subscribe">
    <div class="container">
        <br><br><br><br>
        <div class="subscribe1">
            <h4>Search in eshop</h4>
        </div>
        <div class="subscribe2">
            <form>
                <input type="text" class="text" name="search" onfocus="this.value = '';"
                       onblur="if (this.value == '') {this.value = 'Search...';}">
                <input type="submit" name="submit" value="SEARCH">
            </form>
        </div>
        <div class="clearfix"></div>
        <br><br><br><br>
    </div>
</div>
<br><br>

<div class="banner-section">
    <div class="container">
        <div class="banner-grids">
                <h2>The latest collections</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                    et dolore magna aliqua.</p>

            <br><br>
                <a href="products.jsp" class="button"> shop now </a>

            <div class="clearfix"></div>
        </div>
    </div>

    <br><br><br><br>
</div>

<!--footer-->
<%@ include file="footer_menu.jsp" %>

<!--footer-->

</body>
</html>