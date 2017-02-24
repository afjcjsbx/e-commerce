<%@ page import="com.afjcjsbx.eshop.controller.shoppingcart.ShoppingCartController" %>
<%@ page import="com.afjcjsbx.eshop.entity.login.Guest" %>
<%@ page import="com.afjcjsbx.eshop.entity.login.Producer" %>
<%@ page import="com.afjcjsbx.eshop.enums.Roles" %>
<%@ page import="com.afjcjsbx.eshop.entity.login.AbstractUser" %>
<%--
  Created by IntelliJ IDEA.
  Guest: afjcjsbx
  Date: 11/01/17
  Time: 00:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    ShoppingCartController shoppingCartController = new ShoppingCartController();

    AbstractUser u;

    if (session.getAttribute("currentSessionUser") != null) {
        u = (AbstractUser) session.getAttribute("currentSessionUser");
    } else {
        u = new Guest();
    }
%>

<!-- The popup -->
<div id="myModal" class="modal">

    <!-- Modal content -->
    <div class="modal-content-login">
        <span class="close">&times;</span>


        <div class="login-right">
            <h2>Login</h2>
            <br>
            <p><b>I'm already an ESHOP user</b><br>Enter your e-mail address and password to log into the website.</p>
            <form action="login">
                <input type="text" name="email">
                <br><br>
                <input type="password" name="password">
                <br><br>
                <a class="forgot" href="#">Forgot Your Password?</a>
                <br>
                <br>
                <div class="contact-right">
                    <input type="submit" value="Login">
                </div>

            </form>


            <h2>Registration</h2>
            <br>
            <p><b>I want to be a ESHOP user</b><br>
                If you still don't have an user account, use this option to access the Registration form.</p>
            <form action="registration.jsp">
                <div class="contact-right">

                    <input type="submit" value="Create Account">
                </div>
            </form>


        </div>


    </div>
</div>


<script>
    // Get the modal
    var modal = document.getElementById('myModal');

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

    function showDiv() {
        modal.style.display = "block";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>


<!--header-->
<div class="header">


    <div class="header-top">
        <div class="container">


            <div class="lang_list">
                <select tabindex="4" class="dropdown1">
                    <option value="English" class="label" value="">English</option>
                </select>
            </div>

            <div class="top-right">

                <ul>

                    <li class="text">

                        <% if (u.getType() == Roles.GUEST) { %>
                        <a href="javascript:showDiv();">login</a>
                        <% } else { %>

                        <div class="dropdown">
                            <button class="dropbtn"><%= u.getUsername().toUpperCase() %>
                            </button>

                            <div class="dropdown-content">
                                <% if (u.getType() == Roles.PRODUCER) { %>
                                <a href="insert_product.jsp">Sell a product</a>
                                <% } %>
                                <a href="user_profile.jsp">Profile</a>
                                <a href="logout">Logout</a>

                            </div>
                        </div>
                        <% } %>
                    </li>


                    <li>
                        <div class="cart box_1">
                            <a href="shoppingbag.jsp">
                                <span class="simpleCart_total"> <% out.print(shoppingCartController.getCartPrice(request)); %> </span>
                                (<span id="simpleCart_quantity"
                                       class="simpleCart_quantity"><% out.print(shoppingCartController.productCount(request)); %></span>)
                            </a>
                            <div class="clearfix"></div>
                        </div>
                    </li>


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
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <h1 class="navbar-brand"><a href="index.jsp">Eshop</a></h1>
                    </div>
                    <!--/.navbar-header-->

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="index.jsp">Home</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Electronics<b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list1" href="products.jsp">Cell Phones & Accessories</a>
                                                </li>
                                                <li><a class="list1" href="products.jsp">Cameras & Photo</a></li>
                                                <li><a class="list1" href="products.jsp">Computers & Tablets</a></li>
                                                <li><a class="list1" href="products.jsp">TV & Home Theater</a></li>
                                                <li><a class="list1" href="products.jsp">Video Games & Consoles</a></li>
                                            </ul>
                                        </div>

                                    </div>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Motors<b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list1" href="products.jsp">Vehicles</a></li>
                                                <li><a class="list1" href="products.jsp">Cars & Trucks</a></li>
                                                <li><a class="list1" href="products.jsp">Motorcycles</a></li>
                                                <li><a class="list1" href="products.jsp">Parts & Accessories</a></li>
                                                <li><a class="list1" href="products.jsp">Car & Truck Parts</a></li>
                                                <li><a class="list1" href="products.jsp">Motorcycle Parts</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                </ul>
                            </li>


                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Fashion<b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list1" href="products.jsp">Women's Clothing</a></li>
                                                <li><a class="list1" href="products.jsp">Women's Shoes</a></li>
                                                <li><a class="list1" href="products.jsp">Men's Clothing</a></li>
                                                <li><a class="list1" href="products.jsp">Men's Shoes</a></li>
                                                <li><a class="list1" href="products.jsp">Handbags & Accessories</a></li>
                                                <li><a class="list1" href="products.jsp">Luxury Handbags</a></li>

                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list1" href="products.jsp">Kids & Baby</a></li>
                                                <li><a class="list1" href="products.jsp">Jewelry</a></li>
                                                <li><a class="list1" href="products.jsp">Watches</a></li>
                                                <li><a class="list1" href="products.jsp">Beauty</a></li>
                                                <li><a class="list1" href="products.jsp">Health</a></li>
                                            </ul>
                                        </div>

                                    </div>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Music<b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu multi-column columns-3">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list1" href="products.jsp">Guitars</a></li>
                                                <li><a class="list1" href="products.jsp">Pro-Audio</a></li>
                                                <li><a class="list1" href="products.jsp">Vinyl, CDs, & More</a></li>
                                                <li><a class="list1" href="products.jsp">Orchestra & Band</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list1" href="products.jsp">Drums</a></li>
                                                <li><a class="list1" href="products.jsp">DJ</a></li>
                                                <li><a class="list1" href="products.jsp">Concert Tickets</a></li>
                                                <li><a class="list1" href="products.jsp">Bass Guitars</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-sm-4">
                                            <ul class="multi-column-dropdown">
                                                <li><a class="list1" href="products.jsp">Amps</a></li>
                                                <li><a class="list1" href="products.jsp">Effects & Pedals</a></li>
                                                <li><a class="list1" href="products.jsp">Musical Instruments</a></li>
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


            <!-- search-scripts -->
            <script src="js/classie.js"></script>
            <script src="js/uisearch.js"></script>
            <script>
                new UISearch(document.getElementById('sb-search'));
            </script>
            <!-- //search-scripts -->
            <div class="clearfix"></div>

        </div>
    </div>
</div>

