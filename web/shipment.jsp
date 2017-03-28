<%@ page import="com.afjcjsbx.eshop.enums.shipment.DeliveryStatus" %>
<%@ page import="com.afjcjsbx.eshop.controller.shipment.ShipmentController" %>
<%@ page import="com.afjcjsbx.eshop.entity.shipment.Shipment" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.text.ParseException" %><%--
  Created by IntelliJ IDEA.
  User: Richard
  Date: 17/02/2017
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! private String label;
private DeliveryStatus s; %>
<%
    if (request.getParameter("check") != null){
        String string_date = request.getParameter("date");
        String tracking = request.getParameter("tracking");

        if (tracking != null && string_date != null) {

            try {
                s = ShipmentController.shipment(tracking, string_date);
            } catch (SQLException e) {
                e.printStackTrace();
            }

            System.out.println(s);

            if (s != null) {
                if (s == DeliveryStatus.NOT_FOUND) {
                    label = "Username o ShipID non validi";
                } else if (s == DeliveryStatus.NOTSENT) {
                    label = "Da spedire";
                } else if (s == DeliveryStatus.SENT) {
                    label = "Spedito";
                } else if (s == DeliveryStatus.DELIVERED) {
                    label = "Consegnato";
                }
            }
        }
    }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Swim Wear a E-Commerce online Shopping Category Flat Bootstrap Responsive Website Template | Login ::
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


</head>
<body>
<!--header-->
<%@ include file="header_menu.jsp" %>
<div class="content">
    <div class="main-1">
        <div class="container">
            <div class="login-page">
                <div class="account_grid">
                    <h1 align="center">Check your shipment</h1>
                    <form method="post" action="shipment.jsp" name="nomeform">
                        <fieldset>
                            <label for="tracking">Tracking ID : </label><br>
                            <input type="text" NAME="tracking" id="tracking" required><br>
                            <label for="date">Date: </label><br>
                            <input type="date" NAME="date" id="date" value="yyyy-MM-dd" required><br><br>
                            <input type="submit" name="check" value="Check"><br><br><br>
                            <% if (s != null){ %>
                            <label><font color="black">Stato : </font></label> <font color="green"><%= label %></font>
                            <% } %>
                        </fieldset><br>
                    </form>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="email_subscription_toolbar.jsp" %>

<!--footer-->
<%@ include file="footer_menu.jsp" %>
<!--footer-->

</body>
</html>