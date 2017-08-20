<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">

        <section>

            <div class="col-md-12">
                <div class="col-md-2 text-right">
                    <i class="fa fa-shopping-bag fa-5x text-moredanger" aria-hidden="true"></i>
                </div>
                <div class="col-md-10">
                    <p class="text-moredanger bold-big-text">your shopping bag</p>
                    <p>Bag ID: 2625-32712</p>
                    <p>Item availability and pricing are not guaranteed</p>
                </div>
            </div>

        </section>

        <section class="" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
            <div class="col-md-12 margin-tb-10px">

                    <a class="btn bg-danger pull-right" ng-click="clearCart()"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>

            </div>

                <!--Testing Cart Display-->
                <div class="col-md-12 bg-dark">
                    <div class="col-md-4">item</div>
                    <div class="col-md-2">delivery</div>
                    <div class="col-md-2">price</div>
                    <div class="col-md-2">quantity</div>
                    <div class="col-md-2">total</div>
                </div>
                <div class="col-md-12 border-btm-grey orderlist-container" ng-repeat = "item in cart.cartItems">
                    <div class="col-md-2 orderlist-image-container">
                        <a href="/realtorsNepal/product/viewProduct/{{item.product.productId}}">
                            <img class="img-responsive orderlist_thumbnail" src="/realtorsNepal/resources/image/{{item.product.productId}}.png" alt="Pant">
                        </a>
                    </div>
                    <div class="col-md-2 orderlist-info-container">
                        <p class="orderlist-product-title">
                            <a href="/realtorsNepal/product/viewProduct/{{item.product.productId}}">{{item.product.productName}}</a>
                        </p>
                        <p class="order-item-color">Color: Natural</p>
                        <p class="order-size-qty"><span class="order-item-size">Size: 7M</span></p>
                        <p class="order-item-qty">WEB ID {{item.product.productSKU}}</p>
                    </div>
                    <div class="col-md-2 orderlist-shipping-container">
                        <p class="order-ship">expected ship date</p>
                        <p class="order-ship-date">05/02/2017</p>
                    </div>
                    <div class="col-md-2 orderlist-pricing-container">
                        <p class="order-price">$ {{item.product.productPrice}}</p>
                    </div>
                    <div class="col-md-2 orderlist-pricing-container">
                        <p class="order-price">{{item.quantity}}</p>
                    </div>
                    <div class="col-md-2 orderlist-pricing-container">
                        <p class="order-price">$ {{item.totalPrice}}</p>
                    </div>
                    <div class="col-md-12 cart-remove-container text-right">
                        <a href="#" class="move-to-list">Move to List</a> |
                        <a href="#" class="remove-item" ng-click="removeFromCart(item.product.productId)">Remove</a>
                    </div>

                </div>
                <!--Testing Cart Display-->
                <!--Promo Code Display-->
                <div class="col-md-9 col-md-offset-3 promo-container">
                    <div class="col-md-4"><strong>Have a promo code?</strong></div>
                    <div class="col-md-8"><input type="type" class="col-md-6" id="promocode"/><a type="submit" class="btn btn-danger no-radius" ng-click="applyPromoCode()">apply</a> </div>

                </div>
                <!--Promo Code Display-->
                <!--Cart Total-->
                <div class="col-md-offset-8 col-md-4 col-sm-4 order-price-summary">
                    <div class="amount-details col-md-12 col-sm-12">
                        <ul class="col-md-12 col-sm-12">
                            <li>
                                <div class="col-md-8">Subtotal</div>
                                <div class="col-md-4 text-right"><span>$</span>{{calGrandTotal()}}</div>
                            </li>
                            <li>
                                <div class="col-md-8">Discount</div>
                                <div class="col-md-4 text-right text-moredanger">$135.33</div>
                            </li>
                            <li>
                                <div class="col-md-8">Shipping</div>
                                <div class="col-md-4 text-right text-moredanger">FREE</div>
                            </li>
                            <li>
                                <div class="col-md-8">Estimated tax</div>
                                <div class="col-md-4 text-right">$21.90</div>
                            </li>
                        </ul>
                    </div>
                    <hr>
                    <div class="order-submission col-md-12 col-sm-12">
                        <ul class="col-md-12 col-sm-12">
                            <li class="checkout-subtotal">
                                <div class="col-md-8">Order total</div>
                                <div class="col-md-4 text-right">$386.82</div>
                            </li>
                            <li class="text-moredanger">
                                <div class="col-md-8">You saved</div>
                                <div class="col-md-4 text-right">$192.58</div>
                            </li>
                        </ul>
                    </div>

                </div>
                <div class="col-md-offset-8 col-md-4 col-sm-4 margin-tb-10px">
                    <a href="<spring:url value="/productList"/>" class="continue-shopping">Keep Shopping</a>
                    <a href="<spring:url value="/order/${cartId}"/>" class="btn btn-danger pull-right text-white">
                        <span class="glyphicon glyphicon-shopping-cart"></span> CHECKOUT</a>
                </div>
                <!--Cart Total-->
            </div>
        </section>

</div>

<script src="<c:url value="/resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>