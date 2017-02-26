<%@ page import="com.afjcjsbx.eshop.controller.search.FilteredSearchController" %>
<%@ page import="com.afjcjsbx.eshop.entity.catalogue.Product" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.List" %>
<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<jsp:useBean id="searchBean" scope="session"
             class="com.afjcjsbx.eshop.entity.search.SearchBean"/>

<jsp:setProperty name="searchBean" property="*"/>

<%

    if (request.getParameter("search") != null) {

        if(request.getParameter("checkbox_discount") != null){
            searchBean.setMinDiscount(Integer.parseInt(request.getParameter("checkbox_discount")));
        }

        if (searchBean.validate()) {
            FilteredSearchController filteredSearchController = new FilteredSearchController();
            try {
                searchBean.setResult(filteredSearchController.startResearch(searchBean));

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

%>


<!DOCTYPE HTML>
<html>
<head>
    <title>Swim Wear a E-Commerce online Shopping Category Flat Bootstrap Responsive Website Template | Products ::
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

    <!-- the jScrollPane script -->
    <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode">
        $(function () {
            $('.scroll-pane').jScrollPane();
        });
    </script>
    <!-- //the jScrollPane script -->
    <link href="css/form.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- the mousewheel plugin -->
    <script type="text/javascript" src="js/jquery.mousewheel.js"></script>
</head>
<body>
<!--header-->
<%@ include file="header_menu.jsp" %>
<!--header-->
<!---728x90--->
<div class="content">

    <form id="search_form" action="products.jsp">

        <div class="subscribe">
            <div class="container">
                <div class="subscribe1">
                    <h4>Search in eshop</h4>
                </div>
                <div class="subscribe2">
                    <input type="text" class="text" name="search" value="<%= request.getParameter("search") %>"
                           onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
                    <input type="submit" value="SEARCH">
                </div>
                <div class="clearfix"></div>
            </div>
        </div>

        <div class="product-model">


            <div class="main">


                <div class="top"></div>
                <div class="left">


                    <div class="rsidebar span_1_of_left">
                        <section class="sky-form">

                            <div class="product_right">
                                <h4 class="m_2"><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Categories
                                </h4>
                                <div class="tab1">
                                    <ul class="place">
                                        <li class="sort">All Clothing</li>
                                        <li class="by"><img src="images/do.png" alt=""></li>
                                        <div class="clearfix"></div>
                                    </ul>
                                    <div class="single-bottom">
                                        <a href="#"><p>Sports</p></a>
                                        <a href="#"><p>Gym</p></a>
                                        <a href="#"><p>Bikins</p></a>
                                        <a href="#"><p>shorts</p></a>
                                    </div>
                                </div>
                                <div class="tab2">
                                    <ul class="place">
                                        <li class="sort">All women Clothing</li>
                                        <li class="by"><img src="images/do.png" alt=""></li>
                                        <div class="clearfix"></div>
                                    </ul>
                                    <div class="single-bottom">
                                        <a href="#"><p>Bikins</p></a>
                                        <a href="#"><p>Shorts</p></a>
                                    </div>
                                </div>
                                <div class="tab3">
                                    <ul class="place">
                                        <li class="sort">All Men Clothing</li>
                                        <li class="by"><img src="images/do.png" alt=""></li>
                                        <div class="clearfix"></div>
                                    </ul>
                                    <div class="single-bottom">
                                        <a href="#"><p>Sports</p></a>
                                    </div>
                                </div>
                                <div class="tab4">
                                    <ul class="place">
                                        <li class="sort">All Kids</li>
                                        <li class="by"><img src="images/do.png" alt=""></li>
                                        <div class="clearfix"></div>
                                    </ul>
                                    <div class="single-bottom">
                                        <a href="#"><p>Standing Lamps</p></a>
                                        <a href="#"><p>shorts</p></a>
                                        <a href="#"><p>Bikini</p></a>
                                    </div>
                                </div>
                                <!--script-->
                                <script>
                                    $(document).ready(function () {
                                        $(".tab1 .single-bottom").hide();
                                        $(".tab2 .single-bottom").hide();
                                        $(".tab3 .single-bottom").hide();
                                        $(".tab4 .single-bottom").hide();
                                        $(".tab5 .single-bottom").hide();

                                        $(".tab1 ul").click(function () {
                                            $(".tab1 .single-bottom").slideToggle(300);
                                            $(".tab2 .single-bottom").hide();
                                            $(".tab3 .single-bottom").hide();
                                            $(".tab4 .single-bottom").hide();
                                            $(".tab5 .single-bottom").hide();
                                        })
                                        $(".tab2 ul").click(function () {
                                            $(".tab2 .single-bottom").slideToggle(300);
                                            $(".tab1 .single-bottom").hide();
                                            $(".tab3 .single-bottom").hide();
                                            $(".tab4 .single-bottom").hide();
                                            $(".tab5 .single-bottom").hide();
                                        })
                                        $(".tab3 ul").click(function () {
                                            $(".tab3 .single-bottom").slideToggle(300);
                                            $(".tab4 .single-bottom").hide();
                                            $(".tab5 .single-bottom").hide();
                                            $(".tab2 .single-bottom").hide();
                                            $(".tab1 .single-bottom").hide();
                                        })
                                        $(".tab4 ul").click(function () {
                                            $(".tab4 .single-bottom").slideToggle(300);
                                            $(".tab5 .single-bottom").hide();
                                            $(".tab3 .single-bottom").hide();
                                            $(".tab2 .single-bottom").hide();
                                            $(".tab1 .single-bottom").hide();
                                        })
                                        $(".tab5 ul").click(function () {
                                            $(".tab5 .single-bottom").slideToggle(300);
                                            $(".tab4 .single-bottom").hide();
                                            $(".tab3 .single-bottom").hide();
                                            $(".tab2 .single-bottom").hide();
                                            $(".tab1 .single-bottom").hide();
                                        })
                                    });
                                </script>
                                <!-- script -->
                            </div>
                        </section>

                        <section class="sky-form">
                            <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>DISCOUNTS</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">

                                    <label class="checkbox"><input type="checkbox" name="checkbox_discount" value="10"
                                                                   onchange="document.getElementById('search_form').submit()"><i></i>Up
                                        to 10%</label>

                                    <label class="checkbox"><input type="checkbox" name="checkbox_discount" value="20"
                                                                   onchange="document.getElementById('search_form').submit()"><i></i>Up
                                        to 20%</label>

                                    <label class="checkbox"><input type="checkbox" name="checkbox_discount" value="30"
                                                                   onchange="document.getElementById('search_form').submit()"><i></i>Up
                                        to 30%</label>

                                    <label class="checkbox"><input type="checkbox" name="checkbox_discount" value="40"
                                                                   onchange="document.getElementById('search_form').submit()"><i></i>Up
                                        to 40%</label>

                                    <label class="checkbox"><input type="checkbox" name="checkbox_discount" value="50"
                                                                   onchange="document.getElementById('search_form').submit()"><i></i>Up
                                        to 50%</label>

                                    <label class="checkbox"><input type="checkbox" name="checkbox_discount" value="60"
                                                                   onchange="document.getElementById('search_form').submit()"><i></i>Up
                                        to 60%</label>

                                    <label class="checkbox"><input type="checkbox" name="checkbox_discount" value="70"
                                                                   onchange="document.getElementById('search_form').submit()"><i></i>Up
                                        to 70%</label>

                                    <label class="checkbox"><input type="checkbox" name="checkbox_discount" value="80"
                                                                   onchange="document.getElementById('search_form').submit()"><i></i>Up
                                        to 80%</label>

                                    <label class="checkbox"><input type="checkbox" name="checkbox_discount" value="90"
                                                                   onchange="document.getElementById('search_form').submit()"><i></i>Up
                                        to 90%</label>

                                </div>
                            </div>
                        </section>

                        <section class="sky-form">
                            <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Price</h4>
                            <ul class="dropdown-menu1">
                                <li><a href="">
                                    <div id="slider-range"></div>
                                    <input type="text" id="amount"
                                           style="border: 0; font-weight: NORMAL;   font-family: 'Dosis-Regular';"/>
                                </a></li>
                            </ul>
                        </section>
                        <!---->
                        <script type="text/javascript" src="js/jquery-ui.min.js"></script>
                        <link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
                        <script type='text/javascript'>//<![CDATA[
                        $(window).load(function () {
                            $("#slider-range").slider({
                                range: true,
                                min: 0,
                                max: 9999,
                                values: [0, 9999],
                                slide: function (event, ui) {
                                    $("#amount").val("$" + ui.values[0] + " - $" + ui.values[1]);
                                }
                            });
                            $("#amount").val("$" + $("#slider-range").slider("values", 0) + " - $" + $("#slider-range").slider("values", 1));

                        });//]]>
                        </script>
                        <!---->


                        <section class="sky-form">
                            <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Type</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"
                                                                   checked=""><i></i>Alla (30)</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Amante
                                        (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Roxy
                                        (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>River Land
                                        (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Penny
                                        (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>N-Gal
                                        (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Penny
                                        (30)</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>N-Gal
                                        (30)</label>
                                </div>
                            </div>
                        </section>
                        <section class="sky-form">
                            <h4><span class="glyphicon glyphicon-minus" aria-hidden="true"></span>Brand</h4>
                            <div class="row row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"
                                                                   checked=""><i></i>Everyday</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Dorothy
                                        Perkins</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Vero Moda
                                    </label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nidhi
                                        Munim</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Omana
                                        Fashion</label>
                                    <label class="checkbox"><input type="checkbox"
                                                                   name="checkbox"><i></i>PrettySecrets</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Gold
                                        Medal</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Dorothy
                                        Perkins</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Vero Moda
                                    </label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nidhi
                                        Munim</label>
                                </div>
                            </div>
                        </section>
                    </div>

                </div>
                <div class="right">
                    <div class="container_products">


                        <%

                            if (searchBean.getResult() != null && searchBean.getResult().size() > 0) {

                                for (int i = 0; i < searchBean.getResult().size(); i++) {

                                    Product product = (Product) searchBean.getResult().get(i);

                        %>

                        <div class="product-grid" onclick="location.href='single.jsp?pid=<%= product.getId() %>';"
                             style="cursor: pointer;">
                            <div class="product-img b-link-stripe b-animate-go  thickbox">

                                <img src="<%= product.getPicture() %>" class="img-responsive" alt=""/>

                                <div class="product-info simpleCart_shelfItem">
                                    <div class="product-info-cust prt_name">
                                        <h4><%= product.getName() %>
                                        </h4>
                                        <span class="item_price"><%= product.getPrice() %></span>
                                        <div class="ofr">
                                            <p class="pric1">
                                                <del></del>
                                            </p>
                                            <p class="disc">[<%= product.getDiscountPercentage() %>% Off]</p>
                                        </div>
                                    </div>
                                    <div class="b-wrapper">
                                        <h4 class="b-animate b-from-left  b-delay03">
                                            <button> +</button>
                                        </h4>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>


                            </div>
                        </div>


                        <%
                                }
                            }
                        %>


                    </div>
                </div>
                <div class="clear"></div>
            </div>


        </div>

    </form>

    <br><br><br>

</div>


<!--


<!---->
<!-- purchase -->
<%@ include file="email_subscription_toolbar.jsp" %>


<!--footer-->
<%@ include file="footer_menu.jsp" %>
<!--footer-->


<!--footer-->

</body>
</html>
