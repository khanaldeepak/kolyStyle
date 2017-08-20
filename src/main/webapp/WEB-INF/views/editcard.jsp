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
                <div class="col-md-12">
                    <h3 class="text-moredanger">edit credit card</h3>
                    <p class="">Edit your credit card information up to date for faster checkout & manage all your payment information in one secure spot.</p>

                    <form:form name="cardForm" commandName="savedPayment"  id="addCard" action="${pageContext.request.contextPath}/customer/wallet/editcard" method="post">
                        <form:hidden path="savedPaymentId" value="${savedPayment.savedPaymentId}"/>
                        <c:if test="${not empty error}">
                            <div class="error" style="color: #ff0000;">${error}</div>
                        </c:if>
                        <hr/>
                        <div class="col-md-6">
                            <h3 class="text-moredanger">credit card information</h3>

                            <div class="form-group">
                                <label for="firstName">First Name</label><form:errors path="firstName" cssClass="error-message"/>
                                <form:input type="text" path="firstName" id="firstName" value="" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="lastName">Last Name</label><form:errors path="lastName" cssClass="error-message"/>
                                <form:input type="text" path="lastName" id="lastName" value="" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="cardType">Card type: </label><form:errors path="cardType" cssClass="error-message"/>
                                <form:input type="text" path="cardType" id="cardType" name="cardType" value="" class="form-control"/>
                            </div>
                            <div class="form-group">
                                <label for="cardNumber">Card Number: </label><form:errors path="cardNumber" cssClass="error-message"/>
                                <form:input type="phone" path="cardNumber" id="cardNumber" name="cardNumber" value="" class="form-control"/>
                            </div>

                            <div class="form-group">
                                <label for="cardExpiry">Expiration</label><form:errors path="cardExpiry" cssClass="error-message"/>
                                <form:input type="text" path="cardExpiry" id="cardExpiry" value="" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="cardSecurity">Security Code</label><form:errors path="cardSecurity" cssClass="error-message"/>
                                <form:input type="password" path="cardSecurity" id="cardSecurity" value="" class="form-Control" />
                            </div>
                        </div>
                        <div class="col-md-6">

                            <h3 class="text-moredanger">billing address</h3>


                            <div class="form-group">
                                <label for="billingStreet">Street Name</label><form:errors path="billingAddress.streetName" cssClass="error-message"/>
                                <form:input type="text" path="billingAddress.streetName" id="billingStreet" name="billingStreet" class="form-Control" value="" />
                            </div>

                            <div class="form-group">
                                <label for="billingApartmentNumber">Apartment Number</label>
                                <form:input type="text" path="billingAddress.apartmentNumber" id="billingApartmentNumber" value="" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="billingCity">City</label><form:errors path="billingAddress.city" cssClass="error-message"/>
                                <form:input type="text" path="billingAddress.city" id="billingCity" value="" class="form-Control" />
                            </div>

                            <div class="form-group"><form:errors path="billingAddress.state" cssClass="error-message"/>
                                <label for="billingState">State</label>
                                <form:input type="text" path="billingAddress.state" id="billingState" value="" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="billingCountry">Country</label><form:errors path="billingAddress.country" cssClass="error-message"/>
                                <form:input type="text" path="billingAddress.country" id="billingCountry" value="" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="billingZip">Zip Code</label><form:errors path="billingAddress.zipCode" cssClass="error-message"/>
                                <form:input type="text" path="billingAddress.zipCode" id="billingZip" value="" class="form-Control" />
                            </div>



                            <div class="form-group">
                                <label for="email">Email</label><form:errors path="email" cssClass="error-message"/>
                                <form:input type="text" path="email" id="email" value="" class="form-Control" />
                            </div>


                            <a href="<spring:url value="/customer/wallet"/>" class="btn btn-default margin-tb-5"/>CANCEL</a>
                            <input type="submit" value="SAVE CREDIT CARD" class="btn btn-danger margin-tb-5"/>
                        </div>


                    </form:form>

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