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
                <h3 class="text-moredanger">my address book</h3>
                <p class="help-text">* indicates required fields</p>
                <p class="">Create new shipping addresses and manage existing ones.
                    You can edit or remove them at any time.</p>
                <p class="">Change your default address by selecting "make primary"
                    under the new location.</p>
                <div class="col-md-12">

                        <div class="col-md-6">
                            <h3 class="text-moredanger">your shipping address(es)</h3>
                            <p class="text-success">Limited to 10 entries</p>

<!--Show Shipping Address List if customer have any saved address-->
                                <ul class="address-list">
                                    <li class="address-list-head">Primary Address</li>
                                    <li>${customer.shippingAddress.firstName} ${customer.shippingAddress.lastName}</li>
                                    <li>${customer.shippingAddress.streetName} <br/> ${customer.shippingAddress.apartmentNumber}</li>
                                    <li>${customer.shippingAddress.city}, ${customer.shippingAddress.state} - ${customer.shippingAddress.zipCode}</li>
                                    <li>${customer.shippingAddress.phoneNumber}</li>
                                    <li>
                                        <a href="#${customer.shippingAddress.shippingAddressId}">Edit</a>
                                        <a href="#${customer.shippingAddress.shippingAddressId}">Remove</a>
                                    </li>
                                </ul>


                        </div>
                        <div class="col-md-6">
                            <h3 class="text-moredanger">add/edit shipping address</h3>
                            <form:form name="shippingForm" commandName="customer"  id="editShipping" action="${pageContext.request.contextPath}/customer/addressbook/editShipping" method="post">
                            <form:hidden path="customerId" value="${customer.customerId}"/>
                            <c:if test="${not empty error}">
                                <div class="error" style="color: #ff0000;">${error}</div>
                            </c:if>
                            <div class="form-group">
                                <label for="firstName">First Name</label>
                                <form:input type="text" path="shippingAddress.firstName" id="firstName" name="firstName" class="form-Control" value="${customer.shippingAddress.firstName}" />
                            </div>

                            <div class="form-group">
                                <label for="lastName">Last Name</label>
                                <form:input type="text" path="shippingAddress.lastName" id="lastName" name="lastName" class="form-Control" value="${customer.shippingAddress.lastName}" />
                            </div>
                            
                            <div class="form-group">
                                <label for="shippingStreet">Street Name</label>
                                <form:input type="text" path="shippingAddress.streetName" id="shippingStreet" name="shippingStreet" class="form-Control" value="${customer.shippingAddress.streetName}" />
                            </div>

                            <div class="form-group">
                                <label for="shippingApartmentNumber">Apartment Number</label>
                                <form:input type="text" path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" value="${customer.shippingAddress.apartmentNumber}" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="shippingCity">City</label>
                                <form:input type="text" path="shippingAddress.city" id="shippingCity" value="${customer.shippingAddress.city}" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="shippingState">State</label>
                                <form:input type="text" path="shippingAddress.state" id="shippingState" value="${customer.shippingAddress.state}" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="shippingCountry">Country</label>
                                <form:input type="text" path="shippingAddress.country" id="shippingCountry" value="${customer.shippingAddress.country}" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="shippingZip">Zip Code</label>
                                <form:input type="text" path="shippingAddress.zipCode" id="shippingZip" value="${customer.shippingAddress.zipCode}" class="form-Control" />
                            </div>

                            <div class="form-group">
                                <label for="phoneNumber">Phone Number</label>
                                <form:input type="text" path="shippingAddress.phoneNumber" id="phoneNumber" name="phoneNumber" class="form-Control" value="${customer.shippingAddress.phoneNumber}" />
                            </div>

                            <input type="submit" value="UPDATE" class="btn btn-danger margin-tb-5"/>
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