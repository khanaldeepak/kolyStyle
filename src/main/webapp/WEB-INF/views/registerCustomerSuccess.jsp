<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">

            <div class="col-md-3 col-sm-3">
<!---->
                <aside class="sidenav" role="navigation">

                    <!-- Sidebar -->
                    <ul class="side-nav">
                        <li class="heading"><a id="common-heading" href="/account/myaccount">my account</a></li>

                        <li class=""><a href="/account/profile?cm_sp=macys_account-_-my_account-_-my_profile">My Profile</a></li>

                        <li class=""><a href="/account/preferences?cm_sp=macys_account-_-my_account-_-my_preferences">My Preferences</a></li>

                        <li class=""><a href="/account/addressbook?cm_sp=macys_account-_-my_account-_-my_address_book">My Address Book</a></li>

                        <li class=""><a href="/account/wallet?cm_sp=macys_account-_-my_wallet-_-home">My Wallet</a></li>

                        <li class=""><a href="/wishlist/mylist?cm_sp=macys_account-_-my_account-_-my_lists">My Lists</a></li>

                        <li class="sub-head">MY ORDERS</li>

                        <li class=""><a href="/service/order-status?cm_sp=macys_account-_-my_orders-_-my_order_history">My Order History</a></li>

                        <li class="sub-head">GIFT CARDS</li>

                        <li class=""><a href="/service/gift/index.ognc?cm_sp=macys_account-_-gift_cards-_-gift_card_balance">Gift Card Balance</a></li>

                    </ul>
                    <!-- End Sidebar -->
                </aside>
<!---->
            </div>
        <div class="col-md-9 col-sm-9">
            <h1>Customer registered successfully</h1>
        </div>


        <section class="container" ng-app="cartApp">
          <p>

                <a href="<spring:url value="/product/productList"/>" class="btn btn-default">Products</a>
          </p>
        </section>
    </div>
</div>

<script src="<c:url value="/resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>