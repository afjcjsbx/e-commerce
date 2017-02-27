<%@ page import="com.afjcjsbx.eshop.constants.Constants" %>
<%@ page import="com.afjcjsbx.eshop.controller.search.FilteredSearchController" %>
<%@ page import="com.afjcjsbx.eshop.controller.feedback.ManageFeedbackController" %>
<%@ page import="com.afjcjsbx.eshop.entity.catalogue.Product" %>
<%@ page import="com.afjcjsbx.eshop.constants.Constants" %>
<%@ page import="static com.afjcjsbx.eshop.utils.SessionUtil.getSessionAttribute" %>
<%@ page import="com.afjcjsbx.eshop.entity.shoppingcart.ShoppingCart" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<%@ page import="com.afjcjsbx.eshop.entity.feedback.Review" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
    FilteredSearchController filteredSearchController = new FilteredSearchController();

    Product p = null;

    if (request.getParameter("pid") == null) {
        out.println("Error in product");
    } else {
        try {
            p = filteredSearchController.searchProductByID(request.getParameter("pid"));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute(Constants.PRODUCT, p);
    }

%>


<!DOCTYPE HTML>
<html>
<head>
    <title>Product details</title>
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

    <%!
        ManageFeedbackController manageFeedbackController = ManageFeedbackController.getInstance();
    %>


</head>
<body>
<!--header-->
<%@ include file="header_menu.jsp" %>


<%
    if (request.getParameter("submit_add_to_cart") != null) {

        if (shoppingCartController.addProduct(request, p)) {
            response.sendRedirect("wishlist.jsp"); //error page
        } else {
            response.sendRedirect("single.jsp?pid=" + p.getId() + "&option=alreadyInCart"); //error page
        }

    }
%>

<!--header-->
<div class="content">
    <div class="single">
        <div class="container">
            <div class="single-grids">


                <!-- The popup -->
                <div id="myModal_error" class="modal">

                    <!-- Modal content -->
                    <div class="modal-content">
                        <span class="close_error">&times;</span>
                        <div align="center"><p>Product already in cart</p>
                        </div>
                    </div>

                </div>


                <script>
                    // Get the modal
                    var modal_error = document.getElementById('myModal_error');

                    // Get the <span> element that closes the modal
                    var span_error = document.getElementsByClassName("close_error")[0];

                    // When the user clicks on <span> (x), close the modal
                    span_error.onclick = function () {
                        modal_error.style.display = "none";
                    }

                    // When the user clicks anywhere outside of the modal, close it
                    window.onclick = function (event) {
                        if (event.target == modal_error) {
                            modal_error.style.display = "none";
                        }
                    }
                </script>


                <script type="text/javascript"
                        src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
                <script type="text/javascript">
                    $(document).ready(function () {
                        var url = window.location.href;
                        option = url.match(/option=(.*)/)[1];
                        if (option == 'alreadyInCart') {
                            showDiv_error();
                        }
                    });
                    function showDiv_error() {
                        modal.style.display = "block";
                    }
                </script>


                <div class="col-md-4 single-grid">
                    <div class="flexslider">
                        <ul class="slides">
                            <li data-thumb="<%= p.getPicture() %>">
                                <div class="thumb-image"><img src="<%= p.getPicture() %>" data-imagezoom="true"
                                                              class="img-responsive"></div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 single-grid simpleCart_shelfItem">
                    <h3><%= p.getName() %>
                    </h3>
                    <p><%= p.getDescription() %>
                    </p>

                    <div class="galry">
                        <div class="prices">
                            <h5 class="item_price"><%= p.getPrice() %>
                            </h5>
                        </div>
                        <div class="rating">
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                            <span>☆</span>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <br><br>


                    <form id="submit_add_to_cart" action="" method="post">

                        <a class="acount-btn" onclick="document.getElementById('submit_add_to_cart').submit();"
                           style="cursor: pointer;">Add to cart</a>
                        <input type="hidden" name="submit_add_to_cart"/>

                    </form>
                    <br><br>

                    <div class="tag">
                        <p>Category : <a href="#"> </a></p>
                        <p>Ketwords : <a href="#"> Lorem ipsum </a></p>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- collapse -->
    <div class="collpse">
        <div class="container">
            <div class="panel-group collpse" id="accordion" role="tablist" aria-multiselectable="true">


                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                               href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                reviews (<%= manageFeedbackController.retrieveProductReviews(p.getId()).size() %>)
                            </a>
                        </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel"
                         aria-labelledby="headingThree">
                        <div class="panel-body">
                            <% List reviewsList = manageFeedbackController.retrieveProductReviews(p.getId()); %>

                            <table id="table" class="table table-hover table-mc-light-blue">
                                <thead>
                                <tr>
                                    <th>User</th>
                                    <th>Rating</th>
                                    <th>Comment</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%
                                    if (reviewsList != null && reviewsList.size() > 0) {
                                        for (int i = 0; i < reviewsList.size(); i++) {
                                            Object aReviewsList = reviewsList.get(i);
                                            Review review = (Review) aReviewsList;
                                %>
                                <tr>
                                    <td data-title="ID"><%= review.getUsername()%>
                                    </td>
                                    <td data-title="Name"><%= review.getRating()%>
                                    </td>
                                    <td data-title="Link"><%= review.getComment()%>
                                    </td>
                                </tr>
                                <%
                                        }
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingFour">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                               href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                help
                            </a>
                        </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel"
                         aria-labelledby="headingFour">
                        <div class="panel-body">
                            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad
                            squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa
                            nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid
                            single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft
                            beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice
                            lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you
                            probably haven't heard of them accusamus labore sustainable VHS.
                        </div>
                    </div>
                </div>
                <br><br><br>

            </div>
        </div>
    </div>
    <!-- collapse -->

</div>
<%@ include file="email_subscription_toolbar.jsp" %>

<!--footer-->
<%@ include file="footer_menu.jsp" %>

<!--footer-->

</body>
</html>