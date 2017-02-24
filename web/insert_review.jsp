<%@ page import="com.afjcjsbx.eshop.entity.login.Consumer" %>
<jsp:useBean id="feedbackBean" scope="session"
             class="com.afjcjsbx.eshop.bean.ManageFeedbackBean" />

<jsp:setProperty name="feedbackBean" property="*" />

<%
    if (request.getParameter("submit") != null) {
/*        System.out.println(feedbackBean.getProductId());
        System.out.println(feedbackBean.getRating());
        System.out.println(feedbackBean.getComment());
        System.out.println(feedbackBean.getComment());*/
        AbstractUser user = (Consumer) session.getAttribute("currentSessionUser");
        feedbackBean.setUsername(user.getUsername());
        if (feedbackBean.validate()) {
%>
<!-- Syntax check is successful -> pass to new page -->
<jsp:forward page="insert_review_summary.jsp" />
<%
        }
    }
%>


<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
    <title>Insert review</title>
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
            <div class="contact">
            <h2>Insert review</h2>
            </div>
            <div class="col-md-6 contact-right">
                <form name="formInsertReview" action="insert_review.jsp" method="get">
                    <div class="wow fadeInLeft" data-wow-delay="0.4s">
                        <span>Choose a product that you bought to review</span>
                        <input type="text" name="productId" placeholder="Product id" id="productId">
                    </div>
                    <br>
                    <div class="wow fadeInLeft" data-wow-delay="0.4s">
                        <span>Rate between 1 and 5</span>
                        <input type="text" name="rating" placeholder="Rating" id="rating">
                    </div>
                    <br>
                    <div class="wow fadeInLeft" data-wow-delay="0.4s">
                        <span>Provide your feedback</span>
                        <textarea name="comment" cols="62" rows="8" placeholder="Comment" id="comment"></textarea>
                    </div>
                    <input name="submit" type="submit" value="submit">
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