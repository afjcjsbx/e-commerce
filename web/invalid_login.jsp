<%--
  Created by IntelliJ IDEA.
  User: afjcjsbx
  Date: 12/01/17
  Time: 00:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" session="true" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Swim Wear a E-Commerce online Shopping Category Flat Bootstrap Responsive Website Template | Checkout :: w3layouts</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/owl.carousel.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <script src="js/imagezoom.js"></script>

    <!-- FlexSlider -->
    <script defer src="js/jquery.flexslider.js"></script>
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />


    <script>
        // Can also be used with $(document).ready()
        $(window).load(function() {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>


</head>
<body>

<%@ include file="header_menu.jsp" %>


<!--header-->
<!-- purchase -->
<div class="content">
    <div class="cart-items">
        <div class="container">
            <div align="center">
                <h3><b>Sorry, you are not a registered user! Please sign up first</b></h3>
                <br><br>
                <img src="images/sad_face.png">
            </div>
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