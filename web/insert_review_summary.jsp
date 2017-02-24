<%@ page import="com.afjcjsbx.eshop.entity.login.Consumer" %>
<%@ page import="com.afjcjsbx.eshop.controller.feedback.ManageFeedbackController" %>

<jsp:useBean id="feedbackBean" scope="session"
             class="com.afjcjsbx.eshop.bean.ManageFeedbackBean" />

<jsp:setProperty name="feedbackBean" property="*" />

<%!
    ManageFeedbackController feedbackController = ManageFeedbackController.getInstance();
%>


<%
    /**
     * L'utente (compratore) lo ricavo dalla session, ma avrei potuto benissimo farlo inserire dall'utente
     * e cosi' rendere la View completamente indipendente dal Model.
     */
    Consumer user = (Consumer) session.getAttribute("currentSessionUser");

    /*System.out.println(feedbackBean.getProductId());
    System.out.println(feedbackBean.getRating());
    System.out.println(user.getUsername());
    System.out.println(feedbackBean.getComment());*/


    feedbackController.addProductReview(feedbackBean.getProductId(),
            user.getUsername(),
            feedbackBean.getRating(),
            feedbackBean.getComment());

%>







<!DOCTYPE HTML>
<html>
<head>
    <title>Checkout</title>
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/owl.carousel.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Swim Wear Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script src="js/jquery.min.js"></script>
    <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/megamenu.js"></script>
    <script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
    <!-- shoppingCart -->
    <!-- shoppingCart -->
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
<!--header-->
<div class="header">
    <div class="header-top">
        <div class="container">
            <div class="lang_list">
                <select tabindex="4" class="dropdown1">
                    <option value="" class="label" value="">En</option>
                    <option value="1">English</option>
                    <option value="2">French</option>
                    <option value="3">German</option>
                </select>
            </div>
            <div class="top-right">
                <ul>
                    <li class="text"><a href="login.jsp">login</a>
                    <li><div class="shoppingCart box_1">
                        <a href="shoppingbag.jsp">
                            <span class="simpleCart_total"> ciaoo $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)
                        </a>
                        <p><a href="javascript:;" class="simpleCart_empty">Empty shoppingCart</a></p>
                        <div class="clearfix"> </div>
                    </div></li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="header-bottom">
        <div class="container">
            <!--/.content-->
            <div class="content white">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <!--/.navbar-header-->

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="index.jsp">Home</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list" href="products.jsp">Women</a></li>
                                                <li><a class="list1" href="products.jsp">PrettySecrets</a></li>
                                                <li><a class="list1" href="products.jsp">N-Gal</a></li>
                                                <li><a class="list1" href="products.jsp">Lobster</a></li>
                                                <li><a class="list1" href="products.jsp">Citypret</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list" href="products.jsp">Kids</a></li>
                                                <li><a class="list1" href="products.jsp">River Island</a></li>
                                                <li><a class="list1" href="products.jsp">Penny</a></li>
                                                <li><a class="list1" href="products.jsp">Nidhi Munim</a></li>
                                                <li><a class="list1" href="products.jsp">Divaat</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list" href="products.jsp">Men</a></li>
                                                <li><a class="list1" href="products.jsp">Fiesta Clara</a></li>
                                                <li><a class="list1" href="products.jsp">Quiksilver</a></li>
                                                <li><a class="list1" href="products.jsp">Incult</a></li>
                                                <li><a class="list1" href="products.jsp">Proline</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">women <b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list" href="products.jsp">Women</a></li>
                                                <li><a class="list1" href="products.jsp">PrettySecrets</a></li>
                                                <li><a class="list1" href="products.jsp">N-Gal</a></li>
                                                <li><a class="list1" href="products.jsp">Lobster</a></li>
                                                <li><a class="list1" href="products.jsp">Citypret</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list"  href="products.jsp">Kids</a></li>
                                                <li><a class="list1" href="products.jsp">River Island</a></li>
                                                <li><a class="list1" href="products.jsp">Penny</a></li>
                                                <li><a class="list1" href="products.jsp">Nidhi Munim</a></li>
                                                <li><a class="list1" href="products.jsp">Divaat</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a  class="list" href="products.jsp">Men</a></li>
                                                <li><a class="list1" href="products.jsp">Fiesta Clara</a></li>
                                                <li><a class="list1" href="products.jsp">Quiksilver</a></li>
                                                <li><a class="list1" href="products.jsp">Incult</a></li>
                                                <li><a class="list1" href="products.jsp">Proline</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">kids <b class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list" href="products.jsp">Women</a></li>
                                                <li><a class="list1" href="products.jsp">PrettySecrets</a></li>
                                                <li><a class="list1" href="products.jsp">N-Gal</a></li>
                                                <li><a class="list1" href="products.jsp">Lobster</a></li>
                                                <li><a class="list1" href="products.jsp">Citypret</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a  class="list" href="products.jsp">Kids</a></li>
                                                <li><a class="list1" href="products.jsp">River Island</a></li>
                                                <li><a class="list1" href="products.jsp">Penny</a></li>
                                                <li><a class="list1" href="products.jsp">Nidhi Munim</a></li>
                                                <li><a class="list1" href="products.jsp">Divaat</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list" href="products.jsp">Men</a></li>
                                                <li><a class="list1" href="products.jsp">Fiesta Clara</a></li>
                                                <li><a class="list1" href="products.jsp">Quiksilver</a></li>
                                                <li><a class="list1" href="products.jsp">Incult</a></li>
                                                <li><a class="list1" href="products.jsp">Proline</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </ul>
                            </li>
                            <li><a href="products.jsp">Top</a></li>
                            <li><a href="products.jsp">Bikini</a></li>
                        </ul>
                    </div>
                    <!--/.navbar-collapse-->
                </nav>
                <!--/.navbar-->
            </div>
            <div class="search-box">
                <div id="sb-search" class="sb-search">
                    <form>
                        <input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
                        <input class="sb-search-submit" type="submit" value="">
                        <span class="sb-icon-search"> </span>
                    </form>
                </div>
            </div>

            <!-- search-scripts -->
            <script src="js/classie.js"></script>
            <script src="js/uisearch.js"></script>
            <script>
                new UISearch( document.getElementById( 'sb-search' ) );
            </script>
            <!-- //search-scripts -->
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--header-->
<div class="content">
    <!--start-contact-->
    <!--contact-->
    <div class="content">
        <div class="contact">
            <div class="col-md-6 contact-right">
                <h3>Greetings! Your review was inserted correctly</h3>
            </div>
        </div>
    </div>

    <br><br>
    <!--footer-->
    <div class="footer-section">
        <div class="container">
            <div class="footer-grids">
                <div class="col-md-2 footer-grid">
                    <h4>company</h4>
                    <ul>
                        <li><a href="products.jsp">products</a></li>
                        <li><a href="#">Work Here</a></li>
                        <li><a href="#">Team</a></li>
                        <li><a href="#">Happenings</a></li>
                        <li><a href="#">Dealer Locator</a></li>
                    </ul>
                </div>
                <div class="col-md-2 footer-grid">
                    <h4>service</h4>
                    <ul>
                        <li><a href="#">Support</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Warranty</a></li>
                        <li><a href="contact.html">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-md-2 footer-grid">
                    <h4>order & returns</h4>
                    <ul>
                        <li><a href="#">Order Status</a></li>
                        <li><a href="#">Shipping Policy</a></li>
                        <li><a href="#">Return Policy</a></li>
                        <li><a href="#">Digital Gift Card</a></li>
                    </ul>
                </div>
                <div class="col-md-2 footer-grid">
                    <h4>legal</h4>
                    <ul>
                        <li><a href="#">Privacy</a></li>
                        <li><a href="#">Terms and Conditions</a></li>
                        <li><a href="#">Social Responsibility</a></li>
                    </ul>
                </div>
                <div class="col-md-4 footer-grid1">
                    <div class="social-icons">
                        <a href="#"><i class="icon"></i></a>
                        <a href="#"><i class="icon1"></i></a>
                        <a href="#"><i class="icon2"></i></a>
                        <a href="#"><i class="icon3"></i></a>
                        <a href="#"><i class="icon4"></i></a>
                    </div>
                    <p>Copyright &copy; 2015 Swim Wear. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<!--footer-->

</body>
</html>