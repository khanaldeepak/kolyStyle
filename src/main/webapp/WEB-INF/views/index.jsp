<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
        <div id="container"  ng-app="cartApp">
            <di id="content">
                <!-- Nivo Slider Start -->
                <section class="slider-wrapper">
                    <div id="slideshow" class="nivoSlider"> <a class="nivo-imageLink" href="http://themeforest.net/item/polishop-responsive-ecommerce-html-template/4410285?ref=harnishdesign"><img src="<c:url value="/resources/image/slider/slide-1.jpg"/>" alt="slide-1" /></a> <a class="nivo-imageLink" href="http://themeforest.net/item/polishop-responsive-ecommerce-html-template/4410285?ref=harnishdesign"><img src="<c:url value="/resources/image/slider/slide-2.jpg"/>" alt="slide-2" /></a> <a class="nivo-imageLink" href="http://themeforest.net/item/polishop-responsive-ecommerce-html-template/4410285?ref=harnishdesign"><img src="<c:url value="/resources/image/slider/slide-3.jpg"/>" alt="slide-3" /></a> </div>
                </section>
                <script type="text/javascript"><!--
                $(document).ready(function() {
                    $('#slideshow').nivoSlider();
                });
                --></script>
                <!-- Nivo Slider End-->
                <!-- Welcom Text Start-->
                <div class="welcome text-center"><i class="fa fa-link" aria-hidden="true"></i> FEATURED CATEGORIES <i class="fa fa-link" aria-hidden="true"></i></div>

                <!-- Product Categories Start-->
                <div class="row">
                <div class="col-md-12">

                    <div class="col-md-12 boxcontent">

                            <div class="col-md-4"> <a href="<c:url value="/product/productList?searchCondition=Kurthi"/>" role="button" class="category_inner"> <img class="zoom_image img-responsive" alt="" src="<c:url value="/resources/image/7.jpg"/>"> <span class="info_wrapper"> <h4 style="font-weight:normal;">Designer Anarkali Suit</h4> </span> </a> </div>

                            <div class="col-md-4"> <a href="<c:url value="/product/productList?searchCondition=Lehengas"/>" role="button" class="category_inner"> <img class="zoom_image img-responsive" alt="" src="<c:url value="/resources/image/8.jpg"/>"> <span class="info_wrapper"> <h4 style="font-weight:normal;">Designer Saree</h4> </span> </a> </div>


                            <div class="col-md-4"> <a href="<c:url value="/product/productList?searchCondition=Saree"/>" role="button" class="category_inner"> <img class="zoom_image img-responsive" alt="" src="<c:url value="/resources/image/9.jpg"/>"> <span class="info_wrapper"> <h4 style="font-weight:normal;">Designer Salwar Suit</h4> </span> </a> </div>



                    </div>
                </div>
</div>
                <!-- Product Categories End-->
                <!-- Featured Product Start-->
                <section class="box">
                    <div class="box-heading">Featured</div>
                    <div class="box-content">
                        <div class="box-product">
                            <div class="flexslider featured_carousel">
                                <ul class="slides slidercontainer">
<c:forEach items="${products}" var="product">
    <c:if test = "${product.listingType == 'Featured'}">


        <!---->
        <li class="col-md-3 col-sm-6 product-thumb">
            <div class="slide-inner">
            <div class="product-singleArea">
                <div class="product-img">
                    <div class="overlay"></div>                             <div class="overlay_${product.productId}">                                 <div class="addedtocart_${product.productId}">Added to cart</div>                             </div>
                    <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                        <img class="img-responsive primary_image" src="<c:url value="/resources/image/${product.productId}.png"/>" alt="${product.productName}" /></a>
                    <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                        <img class="img-responsive hover_image" src="<c:url value="/resources/image/${product.productId}.png"/>" alt="${product.productName}" /></a>
                    <div class="offer-nostock">new</div>
                    <div class="product-cart-area">
                        <div class="btn-others">
                            <ul>
                                <li><a href=""><i class="fa fa-heart-o"></i></a></li>
                                <li><a href=""><i class="fa fa-exchange"></i></a></li>
                                <li><a href="detail.html"><i class="fa fa-expand"></i></a></li>
                            </ul>
                        </div>
                        <div class="btn-add-to-cart cart-btn" ng-controller="cartCtrl">
                            <a href="" ng-click="addToCart('${product.productId}')">
                                <span class="glyphicon glyphicon-shopping-cart"></span>ADD TO CART
                            </a>
                        </div>
                        <style>
                            .addedtocart_${product.productId}{
                                color:#ffffff;
                                position: relative;
                                top:50px;
                                /*text-shadow: #ffffff;*/
                                font-weight: bold;
                                font-size: 24px;
                            }
                            .overlay_${product.productId} {
                                display:none;
                                bottom: 0;
                                height: 100%;
                                left: 0;
                                -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
                                filter: alpha(opacity=0);
                                opacity: 0.5;
                                padding: 5px;
                                position: absolute;
                                width: 100%;
                                background: #9a7d7d;
                            }

                        </style>
                    </div>
                </div>
                <div class="product-details">
                    <div class="product-title"><a href="<spring:url value="/product/viewProduct/${product.productId}" />">${product.productName}</a></div>
                    <div class="product-pd">
                        <div class="product-price">&pound;${product.productPrice}</div>
                        <div class="product-discount">-25%</div>
                    </div>
                    <div class="product-review">
                        <div class="star">
                            <span class="yes"><i class="fa fa-star"></i></span>
                            <span class="yes"><i class="fa fa-star"></i></span>
                            <span class="yes"><i class="fa fa-star"></i></span>
                            <span class="yes"><i class="fa fa-star"></i></span>
                            <span class="yes"><i class="fa fa-star"></i></span>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        </li>
        <!---->
    </c:if>
</c:forEach>


                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
                <script type="text/javascript">
                    (function() {
                        // store the slider in a local variable
                        var $window = $(window),
                                flexslider;

                        // tiny helper function to add breakpoints
                        function getGridSize() {
                            return (window.innerWidth < 320) ? 1 :
                                    (window.innerWidth < 600) ? 2 :
                                            (window.innerWidth < 800) ? 3 :
                                                    (window.innerWidth < 900) ? 4 : 5;
                        }
                        $window.on("load",function() {
                            $('#content .featured_carousel').flexslider({
                                animation: "slide",
                                animationLoop: false,
                                slideshow: false,
                                itemWidth: 210,
                                minItems: getGridSize(), // use function to pull in initial value
                                maxItems: getGridSize() // use function to pull in initial value
                            });
                        });
                    }());
                </script>
                <!-- Featured Product End-->
                <!-- Product Tab Start-->
                <section id="product-tab" class="product-tab">
                    <ul id="tabs" class="tabs">
                        <li><a href="#tab-latest">Latest</a></li>
                        <li><a href="#tab-bestseller">Bestseller</a></li>
                        <li><a href="#tab-special">Special</a></li>
                    </ul>
                    <div id="tab-latest" class="tab_content">
                        <div class="box-product">
                            <div class="flexslider latest_carousel_tab">
                                <ul class="slides">
                                    <c:forEach items="${products}" var="product">
                                        <c:if test = "${product.listingType == 'Latest'}">

                                            <!---->
                                            <li class="col-md-3 col-sm-6 product-thumb">
                                                <div class="slide-inner">
                                                    <div class="product-singleArea">
                                                        <div class="product-img">
                                                            <div class="overlay"></div>                             <div class="overlay_${product.productId}">                                 <div class="addedtocart_${product.productId}">Added to cart</div>                             </div>
                                                            <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                                                                <img class="img-responsive primary_image" src="<c:url value="/resources/image/${product.productId}.png"/>" alt="${product.productName}" /></a>
                                                            <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                                                                <img class="img-responsive hover_image" src="<c:url value="/resources/image/${product.productId}.png"/>" alt="${product.productName}" /></a>
                                                            <div class="offer-nostock">new</div>
                                                            <div class="product-cart-area">
                                                                <div class="btn-others">
                                                                    <ul>
                                                                        <li><a href=""><i class="fa fa-heart-o"></i></a></li>
                                                                        <li><a href=""><i class="fa fa-exchange"></i></a></li>
                                                                        <li><a href="detail.html"><i class="fa fa-expand"></i></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="btn-add-to-cart cart-btn" ng-controller="cartCtrl">
                                                                    <a href="" ng-click="addToCart('${product.productId}')">
                                                                        <span class="glyphicon glyphicon-shopping-cart"></span>ADD TO CART
                                                                    </a>
                                                                </div>
                                                                <style>
                                                                    .addedtocart_${product.productId}{
                                                                        color:#ffffff;
                                                                        position: relative;
                                                                        top:50px;
                                                                        /*text-shadow: #ffffff;*/
                                                                        font-weight: bold;
                                                                        font-size: 24px;
                                                                    }
                                                                    .overlay_${product.productId} {
                                                                        display:none;
                                                                        bottom: 0;
                                                                        height: 100%;
                                                                        left: 0;
                                                                        -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
                                                                        filter: alpha(opacity=0);
                                                                        opacity: 0.5;
                                                                        padding: 5px;
                                                                        position: absolute;
                                                                        width: 100%;
                                                                        background: #9a7d7d;
                                                                    }

                                                                </style>
                                                            </div>
                                                        </div>
                                                        <div class="product-details">
                                                            <div class="product-title"><a href="<spring:url value="/product/viewProduct/${product.productId}" />">${product.productName}</a></div>
                                                            <div class="product-pd">
                                                                <div class="product-price">&pound;${product.productPrice}</div>
                                                                <div class="product-discount">-25%</div>
                                                            </div>
                                                            <div class="product-review">
                                                                <div class="star">
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!---->
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="tab-bestseller" class="tab_content">
                        <div class="box-product">
                            <div class="flexslider bestseller_carousel_tab">
                                <ul class="slides">
                                    <c:forEach items="${products}" var="product">
                                        <c:if test = "${product.listingType == 'BestSeller'}">

                                            <!---->
                                            <li class="col-md-3 col-sm-6 product-thumb">
                                                <div class="slide-inner">
                                                    <div class="product-singleArea">
                                                        <div class="product-img">
                                                            <div class="overlay"></div>                             <div class="overlay_${product.productId}">                                 <div class="addedtocart_${product.productId}">Added to cart</div>                             </div>
                                                            <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                                                                <img class="img-responsive primary_image" src="<c:url value="/resources/image/${product.productId}.png"/>" alt="${product.productName}" /></a>
                                                            <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                                                                <img class="img-responsive hover_image" src="<c:url value="/resources/image/${product.productId}.png"/>" alt="${product.productName}" /></a>
                                                            <div class="offer-nostock">best</div>
                                                            <div class="product-cart-area">
                                                                <div class="btn-others">
                                                                    <ul>
                                                                        <li><a href=""><i class="fa fa-heart-o"></i></a></li>
                                                                        <li><a href=""><i class="fa fa-exchange"></i></a></li>
                                                                        <li><a href="detail.html"><i class="fa fa-expand"></i></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="btn-add-to-cart cart-btn" ng-controller="cartCtrl">
                                                                    <a href="" ng-click="addToCart('${product.productId}')">
                                                                        <span class="glyphicon glyphicon-shopping-cart"></span>ADD TO CART
                                                                    </a>
                                                                </div>
                                                                <style>
                                                                    .addedtocart_${product.productId}{
                                                                        color:#ffffff;
                                                                        position: relative;
                                                                        top:50px;
                                                                        /*text-shadow: #ffffff;*/
                                                                        font-weight: bold;
                                                                        font-size: 24px;
                                                                    }
                                                                    .overlay_${product.productId} {
                                                                        display:none;
                                                                        bottom: 0;
                                                                        height: 100%;
                                                                        left: 0;
                                                                        -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
                                                                        filter: alpha(opacity=0);
                                                                        opacity: 0.5;
                                                                        padding: 5px;
                                                                        position: absolute;
                                                                        width: 100%;
                                                                        background: #9a7d7d;
                                                                    }

                                                                </style>
                                                            </div>
                                                        </div>
                                                        <div class="product-details">
                                                            <div class="product-title"><a href="<spring:url value="/product/viewProduct/${product.productId}" />">${product.productName}</a></div>
                                                            <div class="product-pd">
                                                                <div class="product-price">&pound;${product.productPrice}</div>
                                                                <div class="product-discount">-25%</div>
                                                            </div>
                                                            <div class="product-review">
                                                                <div class="star">
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!---->
                                        </c:if>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="tab-special" class="tab_content">
                        <div class="box-product">
                            <div class="flexslider special_carousel_tab">
                                <ul class="slides">
                                    <c:forEach items="${products}" var="product">
                                        <c:if test = "${product.listingType == 'Special'}">

                                            <!---->
                                            <li class="col-md-3 col-sm-6 product-thumb">
                                                <div class="slide-inner">
                                                    <div class="product-singleArea">
                                                        <div class="product-img">
                                                            <div class="overlay"></div>                             <div class="overlay_${product.productId}">                                 <div class="addedtocart_${product.productId}">Added to cart</div>                             </div>
                                                            <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                                                                <img class="img-responsive primary_image" src="<c:url value="/resources/image/${product.productId}.png"/>" alt="${product.productName}" /></a>
                                                            <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                                                                <img class="img-responsive hover_image" src="<c:url value="/resources/image/${product.productId}.png"/>" alt="${product.productName}" /></a>
                                                            <div class="offer-nostock">sale</div>
                                                            <div class="product-cart-area">
                                                                <div class="btn-others">
                                                                    <ul>
                                                                        <li><a href=""><i class="fa fa-heart-o"></i></a></li>
                                                                        <li><a href=""><i class="fa fa-exchange"></i></a></li>
                                                                        <li><a href="detail.html"><i class="fa fa-expand"></i></a></li>
                                                                    </ul>
                                                                </div>
                                                                <div class="btn-add-to-cart cart-btn" ng-controller="cartCtrl">
                                                                    <a href="" ng-click="addToCart('${product.productId}')">
                                                                        <span class="glyphicon glyphicon-shopping-cart"></span>ADD TO CART
                                                                    </a>
                                                                </div>
                                                                <style>
                                                                    .addedtocart_${product.productId}{
                                                                        color:#ffffff;
                                                                        position: relative;
                                                                        top:50px;
                                                                        /*text-shadow: #ffffff;*/
                                                                        font-weight: bold;
                                                                        font-size: 24px;
                                                                    }
                                                                    .overlay_${product.productId} {
                                                                        display:none;
                                                                        bottom: 0;
                                                                        height: 100%;
                                                                        left: 0;
                                                                        -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
                                                                        filter: alpha(opacity=0);
                                                                        opacity: 0.5;
                                                                        padding: 5px;
                                                                        position: absolute;
                                                                        width: 100%;
                                                                        background: #9a7d7d;
                                                                    }

                                                                </style>
                                                            </div>
                                                        </div>
                                                        <div class="product-details">
                                                            <div class="product-title"><a href="<spring:url value="/product/viewProduct/${product.productId}" />">${product.productName}</a></div>
                                                            <div class="product-pd">
                                                                <div class="product-price">&pound;${product.productPrice}</div>
                                                                <div class="product-discount">-25%</div>
                                                            </div>
                                                            <div class="product-review">
                                                                <div class="star">
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                    <span class="yes"><i class="fa fa-star"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                            <!---->
                                        </c:if>
                                    </c:forEach>

                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
                <script type="text/javascript">
                    (function() {
                        // store the slider in a local variable
                        var $window = $(window),
                                flexslider;
                        // tiny helper function to add breakpoints
                        function getGridSize() {
                            return (window.innerWidth < 320) ? 1 :
                                    (window.innerWidth < 600) ? 2 :
                                            (window.innerWidth < 800) ? 3 :
                                                    (window.innerWidth < 900) ? 4 : 5;
                        }
                        $window.on("load",function() {
                            $('#product-tab .featured_carousel_tab, #product-tab .latest_carousel_tab, #product-tab .bestseller_carousel_tab, #product-tab .special_carousel_tab').flexslider({
                                animation: "slide",
                                animationLoop: false,
                                slideshow: false,
                                itemWidth: 210,
                                minItems: getGridSize(), // use function to pull in initial value
                                maxItems: getGridSize(), // use function to pull in initial value
                                start: function(){
                                    $("#product-tab .tab_content").addClass("deactive");
                                    $("#product-tab .tab_content:first").removeClass("deactive"); //Show first tab content
                                } });
                        });

                        $(document).ready(function() {
                            //Default Action
                            $("ul#tabs li:first").addClass("active").show(); //Activate first tab
                            //On Click Event
                            $("ul#tabs li").click(function() {
                                $("ul#tabs li").removeClass("active"); //Remove any "active" class
                                $(this).addClass("active"); //Add "active" class to selected tab
                                $("#product-tab .tab_content").hide();
                                var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content
                                $(activeTab).fadeIn(); //Fade in the active content
                                return false;
                            });
                        });}());
                </script>
                <!-- Product Tab End-->
                <!-- Carousel Start-->
                <section id="carousel">
                    <ul class="jcarousel-skin-opencart">
                        <li><a href="#"><img src="<c:url value="/resources/image/product/brand_logo.jpg"/>" alt="brand_logo" title="brand_logo" /></a></li>
                        <li><a href="#"><img src="<c:url value="/resources/image/product/brand_logo1.jpg"/>" alt="brand_logo" title="brand_logo" /></a></li>
                        <li><a href="#"><img src="<c:url value="/resources/image/product/brand_logo2.jpg"/>" alt="brand_logo" title="brand_logo" /></a></li>
                        <li><a href="#"><img src="<c:url value="/resources/image/product/brand_logo3.jpg"/>" alt="brand_logo" title="brand_logo" /></a></li>
                        <li><a href="#"><img src="<c:url value="/resources/image/product/brand_logo4.jpg"/>" alt="brand_logo" title="brand_logo" /></a></li>
                        <li><a href="#"><img src="<c:url value="/resources/image/product/brand_logo5.jpg"/>" alt="brand_logo" title="brand_logo" /></a></li>
                    </ul>
                </section>
                <!-- Carousel End-->

            <div class="clear"></div>
        </div>
<script src="<c:url value="/resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>