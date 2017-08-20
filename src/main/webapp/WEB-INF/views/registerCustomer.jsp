<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Create account</h1>
            <p>We'll email you an <span class="text-danger"><strong>EXTRA 15% OFF</strong></span> your next $100 purchase!*</p>

        </div>

        <form:form action="${pageContext.request.contextPath}/register" id="addNewProduct" method="post"
                   commandName="customer">
        <div class="basicinformation-wrapper col-md-12">


        <h3>Basic Information:</h3>
        
        <div class="form-group form-group-width">
            <label for="name">Full Name</label><form:errors path="customerName" cssStyle="color: #ff0000"/>
            <form:input path="customerName" id="name" class="form-Control input-height" />
        </div>

        <div class="form-group form-group-width">
            <label for="email">Email</label><span style="color: #ff0000">${emailMsg}</span><form:errors path="customerEmail" cssStyle="color: #ff0000"/>
            <form:input path="customerEmail" id="email" class="form-Control input-height" />
        </div>

        <div class="form-group form-group-width">
            <label for="phone">Phone</label><form:errors path="customerPhone" cssStyle="color: #ff0000"/>
            <form:input path="customerPhone" id="phone" class="form-Control input-height" />
        </div>

        <div class="form-group form-group-width">
            <label for="username">Username</label><span style="color: #ff0000">${usernameMsg}</span><form:errors path="username" cssStyle="color: #ff0000"/>
            <form:input path="username" id="username" class="form-Control input-height" />
        </div>

        <div class="form-group form-group-width">
            <label for="password">Password</label><form:errors path="password" cssStyle="color: #ff0000"/>
            <form:password path="password" id="password" class="form-Control input-height" />
            <p class="help-text">Tip: Use uppercase, lowercase and numbers for stronger password.</p>
            <p class="text-success"><i class="fa fa-check-square-o" aria-hidden="true"></i> Must be 7-16 characters</p>
            <p class="text-success"><i class="fa fa-check-square-o" aria-hidden="true"></i> Cannot contain spaces or . , - | \ / = _</p>
        </div>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="confirmpassword">Confirm Password</label><form:errors path="confirmpassword" cssStyle="color: #ff0000"/>--%>
            <%--<form:password path="confirmpassword" id="confirmpassword" class="form-Control" />--%>
        <%--</div>--%>
        <a href="#" class="exclusive-link">*Exclusions Apply.</a>
        <p class="terms-agree">By selecting "create account" you agree that you are subject to Koly's Notice of <a href="#" class="privacy-link">Privacy Practices</a> and <a href="#" class="legal-link">Legal Notice.</a></p>

            <input type="submit" value="Submit" class="btn btn-default"/>
            <a href="<c:url value="/"/> " class="btn btn-default">Cancel</a>

            </form:form>

            <div class="account-benefits col-md-12">
                <div class="col-md-4">
                    <div class="col-md-3 padding-2">
                        <i class="fa fa-shopping-cart fa-3x" aria-hidden="true"></i>
                    </div>
                    <div class="col-md-9">
                        <p class="benifit-lead">Enjoy faster checkout</p>
                        <p>Know your info is stored securely for every order.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-3  padding-2">
                        <i class="fa fa-tachometer fa-3x" aria-hidden="true"></i>
                    </div>
                    <div class="col-md-9">
                        <p class="benifit-lead">Track your orders</p>
                        <p>Follow purchases from checkout to delivery.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="col-md-3 padding-2">
                        <i class="fa fa-truck fa-3x" aria-hidden="true"></i>
                    </div>
                    <div class="col-md-9">
                        <p class="benifit-lead">Enjoy Free Shipping*</p>
                        <p>Free shipping within USA with order of $100 and above</p>
                    </div>
                </div>

            </div>

        </div>
        <%--<div class="basicinformation-wrapper col-md-12 hideme">--%>
        <%--<h3>Billing Address:</h3>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="billingStreet">Street Name</label>--%>
            <%--<form:input path="billingAddress.streetName" id="billingStreet" class="form-Control input-height" />--%>
        <%--</div>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="billingApartmentNumber">Apartment Number</label>--%>
            <%--<form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control input-height" />--%>
        <%--</div>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="billingCity">City</label>--%>
            <%--<form:input path="billingAddress.city" id="billingCity" class="form-Control input-height" />--%>
        <%--</div>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="billingState">State</label>--%>
            <%--<form:input path="billingAddress.state" id="billingState" class="form-Control input-height" />--%>
        <%--</div>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="billingCountry">Country</label>--%>
            <%--<form:input path="billingAddress.country" id="billingCountry" class="form-Control input-height" />--%>
        <%--</div>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="billingZip">Zip Code</label>--%>
            <%--<form:input path="billingAddress.zipCode" id="billingZip" class="form-Control input-height" />--%>
        <%--</div>--%>
        <%--</div>--%>

        <%--<div class="basicinformation-wrapper col-md-12 hideme">--%>

        <%--<h3>Shipping Address:</h3>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="shippingStreet">Street Name</label>--%>
            <%--<form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control input-height" />--%>
        <%--</div>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="shippingApartmentNumber">Apartment Number</label>--%>
            <%--<form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control input-height" />--%>
        <%--</div>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="shippingCity">City</label>--%>
            <%--<form:input path="shippingAddress.city" id="shippingCity" class="form-Control input-height" />--%>
        <%--</div>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="shippingState">State</label>--%>
            <%--<form:input path="shippingAddress.state" id="shippingState" class="form-Control input-height" />--%>
        <%--</div>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="shippingCountry">Country</label>--%>
            <%--<form:input path="shippingAddress.country" id="shippingCountry" class="form-Control input-height" />--%>
        <%--</div>--%>

        <%--<div class="form-group form-group-width">--%>
            <%--<label for="shippingZip">Zip Code</label>--%>
            <%--<form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control input-height" />--%>
        <%--</div>--%>

       <%----%>
        <%--<br><br>--%>


<%--</div>--%>
<%@include file="/WEB-INF/views/template/footer.jsp"%>