<%@ page import="com.afjcjsbx.eshop.controller.catalogue.CatalogueController" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.afjcjsbx.eshop.entity.catalogue.Category" %>
<%@ page import="com.afjcjsbx.eshop.controller.product.ManageSaleController" %>
<%@ page import="com.afjcjsbx.eshop.entity.login.Producer" %>

<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<jsp:useBean id="manageProductBean" scope="session"
             class="com.afjcjsbx.eshop.bean.ManageProductBean"/>

<jsp:setProperty name="manageProductBean" property="*"/>

<%
    if (request.getParameter("submit") != null) {
/*        System.out.println(feedbackBean.getProductId());
        System.out.println(feedbackBean.getRating());
        System.out.println(feedbackBean.getComment());*/


        if (manageProductBean.validate()) {

            Producer producer = (Producer) session.getAttribute("currentSessionUser");

            manageProductBean.setProducer_email(producer.getEmail());

            ManageSaleController manageSaleController = new ManageSaleController();
            manageSaleController.insertProduct(manageProductBean);

%>

<jsp:forward page="insert_product_success.jsp"/>

<%

        }
    }
%>
<!-- Syntax check is successful -> pass to new page -->


<!DOCTYPE HTML>
<html>
<head>
    <title>Swim Wear a E-Commerce online Shopping Category Flat Bootstrap Responsive Website Template | Account ::
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
<!--header-->
<div class="content">
    <!-- registration -->
    <div class="main-1">
        <div class="container">
            <div class="register">


                <form name="form_insert_product" action="insert_product.jsp">


                    <div class="register-top-grid">
                        <h3>insert Product</h3>
                        <div class="wow fadeInLeft" data-wow-delay="0.4s">
                            <span>Product Name<label>*</label></span>
                            <input type="text" name="name" required>
                            <p id="error_product_name"></p>
                        </div>
                        <div style="visibility: hidden">
                            <span>Hidden<label>*</label></span>
                            <input type="text">
                        </div>
                        <div class="wow fadeInRight" data-wow-delay="0.4s">
                            <span>Product Description<label>*</label></span>
                            <textarea name="description" cols="100" rows="12" required></textarea>
                        </div>

                        <div style="visibility: hidden">
                            <span>Hidden<label>*</label></span>
                            <input type="text">
                        </div>


                        <a class="news-letter" href="#">
                            <label class="checkbox"><input type="checkbox" name="isCharitable" value="1"><i> </i>Is a
                                charitable
                                product ?</label>
                        </a>


                        <div class="clearfix"></div>

                    </div>


                    <div class="register-bottom-grid">
                        <div class="wow fadeInLeft" data-wow-delay="0.4s">
                            <span>Picture Link<label></label></span>
                            <input type="text" name="picture" required>
                        </div>
                        <div class="wow fadeInRight" data-wow-delay="0.4s">
                            <span>Category</span>
                            <SELECT NAME="category" id="category">

                                <%

                                    CatalogueController catalogueController = new CatalogueController();

                                    ArrayList<Category> categories = catalogueController.retrieveCategories();

                                    for (int i = 0; i < categories.size(); i++) {
                                %>
                                <option value="<%= categories.get(i).getName() %>"><%= categories.get(i).getName() %>
                                </option>
                                <%
                                    }

                                %>


                            </SELECT>
                        </div>
                    </div>


                    <h3>PRICE INFORMATION</h3>

                    <div class="register-bottom-grid">
                        <div class="wow fadeInLeft" data-wow-delay="0.4s">
                            <span>Price<label>*</label></span>
                            <input type="text" name="price" required>
                        </div>
                        <div class="wow fadeInRight" data-wow-delay="0.4s">
                            <span>Discount percentage<label></label></span>
                            <input type="text" value="0" name="discount_percentage">
                        </div>
                    </div>


                    <h3>SHIPMENT INFORMATION</h3>

                    <div class="register-bottom-grid">
                        <div class="wow fadeInLeft" data-wow-delay="0.4s">
                            <span>Shipment cost<label>*</label></span>
                            <input type="text" name="shipment_cost" required>
                        </div>
                        <div style="visibility: hidden">
                            <span>Confirm Password<label>*</label></span>
                            <input type="text">
                        </div>
                    </div>

                    <input type="submit" value="submit" name="submit">
                    <div class="clearfix"></div>

                    <%
                        if (request.getParameter("submit") != null) {
                    %>
                    <tr>
                        <td colspan=20 align="center">
                            <span style="color: red; ">Invalid data. Try again</span>
                        </td>
                    </tr>
                    <%
                        }
                    %>


                </form>

            </div>
        </div>
    </div>
    <!-- registration -->

</div>

<!--footer-->
<%@ include file="email_subscription_toolbar.jsp" %>

<!--footer-->
<%@ include file="footer_menu.jsp" %>


</body>
</html>