<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container-full">

        <div class="col-md-3 col-sm-3">
            <%@include file="/WEB-INF/views/template/customerSidenav.jsp" %>
        </div>
        <div class="col-md-9 col-sm-9">
            <div class="col-md-12 border-grey">
                <h3 class="text-moredanger">${customer.customerName}'s order status & history</h3>
               <div class="col-md-12 wishlist-main-wrapper">
                    <!--Search order row-->
                    <div class="col-md-12 search-order-container padding-tb-10">

                            <div class="col-md-6">
                                <form:form name="orderHistoryForm" commandName="customer"  id="orderHistory" action="${pageContext.request.contextPath}/customer/orderhistory" method="post">
                                    <form:hidden path="customerId" value="${customer.customerId}"/>

                                    <form:hidden path="username" value="${customer.username}"/>
                                    <c:if test="${not empty error}">
                                        <div class="error" style="color: #ff0000;">${error}</div>
                                    </c:if>
                                <div class="form-group">
                                <label for="username">look up an order by order number:</label><form:errors path="customerName" cssStyle="color: #ff0000"/>
                                <form:input type="text" path="customerName" id="customerName" name="fullname" value="" class="form-control col-width-50"/>
                                </div>

                            </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="customerEmail">verify email address:</label><form:errors path="customerEmail" cssStyle="color: #ff0000"/>
                                <form:input type="text" path="customerEmail" id="customerEmail" name="fullname" value="" class="form-control"/>
                            </div>
                            <input type="submit" value="TRACK ORDER" class="btn btn-danger"/>

                            </form:form>

                        </div>
                    </div>
                    <!--Order Header row-->
                    <div class="col-md-12 order-header">
                        <div class="col-md-8 order-summary">
                            <div class="col-md-12">
                                <p class="order-date">order date <span class="order-big-text text-moredanger">April 30, 2017</span></p>
                            </div>
                            <div class="col-md-12">
                                <ul class="order-group">
                                    <li class="order-number">order # <span class="order-big-text">1283211520</span></li>
                                    <li class="order-total">order total <span class="order-big-text">$140.30</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4 order-details-button text-right">
                            <a href="#" class="btn btn-danger">order details</a>
                        </div>
                    </div>
                    <!--Order Header row-->
                    <!--Order Details row-->

                    <div class="col-md-12 border-btm-grey orderlist-container">
                        <div class="col-md-2 orderlist-image-container">
                            <a href="/realtorsNepal/product/viewProduct/68">
                                <img class="img-responsive orderlist_thumbnail" src="/realtorsNepal/resources/image/68.png" alt="Pant">
                            </a>
                        </div>
                        <div class="col-md-5 orderlist-info-container">
                            <p class="orderlist-product-title">
                                <a href="/realtorsNepal/product/viewProduct/68">Rialto Coline Pumps</a>
                            </p>
                            <p class="order-item-color">Color: Natural</p>
                            <p class="order-size-qty"><span class="order-item-size">Size: 7M</span>
                                <span class="order-item-qty">Qty: 1</span>
                            </p>
                        </div>
                        <div class="col-md-3 orderlist-shipping-container">
                            <p class="order-ship">expected ship date</p>
                            <p class="order-ship-date">05/02/2017</p>
                        </div>
                        <div class="col-md-2 orderlist-pricing-container">
                            <p class="order-price">$11.19</p>
                        </div>

                    </div>
                    <!--Order Details row-->

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