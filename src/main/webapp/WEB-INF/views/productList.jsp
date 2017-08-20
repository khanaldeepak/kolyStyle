<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script>
    $(document).ready(function () {
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu":[[10,15,20,25,50,-1],[10,15,20,25,50,"All"]],
            "oSearch":{"sSearch":searchCondition}
        });
    });
</script>


<div class="container-wrapper">

        <div class="page-header">
            <!--Breadcrumb Part Start-->
            <div class="breadcrumb"> <a href="index.html">Home</a> &raquo; <a href="">Electronics</a> </div>
            <!--Breadcrumb Part End-->
            <h1>Electronics</h1>

        </div>
    <!--Middle test-->
    <!--Product Filter Start-->
    <div class="col-md-3">
        <script>
            $(document).ready(function(){
                $(".price").click(function(){
                    $(".price-container").slideToggle();
                });
                $(".color").click(function(){
                    $(".color-container").slideToggle();
                });
                $(".size").click(function(){
                    $(".size-container").slideToggle();
                });
                $(".fabric").click(function(){
                    $(".fabric-container").slideToggle();
                });
                $(".brand").click(function(){
                    $(".brand-container").slideToggle();
                });
                $(".category").click(function(){
                    $(".category-container").slideToggle();
                });
                $(".tailoring").click(function(){
                    $(".tailoring-container").slideToggle();
                });
                $(".shipping").click(function(){
                    $(".shipping-container").slideToggle();
                });
            });
        </script>
    <div id="product-filter" class="col-md-10">
        <h3><i class="fa fa-filter" aria-hidden="true"></i> FILTER BY</h3>
        <h4 class="price">Price</h4>
        <div class="price-container">
        <input type="checkbox" id="100" value="100" /> 100<br />
        <input type="checkbox" id="200" value="200" /> 200<br />
        </div>
        <h4 class="color">Color</h4>
        <div class="color-container">
        <input type="checkbox" id="cyan" value="cyan" /> Cyan<br />
        <input type="checkbox" id="black" value="black" /> Black<br />
        <input type="checkbox" id="aqua" value="aqua" /> Aqua Blue<br />
        <input type="checkbox" id="beige" value="beige" /> Beige<br />
        <input type="checkbox" id="blue" value="blue" /> Blue<br />
        <input type="checkbox" id="brown" value="brown" /> Brown<br />
        <input type="checkbox" id="chocolate" value="chocolate" /> Chocolate<br />
        <input type="checkbox" id="cream" value="cream" /> Cream<br />
        <input type="checkbox" id="golden" value="golden" /> Golden<br />
        <input type="checkbox" id="gray" value="gray" /> Gray<br />
        <input type="checkbox" id="green" value="green" /> Green<br />
        <input type="checkbox" id="magenta" value="magenta" /> Magenta<br />
        <input type="checkbox" id="multi" value="multi" /> Multi Color<br />
        <input type="checkbox" id="navy" value="navy" /> Navy<br />
        <input type="checkbox" id="olive" value="olive" /> Olive<br />
        <input type="checkbox" id="orange" value="orange" /> Orange<br />
        <input type="checkbox" id="pink" value="pink" /> Pink<br />
        <input type="checkbox" id="purple" value="purple" /> Purple<br />
        <input type="checkbox" id="red" value="red" /> Red<br />
        <input type="checkbox" id="white" value="white" /> White<br />
        <input type="checkbox" id="yellow" value="yellow" /> Yellow<br />
            </div>
        <h4 class="size">Size</h4>
        <div class="size-container">
        <input type="checkbox" id="small" value="small" /> Small<br />
        <input type="checkbox" id="medium" value="medium" /> Medium<br />
        <input type="checkbox" id="large" value="large" /> Large<br />
        <input type="checkbox" id="xl" value="xl" /> Extra Large<br />
            </div>
        <h4 class="fabric">Fabric</h4>
        <div class="fabric-container">
        <input type="checkbox" id="silk" value="silk" /> Silk<br />
        <input type="checkbox" id="cotton" value="cotton" /> Cotton<br />
            </div>
        <h4 class="brand">Brand</h4>
        <div class="brand-container">
        <input type="checkbox" id="star" value="star" /> Star<br />
        <input type="checkbox" id="koly" value="koly" /> Koly<br />
            </div>
        <h4 class="category">Categories</h4>
        <div class="category-container">
        <input type="checkbox" id="saree" value="saree" /> Saree<br />
        <input type="checkbox" id="kurthi" value="kurthi" /> Kurthi<br />
            </div>
        <h4 class="tailoring">Tailoring Option</h4>
        <div class="tailoring-container">
        <input type="checkbox" id="custom" value="custom" /> Custom Made<br />
        <input type="checkbox" id="ready" value="ready" /> Ready Made<br />
            </div>
        <h4 class="shipping">Shipping</h4>
        <div class="shipping-container">
        <input type="checkbox" id="free" value="free" /> Free Shipping<br />
        <input type="checkbox" id="paid" value="paid" /> Paid Shipping<br />
            </div>
        </div>
    </div>
    <!--Product Filter Start-->
    <!--Middle Part Start-->
    <div id="content"  ng-app="cartApp" class="col-md-9">


        <div class="product-filter">
            <div class="display"><b>Display:</b> <span class="grid1-icon">Grid</span> <a href="category-list.html" class="list-icon">List</a></div>
            <div class="itemscount">
                <strong><span class="text-danger"> 345 </span>items in Saree</strong>
            </div>
            <div class="limit"><b>Show:</b>
                <select >
                    <option value="15" selected="selected">15</option>
                    <option value="25">25</option>
                    <option value="50">50</option>
                    <option value="75">75</option>
                    <option value="100">100</option>
                </select>
            </div>
            <div class="sort"><b>Sort By:</b>
                <select>
                    <option value="ORIGINAL">Featured Items</option>
                    <option value="PRICE_LOW_TO_HIGH">Price: Low to High</option>
                    <option value="PRICE_HIGH_TO_LOW">Price: High to Low</option>
                    <option value="TOP_RATED">Customers' Top Rated</option>
                    <option value="BEST_SELLERS">Best Sellers</option>
                    <option value="NEW_ITEMS">New Arrivals</option>
                </select>
            </div>
        </div>

        <!--Product Grid Start-->
        <div class="product-grid">
        <c:forEach items="${products}" var="product">

                <div class="col-md-4 col-sm-6 slide-inner" data-price="${product.productPrice}" data-brand="${product.productManufacturer}" data-category="${product.productCategory}" data-size="small">
                    <div class="product-singleArea">
                        <div class="product-img">
                            <div class="overlay"></div>
                            <div class="overlay_${product.productId}">
                                <div class="addedtocart_${product.productId}">Added to cart</div>
                            </div>
                            <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                                <img class="img-responsive primary_image" src="<c:url value="/resources/image/${product.productId}.png"/>" alt="${product.productName}" /></a>
                            <a href="<spring:url value="/product/viewProduct/${product.productId}" />">
                                <img class="img-responsive hover_image" src="<c:url value="/resources/image/${product.productId}.png"/>" alt="${product.productName}" /></a>
                            <%--<div class="offer-nostock">sale</div>--%>
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
                            </div>
                        </div>
                        <div class="product-details">

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
                            <div class="product-title"><a href="<spring:url value="/product/viewProduct/${product.productId}" />">${product.productName}</a></div>
                            <div class="product-pd">
                                <div class="product-price">$${product.productPrice}</div>
                                <div class="product-discount">Now $${product.productPrice}</div>
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

            <!---->

            </c:forEach>
        </div>
        <!--Product Grid End-->
        <!--Pagination Part Start-->
        <div class="pagination">
            <div class="links"> <b>1</b> <a href="#">2</a> <a href="#">&gt;</a> <a href="#">&gt;|</a></div>
            <div class="results">Showing 1 to 15 of 16 (2 Pages)</div>
        </div>
        <!--Pagination Part End-->
    </div>
    <!--Middle Part End-->
    <script>
        $('input[type="checkbox"]').click(function() {
            // Cache These Variables
            var $checked = $('input[type="checkbox"]:checked');
            var $productsDiv = $('.products > div');
            var $sizeCheckBox = $('input[type="checkbox"][value="xl"]');

            if ($checked.length > 0) {
                $productsDiv.hide();
                // If only XL Checkbox is Checked
                if ($checked.length == 1 && $sizeCheckBox.is(':checked')) {
                    $('.products > div[data-size=' + $sizeCheckBox.attr('id') + ']').show();
                }
                // If Others are also Checked
                else {
                    // All Checkboxes and Not Size Checkbox
                    $checked.not($sizeCheckBox).each(function() {
                        var dataSize = '';
                        if ($sizeCheckBox.is(':checked')) {
                            dataSize = '[data-size=' + $sizeCheckBox.attr('id') + ']';
                        }
                        $('.products >div[data-category=' + this.id + ']' + dataSize).show();
                    });
                }
            } else {
                $productsDiv.show();
            }
        });
    </script>
    <!--Middle test-->


        </div>
<script src="<c:url value="/resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/views/template/footer.jsp"%>