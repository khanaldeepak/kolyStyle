<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Samima
  Date: 1/10/2017
  Time: 8:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>ProjectJava</title>



    <%--Jquery--%>
    <script src="<c:url value="/resources/js/jquery-3.1.1.min.js"/>"></script>
    <%--<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>--%>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Carousel CSS -->
    <%--<link href="<c:url value="/resources/css/carousel.css"/>" rel="stylesheet">--%>
    <!-- Main Theme CSS -->
    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">


    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
    <!-- CSS Part Start-->
    <link href="<c:url value="/resources/css/stylesheet.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/slideshow.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/css/flexslider.css"/>" rel="stylesheet">
    <link href="<c:url value="/resources/js/colorbox/colorbox.css"/>" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- CSS Part End-->
    <!-- JS Part Start-->
    <%--<script src="<c:url value="/resources/js/jquery-1.7.1.min.js"/>"></script>--%>
    <script src="<c:url value="/resources/js/jquery.nivo.slider.pack.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.flexslider.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.easing-1.3.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.jcarousel.min.js"/>"></script>
    <script src="<c:url value="/resources/js/colorbox/jquery.colorbox-min.js"/>"></script>
    <script src="<c:url value="/resources/js/tabs.js"/>"></script>
    <script src="<c:url value="/resources/js/cloud_zoom.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.dcjqaccordion.js"/>"></script>
    <script src="<c:url value="/resources/js/custom.js"/>"></script>
    <script src="<c:url value="/resources/js/html5.js"/>"></script>
    <script src="<c:url value="/resources/js/validation.js"/>"></script>

    <!-- JS Part End-->
    <!-- Google Fonts (Droid Sans) Start -->
    <link href='//fonts.googleapis.com/css?family=Droid+Sans&v1' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=&v1' rel='stylesheet' type='text/css'>
    <!-- Google Fonts (Droid Sans) End -->


</head>
<!-- NAVBAR-->

<body>
<div class="wrapper-box">
    <div class="main-wrapper">
        <!--Header Part Start-->
        <header id="header">
            <div class="htop">
                <div id="language"> <span>Language<b></b></span>
                    <ul>
                        <li><a title="English"><img src="<c:url value="/resources/image/flags/gb.png"/>" alt="English" />English</a></li>
                        <li><a title="Bangla"><img src="<c:url value="/resources/image/flags/tr.png"/>" alt="Bangla" />Bangla</a></li>
                    </ul>
                </div>
                <div id="currency"> <span>Currency<b></b></span>
                    <ul>
                        <li> <a title="Euro">€ - Euro</a> </li>
                        <li> <a title="Pound Sterling">£ - Pound Sterling</a> </li>
                        <li> <a title="US Dollar"><b>$ - US Dollar</b></a> </li>
                    </ul>
                </div>
                <div class="links">

                    <c:if test="${pageContext.request.userPrincipal.name != null}">
                        <a>Welcome: ${pageContext.request.userPrincipal.name}</a>
                        <a href="<c:url value="/j_spring_security_logout"/>">Log Out</a>

                        <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                            <a href="<c:url value="/customer/cart"/>">Cart</a>
                        </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                            <a href="<c:url value="/admin"/>">Admin</a>
                        </c:if>
                    </c:if>
                    <c:if test="${pageContext.request.userPrincipal.name == null}">
                        <a href="<c:url value="/login"/> ">Login</a>
                        <a href="<c:url value="/register"/>">Register</a>
                    </c:if>



                    <a href="#" id="wishlist-total">Wish List (0)</a> <a href="<c:url value="/customer"/>">My Account</a>
                    <a href="checkout.html">Checkout</a>

                </div>
            </div>
            <section class="hsecond">
                <div id="logo"><a href="/realtorsNepal/"><img src="<c:url value="/resources/image/logo.png"/>" title="Kolystyle" alt="Kolystyle" /></a></div>
                <div id="search">
                    <div class="button-search"></div>
                    <input type="text" name="search" placeholder="Search" value="" />
                </div>
                <!--Mini Shopping Cart Start-->
                <section id="cart">
                    <div class="heading">
                        <h4><img width="32" height="32" alt="" src="<c:url value="/resources/image/cart-bg.png"/>"></h4>
                        <a><span id="cart-total">2 item(s) - $710.18</span></a> </div>





                    <div class="content">
                        <div class="mini-cart-info">
                            <table>
                                <tr>
                                    <td class="image"><a href="product.html"><img src="<c:url value="/resources/image/product/Jeep-Casual-Shoes-210x210.jpg"/>" alt="Lotto Sports Shoes" title="Lotto Sports Shoes" /></a></td>
                                    <td class="name"><a href="product.html">Lotto Sports Shoes</a></td>
                                    <td class="quantity">x&nbsp;1</td>
                                    <td class="total">$589.50</td>
                                    <td class="remove"><img src="<c:url value="/resources/image/remove-small.png"/>" alt="Remove" title="Remove" /></td>
                                </tr>
                                <tr>
                                    <td class="image"><a href="product.html"><img src="<c:url value="/resources/image/product/iphone_1-200x200.jpg"/>" alt="iPhone 4s" title="iPhone 4s" /></a></td>
                                    <td class="name"><a href="product.html">iPhone 4s</a></td>
                                    <td class="quantity">x&nbsp;1</td>
                                    <td class="total">$120.68</td>
                                    <td class="remove"><img src="<c:url value="/resources/image/remove-small.png"/>" alt="Remove" title="Remove" /></td>
                                </tr>
                            </table>
                        </div>
                        <div class="mini-cart-total">
                            <table>
                                <tr>
                                    <td class="right"><b>Sub-Total:</b></td>
                                    <td class="right">$601.00</td>
                                </tr>
                                <tr>
                                    <td class="right"><b>Eco Tax (-2.00):</b></td>
                                    <td class="right">$4.00</td>
                                </tr>
                                <tr>
                                    <td class="right"><b>VAT (17.5%):</b></td>
                                    <td class="right">$105.18</td>
                                </tr>
                                <tr>
                                    <td class="right"><b>Total:</b></td>
                                    <td class="right">$710.18</td>
                                </tr>
                            </table>
                        </div>
                        <div class="checkout"><a class="button" href="cart.html">View Cart</a> &nbsp; <a class="button" href="checkout.html">Checkout</a></div>
                    </div>
                </section>
                <!--Mini Shopping Cart End-->
                <div class="clear"></div>
            </section>


            <!--Top Menu(Horizontal Categories) Start-->
            <nav id="menu">
                <ul>
                    <li class="home"><a title="Home" href="index.html"><span>Home</span></a></li>
                    <li class="categories_hor"><a>Categories</a>
                        <div>
                            <div class="column"> <a href="<c:url value="/product/productList/mens/kurthi"/> ">Electronics</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Laptops (0)</a></li>
                                        <li><a href="category.html">Desktops (0)</a></li>
                                        <li><a href="category.html">Components (1)</a></li>
                                        <li><a href="category.html">Software (1)</a></li>
                                        <li><a href="category.html">Phones &amp; PDAs (4)</a></li>
                                        <li><a href="category.html">Cameras (2)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Jewellery</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Children's Jewellery (0)</a></li>
                                        <li><a href="category.html">Men's Jewellery (1)</a></li>
                                        <li><a href="category.html">Women's Jewellery (0)</a></li>
                                        <li><a href="category.html">Sample Test (0)</a></li>
                                        <li><a href="category.html">Sample Test11 (0)</a></li>
                                        <li><a href="category.html">Sample Test12 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Shoes</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Children's Shoes (1)</a></li>
                                        <li><a href="category.html">Men's Shoes (2)</a></li>
                                        <li><a href="category.html">Women's Shoes (1)</a></li>
                                        <li><a href="category.html">Test Sample (0)</a></li>
                                        <li><a href="category.html">Test Sample1 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Clothing</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Men (1)</a></li>
                                        <li><a href="category.html">Women (1)</a></li>
                                        <li><a href="category.html">Boys (0)</a></li>
                                        <li><a href="category.html">Girls (0)</a></li>
                                        <li><a href="category.html">Accessories (0)</a></li>
                                        <li><a href="category.html">Sample Test21 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Kids</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Toys Kids (0)</a></li>
                                        <li><a href="category.html">Games (1)</a></li>
                                        <li><a href="category.html">Sample Test22 (0)</a></li>
                                        <li><a href="category.html">Sample Test15 (1)</a></li>
                                        <li><a href="category.html">Sample Kids (1)</a></li>
                                        <li><a href="category.html">Sample Test6 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Watches</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Women's Watches (1)</a></li>
                                        <li><a href="category.html">Men's Watches (0)</a></li>
                                        <li><a href="category.html">Children's Watches (1)</a></li>
                                        <li><a href="category.html">Sample16 (0)</a></li>
                                        <li><a href="category.html">Sample17 (0)</a></li>
                                        <li><a href="category.html">test 18 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Sports</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Women's Sports (1)</a></li>
                                        <li><a href="category.html">Children's Sports (0)</a></li>
                                        <li><a href="category.html">Men's Sports (1)</a></li>
                                        <li><a href="category.html">test 7 (0)</a></li>
                                        <li><a href="category.html">Sample 8 (0)</a></li>
                                        <li><a href="category.html">test 9 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Health</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Sample Test1 (1)</a></li>
                                        <li><a href="category.html">Sample Test2 (0)</a></li>
                                        <li><a href="category.html">test 20 (0)</a></li>
                                        <li><a href="category.html">test 21 (0)</a></li>
                                        <li><a href="category.html">test 22 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Furniture</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Bedrooms Furniture (0)</a></li>
                                        <li><a href="category.html">Kidsrooms furniture (0)</a></li>
                                        <li><a href="category.html">Kitchen Furniture (1)</a></li>
                                        <li><a href="category.html">Showcase Furniture (0)</a></li>
                                        <li><a href="category.html">Table Furniture (1)</a></li>
                                        <li><a href="category.html">Wall Furniture (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"><a href="category.html">Books</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Audio Books (1)</a></li>
                                        <li><a href="category.html">Comedy Book (1)</a></li>
                                        <li><a href="category.html">Comics Books (0)</a></li>
                                        <li><a href="category.html">Computer Book (1)</a></li>
                                        <li><a href="category.html">Cookies Books (0)</a></li>
                                        <li><a href="category.html">English Books (1)</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="categories_hor"><a>Categories</a>
                        <div>
                            <div class="column"> <a href="category.html">Electronics</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Laptops (0)</a></li>
                                        <li><a href="category.html">Desktops (0)</a></li>
                                        <li><a href="category.html">Components (1)</a></li>
                                        <li><a href="category.html">Software (1)</a></li>
                                        <li><a href="category.html">Phones &amp; PDAs (4)</a></li>
                                        <li><a href="category.html">Cameras (2)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Jewellery</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Children's Jewellery (0)</a></li>
                                        <li><a href="category.html">Men's Jewellery (1)</a></li>
                                        <li><a href="category.html">Women's Jewellery (0)</a></li>
                                        <li><a href="category.html">Sample Test (0)</a></li>
                                        <li><a href="category.html">Sample Test11 (0)</a></li>
                                        <li><a href="category.html">Sample Test12 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Shoes</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Children's Shoes (1)</a></li>
                                        <li><a href="category.html">Men's Shoes (2)</a></li>
                                        <li><a href="category.html">Women's Shoes (1)</a></li>
                                        <li><a href="category.html">Test Sample (0)</a></li>
                                        <li><a href="category.html">Test Sample1 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Clothing</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Men (1)</a></li>
                                        <li><a href="category.html">Women (1)</a></li>
                                        <li><a href="category.html">Boys (0)</a></li>
                                        <li><a href="category.html">Girls (0)</a></li>
                                        <li><a href="category.html">Accessories (0)</a></li>
                                        <li><a href="category.html">Sample Test21 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Kids</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Toys Kids (0)</a></li>
                                        <li><a href="category.html">Games (1)</a></li>
                                        <li><a href="category.html">Sample Test22 (0)</a></li>
                                        <li><a href="category.html">Sample Test15 (1)</a></li>
                                        <li><a href="category.html">Sample Kids (1)</a></li>
                                        <li><a href="category.html">Sample Test6 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Watches</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Women's Watches (1)</a></li>
                                        <li><a href="category.html">Men's Watches (0)</a></li>
                                        <li><a href="category.html">Children's Watches (1)</a></li>
                                        <li><a href="category.html">Sample16 (0)</a></li>
                                        <li><a href="category.html">Sample17 (0)</a></li>
                                        <li><a href="category.html">test 18 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Sports</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Women's Sports (1)</a></li>
                                        <li><a href="category.html">Children's Sports (0)</a></li>
                                        <li><a href="category.html">Men's Sports (1)</a></li>
                                        <li><a href="category.html">test 7 (0)</a></li>
                                        <li><a href="category.html">Sample 8 (0)</a></li>
                                        <li><a href="category.html">test 9 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Health</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Sample Test1 (1)</a></li>
                                        <li><a href="category.html">Sample Test2 (0)</a></li>
                                        <li><a href="category.html">test 20 (0)</a></li>
                                        <li><a href="category.html">test 21 (0)</a></li>
                                        <li><a href="category.html">test 22 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Furniture</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Bedrooms Furniture (0)</a></li>
                                        <li><a href="category.html">Kidsrooms furniture (0)</a></li>
                                        <li><a href="category.html">Kitchen Furniture (1)</a></li>
                                        <li><a href="category.html">Showcase Furniture (0)</a></li>
                                        <li><a href="category.html">Table Furniture (1)</a></li>
                                        <li><a href="category.html">Wall Furniture (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"><a href="category.html">Books</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Audio Books (1)</a></li>
                                        <li><a href="category.html">Comedy Book (1)</a></li>
                                        <li><a href="category.html">Comics Books (0)</a></li>
                                        <li><a href="category.html">Computer Book (1)</a></li>
                                        <li><a href="category.html">Cookies Books (0)</a></li>
                                        <li><a href="category.html">English Books (1)</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li><a target="_blank" href="#">Headers</a>
                        <div>
                            <ul>
                                <li><a href="index.html">Header Style 1</a></li>
                                <li><a href="header-footer-2.html">Header Style 2</a></li>
                                <li><a href="header-footer-3.html">Header Style 3</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a target="_blank" href="#">Menus</a>
                        <div>
                            <ul>
                                <li><a href="index.html">Horizontal Categories</a></li>
                                <li><a href="header-footer-2.html">Vertical Categories</a></li>
                                <li><a href="header-footer-3.html">Simple Categories</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a target="_blank" href="#">Sliders</a>
                        <div>
                            <ul>
                                <li><a href="index.html">Nivo Slider</a></li>
                                <li><a href="header-footer-2.html">Flex Slider</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a target="_blank" href="#">Footers</a>
                        <div>
                            <ul>
                                <li><a href="index.html">Footer Style 1</a></li>
                                <li><a href="header-footer-2.html">Footer Style 2</a></li>
                                <li><a href="header-footer-3.html">Footer Style 3</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="">Custom Block</a>
                        <div class="custom_block">
                            <ul>
                                <li>
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 500px;">
                                        <tbody>
                                        <tr>
                                            <td><h3>You can insert any content here.</h3>
                                                <p>&nbsp;</p></td>
                                        </tr>
                                        <tr>
                                            <td><strong><img alt="responsive" src="<c:url value="/resources/image/product/responsive.jpg"/>" style="width: 250px; height: 150px; border-width: 0px; border-style: solid; float: left; margin-left: 10px; margin-right: 10px;" />Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing.</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li><a>My Account</a>
                        <div>
                            <ul>
                                <li><a href="#">My Account</a></li>
                                <li><a href="#">Order History</a></li>
                                <li><a href="#" id="wishlist-total">Wish List (0)</a></li>
                                <li><a href="#">Newsletter</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a>Information</a>
                        <div>
                            <ul>
                                <li><a href="about-us.html">About Us</a></li>
                                <li><a href="about-us.html">Delivery Information</a></li>
                                <li><a href="about-us.html">Privacy Policy</a></li>
                                <li><a href="elements.html">Elements</a></li>
                            </ul>
                        </div>
                    </li>
                    <li><a href="contact-us.html">Contact Us</a></li>
                </ul>
            </nav>
            <!--Top Menu(Horizontal Categories) End-->
            <!-- Mobile Menu Start-->
            <nav id="menu" class="m-menu"> <span>Menu</span>
                <ul>
                    <li class="categories"><a>Categories</a>
                        <div>
                            <div class="column"> <a href="category.html">Electronics</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Laptops (0)</a></li>
                                        <li><a href="category.html">Desktops (0)</a></li>
                                        <li><a href="category.html">Components (1)</a></li>
                                        <li><a href="category.html">Software (1)</a></li>
                                        <li><a href="category.html">Phones &amp; PDAs (4)</a></li>
                                        <li><a href="category.html">Cameras (2)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Jewellery</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Children's Jewellery (0)</a></li>
                                        <li><a href="category.html">Men's Jewellery (1)</a></li>
                                        <li><a href="category.html">Women's Jewellery (0)</a></li>
                                        <li><a href="category.html">Sample Test (0)</a></li>
                                        <li><a href="category.html">Sample Test11 (0)</a></li>
                                        <li><a href="category.html">Sample Test12 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Shoes</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Children's Shoes (1)</a></li>
                                        <li><a href="category.html">Men's Shoes (2)</a></li>
                                        <li><a href="category.html">Women's Shoes (1)</a></li>
                                        <li><a href="category.html">Test Sample (0)</a></li>
                                        <li><a href="category.html">Test Sample1 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Clothing</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Men (1)</a></li>
                                        <li><a href="category.html">Women (1)</a></li>
                                        <li><a href="category.html">Boys (0)</a></li>
                                        <li><a href="category.html">Girls (0)</a></li>
                                        <li><a href="category.html">Accessories (0)</a></li>
                                        <li><a href="category.html">Sample Test21 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Kids</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Toys Kids (0)</a></li>
                                        <li><a href="category.html">Games (1)</a></li>
                                        <li><a href="category.html">Sample Test22 (0)</a></li>
                                        <li><a href="category.html">Sample Test15 (1)</a></li>
                                        <li><a href="category.html">Sample Kids (1)</a></li>
                                        <li><a href="category.html">Sample Test6 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Watches</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Women's Watches (1)</a></li>
                                        <li><a href="category.html">Men's Watches (0)</a></li>
                                        <li><a href="category.html">Children's Watches (1)</a></li>
                                        <li><a href="category.html">Sample16 (0)</a></li>
                                        <li><a href="category.html">Sample17 (0)</a></li>
                                        <li><a href="category.html">test 18 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Sports</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Women's Sports (1)</a></li>
                                        <li><a href="category.html">Children's Sports (0)</a></li>
                                        <li><a href="category.html">Men's Sports (1)</a></li>
                                        <li><a href="category.html">test 7 (0)</a></li>
                                        <li><a href="category.html">Sample 8 (0)</a></li>
                                        <li><a href="category.html">test 9 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Health</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Sample Test1 (1)</a></li>
                                        <li><a href="category.html">Sample Test2 (0)</a></li>
                                        <li><a href="category.html">test 20 (0)</a></li>
                                        <li><a href="category.html">test 21 (0)</a></li>
                                        <li><a href="category.html">test 22 (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"> <a href="category.html">Furniture</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Bedrooms Furniture (0)</a></li>
                                        <li><a href="category.html">Kidsrooms furniture (0)</a></li>
                                        <li><a href="category.html">Kitchen Furniture (1)</a></li>
                                        <li><a href="category.html">Showcase Furniture (0)</a></li>
                                        <li><a href="category.html">Table Furniture (1)</a></li>
                                        <li><a href="category.html">Wall Furniture (0)</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="column"><a href="category.html">Books</a>
                                <div>
                                    <ul>
                                        <li><a href="category.html">Audio Books (1)</a></li>
                                        <li><a href="category.html">Comedy Book (1)</a></li>
                                        <li><a href="category.html">Comics Books (0)</a></li>
                                        <li><a href="category.html">Computer Book (1)</a></li>
                                        <li><a href="category.html">Cookies Books (0)</a></li>
                                        <li><a href="category.html">English Books (1)</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </nav>
            <!-- Mobile Menu End-->
        </header>
        <!--Header Part End-->