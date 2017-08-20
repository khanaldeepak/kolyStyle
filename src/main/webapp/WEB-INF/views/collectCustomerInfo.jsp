<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container-full">

        <%--<div class="col-md-3 col-sm-3">--%>
            <%--<%@include file="/WEB-INF/views/template/customerSidenav.jsp" %>--%>
        <%--</div>--%>
        <div class="col-md-8 col-sm-8 order-customer-information">
            <div class="col-md-12 border-grey">
                <h3 class="text-moredanger">CheckOut</h3>
                <h4>hi ${pageContext.request.userPrincipal.name}!</h4>

                <div class="col-md-2">
                    <p class="">Shipping address</p>
                </div>
                <div class="col-md-6">
                    <ul class="">
                        <li>${customer.shippingAddress.firstName} ${customer.shippingAddress.lastName} </li>
                        <li>${customer.shippingAddress.streetName}</li>
                        <li>${customer.shippingAddress.city}, ${customer.shippingAddress.state} ${customer.shippingAddress.zipCode}</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-default">CHANGE</a>
                </div>
            </div>

            <div class="col-md-12 border-grey">
                <div class="col-md-2">
                    <p class="">Shipping method</p>
                </div>
                <div class="col-md-6">
                    <ul class="">
                        <li>Everyday Free Shipping</li>
                        <li>FREE</li>
                        <li>Transit time: 3-6 business days</li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-default">CHANGE</a>
                </div>
            </div>

            <div class="col-md-12 border-grey">
                <h3 class="text-moredanger">Payment</h3>
                <div class="col-md-12">
                    <h4>Apply Gift & Rewards Cards</h4>
                    <ul class="">
                        <li>You can apply up to 5</li>
                        <li><a href="#">Apply Card</a></li>
                    </ul>
                </div>
                <div class="col-md-12">
                    <h4>Choose payment method</h4>
                    <input type="radio" name="paymenttype" value="creditcard">Credit Card
                    <input type="radio" name="paymenttype" value="paypal">Paypal
                </div>
            </div>

        </div>
            <div class="col-md-4 col-sm-4 order-price-summary">
                <div class="amount-details col-md-12 col-sm-12">
                    <ul class="col-md-12 col-sm-12">
                        <li class="checkout-subtotal">
                            <div class="col-md-8">Subtotal</div>
                            <div class="col-md-4 text-right">$364.92</div>
                        </li>
                        <li class="margin-left-30">
                            <div class="col-md-8">Shipping</div>
                            <div class="col-md-4 text-right">FREE</div>
                        </li>
                        <li class="margin-left-30">
                            <div class="col-md-8">Estimated tax</div>
                            <div class="col-md-4 text-right">$21.90</div>
                        </li>
                        <li class="margin-left-30">
                            <div class="col-md-12 help-text">Tax is estimated and subject to slight changes. <br/>Final tax is shown at Order Confirmation.</div>
                        </li>
                    </ul>
                </div>
                <hr/>
                <div class="order-submission col-md-12 col-sm-12">
                    <ul class="col-md-12 col-sm-12">
                        <li class="checkout-subtotal">
                            <div class="col-md-8">Order total</div>
                            <div class="col-md-4 text-right">$386.82</div>
                        </li>
                        <li class="text-success">
                            <div class="col-md-8">You saved</div>
                            <div class="col-md-4 text-right">$192.58</div>
                        </li>
                        <li>
                            <div class="col-md-12 text-center">
                                <a href="#" class="btn btn-danger">PLACE ORDER</a>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>



    </div>
</div>

<%@include file="/WEB-INF/views/template/footer.jsp" %>