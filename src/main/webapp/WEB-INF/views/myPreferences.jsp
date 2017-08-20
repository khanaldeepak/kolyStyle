<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container-full">

        <div class="col-md-3 col-sm-3">
            <%@include file="/WEB-INF/views/template/customerSidenav.jsp" %>
        </div>
        <div class="col-md-9 col-sm-9">
            <div class="col-md-12 border-grey">
                <h3 class="text-moredanger">my preferences</h3>
                <p class="">Be the first to get savings and offers when you sign up for Koly's emails and texts.</p>
                   <p> Your current email address is set to: <span class="text-success"><strong>${customer.customerEmail}</strong></span> <a href="<spring:url value="/customer/myprofile"/>">(Change)</a></p>
                <div class="col-md-12">
                    <form name="loginForm" commandName="customer" id="editProfile" action="${pageContext.request.contextPath}/customer/myprofile/editProfile" method="post">
                        <c:if test="${not empty error}">
                            <div class="error" style="color: #ff0000;">${error}</div>
                        </c:if>
                        <div class="col-md-12 border-btm-grey">
                            <div class="col-md-2">
                                <i class="fa fa-envelope fa-4x text-moredanger" aria-hidden="true"></i>
                            </div>
                            <div class="col-md-10">
                                <h3 class="text-moredanger">emails</h3>
                                <p>Receive emails about sales, offers & events.</p>
                            </div>
                        </div>
                        <div class="col-md-12 border-btm-grey">
                            <div class="col-md-2">
                                <i class="fa fa-mobile fa-4x text-moredanger" aria-hidden="true"></i>
                            </div>
                            <div class="col-md-10">
                                <h3 class="text-moredanger">texts</h3>
                                <p>Sign up for texts about sales, offers & events.</p>
                            </div>
                        </div>


                    </form>

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