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
                        <h3 class="text-moredanger">${pageContext.request.userPrincipal.name}'s wallet</h3>

                        <p class="">Shop, save & checkout in a few clicks! Keep & manage all your payment information in one secure spot.</p>

                        <div class="col-md-12">
                            <div class="row">
                            <div class="col-md-12">
                                <h3 class="text-moredanger">my credit & debit cards</h3>
                            </div>
                            </div>
                            <div class="row">
                            <div class="col-md-12 text-right margin-btm-10">
                                <a href="<spring:url value="/customer/wallet/addcard"/>" class="btn btn-default">ADD A NEW CARD</a>
                            </div>
                            </div>
                            <div class="row creditcard-border">
                           <div class="col-md-2">
                               <i class="fa fa-cc-visa fa-2x visa-card" aria-hidden="true"></i>
                           </div>
                            <div class="col-md-5">
                                <p class="">Visa ************2599</p>

                            </div>
                            <div class="col-md-3">
                                <p class="">Expires: 03/2021</p>
                            </div>
                            <div class="col-md-2 text-right">
                                <i class="fa fa-pencil" aria-hidden="true"></i>
                            </div>
                            </div>


                        </div>
                        <div class="col-md-12">
                            <p class="security-button-bar">Note: For security, please do NOT email us your account number.</p>

                        </div>

                    </div>

                </div>

            </div>
        </div>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
