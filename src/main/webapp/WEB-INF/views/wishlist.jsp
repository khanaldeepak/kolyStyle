<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container-full">

        <div class="col-md-3 col-sm-3">
            <%@include file="/WEB-INF/views/template/customerSidenav.jsp" %>
        </div>
        <div class="col-md-9 col-sm-9">
            <div class="col-md-12 border-grey">
                <h3 class="text-moredanger">${customer.customerName} Wish List</h3>
                <p class="wishlist-sub-head">You have <span class="text-success"><strong> 2 items</strong></span> in your wishlist. Add to cart before they are sold out.</p>
                <div class="col-md-12 wishlist-main-wrapper border-top-grey">
<!--Wishlist row-->
                        <div class="col-md-12 border-btm-grey wishlist-container">
                            <div class="col-md-3 wishlist-image-container">
                                <a href="/realtorsNepal/product/viewProduct/68">
                                    <img class="img-responsive wishlist_thumbnail" src="/realtorsNepal/resources/image/68.png" alt="Pant">
                                </a>
                            </div>
                            <div class="col-md-6 wishlist-info-container">
                                <p class="wishlist-product-title">
                                    <a href="/realtorsNepal/product/viewProduct/68">Rialto Coline Pumps</a>
                                </p>
                                <p class="web-id">WEB ID 2997920</p>
                                <p class="item-color">Color: Natural</p>
                                <p class="item-size">Size: 7M</p>
                                <div class="star text-danger">
                                    <span class="yes"><i class="fa fa-star"></i></span>
                                    <span class="yes"><i class="fa fa-star"></i></span>
                                    <span class="yes"><i class="fa fa-star"></i></span>
                                    <span class="yes"><i class="fa fa-star"></i></span>
                                    <span class="yes"><i class="fa fa-star"></i></span>
                                </div>
                                <p class="item-unavailable text-moredanger">Unavailable</p>
                                <p class="item-promotion text-moredanger">EXTRA 30% OFF USE: FRIEND</p>

                            </div>
                            <div class="col-md-3 wishlist-price-container">
                                <p class="wishlist-price">$99.99</p>
                                <div class="col-md-12 add-to-cart text-center">
                                    <a href="#" class="btn btn-danger">ADD TO BAG</a>
                                </div>
                                <div class="col-md-12 text-center">
                                    <a href="#" class="wishlist-delete">Delete</a>
                                </div>
                            </div>

                        </div>
                    <!--Wishlist row-->
                    <div class="col-md-12 border-btm-grey wishlist-container">
                        <div class="col-md-3 wishlist-image-container">
                            <a href="/realtorsNepal/product/viewProduct/68">
                                <img class="img-responsive wishlist_thumbnail" src="/realtorsNepal/resources/image/68.png" alt="Pant">
                            </a>
                        </div>
                        <div class="col-md-6 wishlist-info-container">
                            <p class="wishlist-product-title">
                                <a href="/realtorsNepal/product/viewProduct/68">Rialto Coline Pumps</a>
                            </p>
                            <p class="web-id">WEB ID 2997920</p>
                            <p class="item-color">Color: Natural</p>
                            <p class="item-size">Size: 7M</p>
                            <div class="star text-danger">
                                <span class="yes"><i class="fa fa-star"></i></span>
                                <span class="yes"><i class="fa fa-star"></i></span>
                                <span class="yes"><i class="fa fa-star"></i></span>
                                <span class="yes"><i class="fa fa-star"></i></span>
                                <span class="yes"><i class="fa fa-star"></i></span>
                            </div>
                            <p class="item-unavailable text-moredanger">Unavailable</p>
                            <p class="item-promotion text-moredanger">EXTRA 30% OFF USE: FRIEND</p>

                        </div>
                        <div class="col-md-3 wishlist-price-container">
                            <p class="wishlist-price">$99.99</p>
                            <div class="col-md-12 add-to-cart text-center">
                                <a href="#" class="btn btn-danger">ADD TO BAG</a>
                            </div>
                            <div class="col-md-12 text-center">
                                <a href="#" class="wishlist-delete">Delete</a>
                            </div>
                        </div>

                    </div>
                    <!--Wishlist row-->





                </div>
                <div class="col-md-12">
                    <p class="security-button-bar">Note: For security, please do NOT email us your account number.</p>

                </div>

            </div>

        </div>

    </div>
</div>

<script src="<c:url value="/resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>