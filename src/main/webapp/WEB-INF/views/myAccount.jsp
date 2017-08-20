<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container-full">

        <div class="col-md-3 col-sm-3">
            <%@include file="/WEB-INF/views/template/customerSidenav.jsp" %>
        </div>
        <div class="col-md-9 col-sm-9">
            <div class="col-md-12 border-grey">
                <h3 class="text-moredanger">my account</h3>
                <h4>hi ${pageContext.request.userPrincipal.name}!</h4>
                <div class="col-md-12">
                    <div class="col-md-2">
                        <i class="fa fa-address-book fa-4x text-moredanger" aria-hidden="true"></i>
                    </div>
                    <div class="col-md-10">
                        <p class="text-moredanger">my profile</p>
                        <ul>
                            <li>update your personal information</li>
                            <li>go green with paperless statements</li>
                        </ul>
                        <a href="<spring:url value="/customer/myprofile"/>">My Profile</a>
                    </div>


                </div>
                <div class="col-md-12">
                    <div class="col-md-2">
                        <i class="fa fa-envelope fa-4x text-moredanger" aria-hidden="true"></i>
                    </div>
                    <div class="col-md-10">
                        <p class="text-moredanger">my preferences</p>
                        <ul>
                            <li>Be the first to get savings and offers
                                when you sign up for Koly's emails and texts</li>
                        </ul>
                        <a href="#">My Preferences</a>
                    </div>

                </div>
                <div class="col-md-12">
                    <h3 class="text-moredanger">my stats</h3>
                    <div class="col-md-4">
                        <p>Koly's Stars</p>
                        <p>collected</p>
                    </div>
                    <div class="col-md-4">
                        <p>reviews written</p>
                        <a href="#">Write A Review</a>
                    </div>
                    <div class="col-md-4">
                        <p>helpful upvotes</p>
                        <p>earned</p>
                    </div>
                </div>
            </div>
            <div class="col-md-12 border-grey">
                <h3 class="text-moredanger">my wallet</h3>
                    <div class="col-md-2">
                        <i class="fa fa-briefcase fa-4x text-moredanger" aria-hidden="true"></i>
                    </div>
                    <div class="col-md-6">
                        <p>great news! there is <strong>1 offer</strong> in your wallet. See It Now</p>
                        <p>my wallet is a great new way to store & manage your Koly's offers & payment options online. Check It Out</p>
                    </div>
                <div class="col-md-4">
                    <a class="btn btn-default">DEALS & PROMOTIONS</a>
                </div>


            </div>
            <div class="col-md-12 border-grey">
                <h3 class="text-moredanger">my orders</h3>
                <div class="col-md-2">
                    <i class="fa fa-shopping-bag fa-4x text-moredanger" aria-hidden="true"></i>
                </div>
                <div class="col-md-10">
                    <a href="#">View Order History</a>
                </div>

            </div>
            <div class="col-md-12 border-grey">
                <h3 class="text-moredanger">my lists</h3>
                <div class="col-md-2">
                    <i class="fa fa-file-text fa-4x text-moredanger" aria-hidden="true"></i>
                </div>
                <div class="col-md-10">
                    <a href="#">${pageContext.request.userPrincipal.name} List</a>
                </div>
            </div>
            <div class="col-md-12">

            </div>
            <div class="col-md-12">

            </div>
        </div>

    </div>
</div>

<script src="<c:url value="/resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>