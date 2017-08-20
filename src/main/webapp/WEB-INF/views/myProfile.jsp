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
                <h3 class="text-moredanger">my profile</h3>
                <p class="">Keep your mailing address below up to date to receive exclusive Koly's offers & promotions by mail.</p>
                <div class="col-md-12">
                    <form:form name="profileForm" commandName="customer"  id="editProfile" action="${pageContext.request.contextPath}/customer/myprofile/editProfile" method="post">
                        <form:hidden path="customerId" value="${customer.customerId}"/>

                        <form:hidden path="username" value="${customer.username}"/>
                        <c:if test="${not empty error}">
                            <div class="error" style="color: #ff0000;">${error}</div>
                        </c:if>
<div class="col-md-6">
                        <div class="form-group">
                            <label for="username">Full Name: </label><form:errors path="customerName" cssStyle="color: #ff0000"/>
                            <form:input type="text" path="customerName" id="customerName" name="fullname" value="${customer.customerName}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone Number: </label><form:errors path="customerPhone" cssStyle="color: #ff0000"/>
                            <form:input type="text" path="customerPhone" id="customerPhone" name="phone" value="${customer.customerPhone}" class="form-control"/>
                        </div>
                        <div class="form-group">
                            <label for="shippingStreet">Street Name</label>
                            <form:input type="text" path="mailingAddress.streetName" id="shippingStreet" name="shippingStreet" class="form-Control" value="${customer.mailingAddress.streetName}" />
                        </div>

                        <div class="form-group">
                            <label for="shippingApartmentNumber">Apartment Number</label>
                            <form:input type="text" path="mailingAddress.apartmentNumber" id="shippingApartmentNumber" value="${customer.mailingAddress.apartmentNumber}" class="form-Control" />
                        </div>

                        <div class="form-group">
                            <label for="shippingCity">City</label>
                            <form:input type="text" path="mailingAddress.city" id="shippingCity" value="${customer.mailingAddress.city}" class="form-Control" />
                        </div>

                        <div class="form-group">
                            <label for="shippingState">State</label>
                            <form:input type="text" path="mailingAddress.state" id="shippingState" value="${customer.mailingAddress.state}" class="form-Control" />
                        </div>

                        <div class="form-group">
                            <label for="shippingCountry">Country</label>
                            <form:input type="text" path="mailingAddress.country" id="shippingCountry" value="${customer.mailingAddress.country}" class="form-Control" />
                        </div>

                        <div class="form-group">
                            <label for="shippingZip">Zip Code</label>
                            <form:input type="text" path="mailingAddress.zipCode" id="shippingZip" value="${customer.mailingAddress.zipCode}" class="form-Control" />
                        </div>
</div>
                        <div class="col-md-6">
                        <div class="form-group">
                            <label for="birthDate">Birth Date</label>
                            <form:input type="text" path="customerDob" id="birthDate" value="${customer.customerDob}" class="form-Control" />
                        </div>

                        <div class="form-group">
                            <label for="gender">Gender</label>
                            <form:input type="text" path="customerGender" id="gender" value="${customer.customerGender}" class="form-Control" />
                        </div>

                        <div class="form-group">
                            <label for="email">Email</label>
                            <form:input type="text" path="customerEmail" id="email" value="${customer.customerEmail}" class="form-Control" />
                        </div>

                        <%--<div class="form-group">--%>
                            <%--<label for="verifyEmail">Verify Email</label>--%>
                            <%--<form:input type="text" path="verifyEmail" id="verifyEmail" value="${customer.verifyEmail}" class="form-Control" />--%>
                        <%--</div>--%>

                        <div class="form-group">
                            <label for="password">Password</label>
                            <form:input type="password" path="password" id="password" value="${customer.password}" class="form-Control" />
                        </div>

                        <%--<div class="form-group">--%>
                            <%--<label for="verifyPassword">Verify Password</label>--%>
                            <%--<form:input type="password" path="verifyPassword" id="verifyPassword" value="${customer.verifyPassword}" class="form-Control" />--%>
                        <%--</div>--%>

                        <%--<div class="form-group">--%>
                            <%--<label for="securityQuestion">Security Question</label>--%>
                            <%--<form:input type="text" path="securityQuestion" id="securityQuestion" class="form-Control" />--%>
                        <%--</div>--%>

                        <%--<div class="form-group">--%>
                            <%--<label for="securityAnswer">Answer</label>--%>
                            <%--<form:input type="password" path="securityAnswer" id="securityAnswer" class="form-Control" />--%>
                        <%--</div>--%>

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