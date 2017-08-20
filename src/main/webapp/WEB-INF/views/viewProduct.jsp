<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <!--Middle Part Start-->
    <div id="content" ng-app="cartApp">
        <div class="breadcrumb"> <a href="index.html">Home</a> &raquo; <a href="#">${product.productName} </a></div>

        <div class="product-info">
            <div class="col-md-6">
                <div class="image col-md-10"><a href="<c:url value="/resources/image/${product.productId}.png"/>" title="${product.productName}" class="cloud-zoom colorbox" id='zoom1' rel="adjustX: 0, adjustY:0, tint:'#000000',tintOpacity:0.2, zoomWidth:360, position:'inside', showTitle:false"><img src="<c:url value="/resources/image/${product.productId}.png"/> " title="Canon EOS 5D" alt="Canon EOS 5D" id="image" class="main-image"/><span id="zoom-image"><i class="zoom_bttn"></i> Zoom</span></a></div>
                <div class="image-additional">
                    <a href="<c:url value="/resources/image/${product.productId}.png"/>" title="${product.productName}" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<c:url value="/resources/image/${product.productId}.png"/>' "><img src="<c:url value="/resources/image/${product.productId}.png"/> " width="62" title="Canon EOS 5D" alt="Canon EOS 5D" /></a>
                    <a href="<c:url value="/resources/image/${product.productId}.png"/>" title="Canon EOS 5D" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<c:url value="/resources/image/${product.productId}.png"/>' "><img src="<c:url value="/resources/image/${product.productId}.png"/>" width="62" title="Canon EOS 5D" alt="Canon EOS 5D" /></a>
                    <a href="<c:url value="/resources/image/33.png"/>" title="Canon EOS 5D" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<c:url value="/resources/image/33.png"/>' "><img src="<c:url value="/resources/image/33.png"/>" width="62" title="Canon EOS 5D" alt="Canon EOS 5D" /></a>
                    <a href="<c:url value="/resources/image/68.png"/>" title="Canon EOS 5D" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<c:url value="/resources/image/68.png"/>' "><img src="<c:url value="/resources/image/68.png"/>" width="62" title="Canon EOS 5D" alt="Canon EOS 5D" /></a>
                    <a href="<c:url value="/resources/image/68.png"/>" title="Canon EOS 5D" class="cloud-zoom-gallery" rel="useZoom: 'zoom1', smallImage: '<c:url value="/resources/image/68.png"/>' "><img src="<c:url value="/resources/image/68.png"/>" width="62" title="Canon EOS 5D" alt="Canon EOS 5D" /></a>
                </div>
            </div>
            <div class="col-md-6">
            <div class="col-md-8">

                <div class="description">

                    <a class="brandNameLink" target="_blank" href="/shop/search?keyword=tommy hilfiger">${product.productManufacturer}</a>

                    <h1 class="productName">${product.productName}</h1>

                    <span>Gender:</span> ${product.productGender}<br />
                    <span>SKU:</span> Product ${product.productSKU}<br />
                    <span style="color:red"><strong>Time To Dispatch:</strong></span> Approximately 3-5 Weeks<br />
                    <span>Reward Points:</span> 200<br />

                <c:if test = "${product.unitInStock >= 1}">
                    <c:if test = "${product.unitInStock >= 5}">
                        <span>Availability:</span> In Stock
                    </c:if>
                <c:if test = "${product.unitInStock < 5}">
                <span>Availability:</span> ${product.unitInStock} In Stock
                </c:if>
                <br/><span class="readytoship"><i class="fa"></i>Ready to Ship</span>
            </c:if>
            <c:if test = "${product.unitInStock < 1}">
                <span>Availability:</span> Out of Stock
            </c:if>
                    </div>
                <div class="price">Price: <span class="price-old">$119.50</span> <span class="price-new">${product.productPrice} USD</span> <br />
                    <span class="price-tax">Ex Tax: $80.00</span><br />
                </div>
                <div class="options">
<c:if test = "${product.productGender == 'male'}">
                    <div id="option-226" class="option"> <span class="required">*</span> <b>Size</b><br />
                        <select name="option">
                            <option value=""> --- Please Select --- </option>€
                            <option value="15">30X30</option>
                            <option value="16">30X32</option>
                        </select>
                    </div>
</c:if>

<c:if test = "${product.productGender == 'female'}">

    <div id="option-226" class="option"><b>Size</b><br />
        <select name="option">
            <option value=""> --- Please Select --- </option>
            <option value="40">40</option>
            <option value="42">42</option>
        </select>
    </div>
</c:if>
                </div>
                <div class="cart">
                    <div>
                        <div class="qty"> <strong>Qty:</strong> <a class="qtyBtn mines" href="javascript:void(0);">-</a>
                            <input id="qty" type="text" class="w60" name="quantity" size="2" value="1" />
                            <a class="qtyBtn plus" href="javascript:void(0);">+</a>
                            <input type="hidden" name="product_id" size="2" value="30" />
                            <div class="clear"></div>
                        </div>
                        <div class="col-md-12">
                        <p ng-controller="cartCtrl">
                            <a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')">
                            <span class="glyphicon glyphicon-shopping-cart"></span> ADD TO CART
                            </a>
                        </p>
                        </div>
                        <div class="col-md-12">
                            <div class="overlay_${product.productId}">
                                <div class="addedtocart_${product.productId}">Added to cart successfully</div>
                            </div>
                            <style>
                                .addedtocart_${product.productId}{
                                    color:#000000;
                                    font-weight: bold;
                                    font-size: 12px;
                                }
                                .overlay_${product.productId} {
                                    display:none;
                                }
                            </style>
                        </div>

                    </div>
                    <div class="col-md-12"><a href="#" class="wishlist" >Add to Wish List</a> <a href="#" class="wishlist" >Add to Compare</a></div>
                </div>
                <div class="review">
                    <div><img src="<c:url value="/resources/image/stars-0.png"/>" alt="2 reviews" />&nbsp;&nbsp;<a onClick="$('a[href=\'#tab-review\']').trigger('click');">0 reviews</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onClick="$('a[href=\'#tab-review\']').trigger('click');">Write a review</a></div>
                </div>
                <!-- AddThis Button BEGIN -->
                <div class="addthis_toolbox addthis_default_style "> <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_google_plusone" g:plusone:size="medium"></a> <a class="addthis_counter addthis_pill_style"></a> </div>
                <script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js#pubid=xa-506f325f57fbfc95"></script>
                <!-- AddThis Button END -->
       </div>
    <div class="col-md-4"></div>
            </div>
        </div>
        <!-- Description and Reviews Tab Start -->
        <div id="tabs" class="htabs"> <a href="#tab-description">Description</a> <a href="#tab-review">Reviews (0)</a> </div>
        <div id="tab-description" class="tab-content">
            <p><strong>Revolutionary multi-touch interface.</strong><br>
                ${product.productDescription}
                Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.</p>
            <p><strong>Fabric:</strong><br> Pure Velvet, Chiffon Dupatta</p>
            <p><strong>Work:</strong><br>Lace, Resham, Zari, Embroidery</p>
            <p><strong>Includes:</strong><br> Anarkali, Salwar, Dupatta</p>
                <p><strong>Gorgeous 3.5-inch widescreen display.</strong><br>

            <p><strong>Music downloads straight from iTunes.</strong><br>
                Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.</p>
            <p><strong>Surf the web with Wi-Fi.</strong><br>
                Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in<br>
                &nbsp;</p>
        </div>
        <div id="tab-review" class="tab-content">
            <div id="review"></div>
            <h2 id="review-title">Write a review</h2>
            <br />
            <b>Your Name:</b><br />
            <input type="text" name="name" value="" />
            <br />
            <br />
            <b>Your Review:</b>
            <textarea name="text" cols="40" rows="8" style="width: 98%;"></textarea>
            <span style="font-size: 11px;"><span style="color: #FF0000;">Note:</span> HTML is not translated!</span><br />
            <br />
            <b>Rating:</b> <span>Bad</span>&nbsp;
            <input type="radio" name="rating" value="1" />
            &nbsp;
            <input type="radio" name="rating" value="2" />
            &nbsp;
            <input type="radio" name="rating" value="3" />
            &nbsp;
            <input type="radio" name="rating" value="4" />
            &nbsp;
            <input type="radio" name="rating" value="5" />
            &nbsp;<span>Good</span><br />
            <br />
            <b>Enter the code in the box below:</b><br />
            <input type="text" name="captcha" value="" />
            <br />
            <br />
            <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
            <br />
            <div class="buttons">
                <div class="right"><a id="button-review" class="button">Continue</a></div>
            </div>
        </div>
        <script>
            $(document).ready(function(){
                $('#tabs a').tabs();
            });
        </script>
        <!-- Description and Reviews Tab Start -->
        <!--Related Product Start-->
        <div class="box">
            <div class="box-heading">Related Products (11)</div>
            <div class="box-content">
                <div class="box-product">
                    <div class="flexslider" id="related_pro">
                        <ul class="slides">
<c:forEach items="${products}" var="products">
    <c:if test = "${products.productCategory == product.productCategory}">
    <c:if test = "${products.productId != product.productId}">
        <!---->
        <li class="col-md-3 col-sm-6 product-thumb">
            <div class="slide-inner">
                <div class="product-singleArea">
                    <div class="product-img">
                        <div class="overlay"></div>
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
                            <div class="btn-add-to-cart cart-btn"><a href="#">ADD TO CART</a></div>
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
    </c:if>
</c:forEach>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
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
                                            (window.innerWidth < 900) ? 3 : 4;
                }
                $window.on("load",function() {
                    $('#content #related_pro').flexslider({
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
        <!--Related Product End-->
    </div>
</div>
    <!--Middle Part End-->

        <%--<div class="container" ng-app="cartApp">--%>
            <%--<div class="row">--%>
                <%--<div class="col-md-5">--%>
                    <%--<img src="<c:url value="/resources/image/${product.productId}.png"/> " alt="image" style="width: 100%"/>--%>
                <%--</div>--%>
                <%--<div class="col-md-5">--%>
                    <%--<h3>${product.productName}</h3>--%>
                    <%--<p>${product.productDescription}</p>--%>
                    <%--<p>--%>
                    <%--<strong>Manufacturer</strong> : ${product.productManufacturer}--%>
                    <%--</p>--%>
                    <%--<p>--%>
                        <%--<strong>Category</strong> : ${product.productCategory}--%>
                    <%--</p>--%>
                    <%--<p>--%>
                        <%--<strong>Condition</strong> : ${product.productCondition}--%>
                    <%--</p>--%>
                    <%--<h4>${product.productPrice} USD</h4>--%>

                    <%--<br>--%>

                    <%--<c:set var="role" scope="page" value="${param.role}"/>--%>
                    <%--<c:set var="url" scope="page" value="/product/productList"/>--%>
                    <%--<c:if test="${role = 'admin'}">--%>
                        <%--<c:set var="url" scope="page" value="/admin/productInventory"/>--%>
                    <%--</c:if>--%>

                    <%--<p ng-controller="cartCtrl">--%>
                        <%--<a href="<c:url value="${url}"/>" class="btn btn-default">Back</a>--%>
                        <%--<a href="#" class="btn btn-warning btn-large" ng-click="addToCart('${product.productId}')">--%>
                            <%--<span class="glyphicon glyphicon-shopping-cart"></span>Order Now--%>
                        <%--</a>--%>
                        <%--<a href="<spring:url value="customer/cart/"/>" class="btn btn-default">--%>
                            <%--<span class="glyphicon glyphicon-hand-right"></span>View Cart--%>
                        <%--</a>--%>
                    <%--</p>--%>

                <%--</div>--%>
            <%--</div>--%>


        <%--</div>--%>
<%---->--%>
        <script src="<c:url value="/resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>