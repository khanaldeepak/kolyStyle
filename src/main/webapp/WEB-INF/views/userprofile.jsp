<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/adminheader.jsp" %>
<section class="wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa fa-bars"></i> Customer Profile</h3>
            <ol class="breadcrumb">
                <li><i class="fa fa-home"></i><a href="<c:url value="/admin"/>">Home</a></li>
                <li><i class="fa fa-bars"></i><a href="<c:url value="/admin/customer"/>">Customers</a></li>
                <li><i class="fa fa-square-o"></i>Customer Profile</li>
            </ol>
        </div>
    </div>
    <!-- page start-->
    <div class="row">
        <!-- profile-widget -->
        <div class="col-lg-12">
            <div class="profile-widget profile-widget-info">
                <div class="panel-body">
                    <div class="col-lg-2 col-sm-2">
                        <h4>${customer.customerName}</h4>
                        <div class="follow-ava">
                            <img src="<c:url value="/resources/image/profile-widget-avatar.jpg"/> " alt="">
                        </div>
                        <h6>Customer</h6>
                    </div>
                    <div class="col-lg-2 col-sm-2 follow-info">
                        <p>Hello I'm ${customer.customerName}, your frequent customer.</p>
                        <p>@${customer.username}</p>
                        <p><i class="fa fa-twitter">${customer.customerEmail}</i></p>
                        <h6>
                            <span><i class="icon_clock_alt"></i>11:05 AM</span>
                            <span><i class="icon_calendar"></i>25.10.13</span>
                            <span><i class="icon_pin_alt"></i>NY</span>
                        </h6>
                    </div>
                    <div class="col-lg-2 col-sm-6 follow-info weather-category">
                        <ul>
                            <li class="active">

                                <i class="fa fa-comments fa-2x"> </i><br>
                                Posted 500 reviews
                            </li>

                        </ul>
                    </div>
                    <div class="col-lg-2 col-sm-6 follow-info weather-category">
                        <ul>
                            <li class="active">

                                <i class="fa fa-shopping-cart fa-2x" aria-hidden="true"></i><br>
                                Customer Cart
                            </li>

                        </ul>
                    </div>
                    <div class="col-lg-2 col-sm-6 follow-info weather-category">
                        <ul>
                            <li class="active">

                                <i class="fa fa-bell fa-2x"> </i><br>
                                25 Orders to date
                            </li>

                        </ul>
                    </div>
                    <div class="col-lg-2 col-sm-6 follow-info weather-category">
                        <ul>
                            <li class="active">

                                <i class="fa fa-tachometer fa-2x"> </i><br>

                                Spent $1,242 to date
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <header class="panel-heading tab-bg-info">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a data-toggle="tab" href="#profile">
                                <i class="icon-home"></i>
                                Profile
                            </a>
                        </li>
                        <li>
                            <a data-toggle="tab" href="#recent-activity">
                                <i class="icon-user"></i>
                                Order History
                            </a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#edit-profile">
                                <i class="icon-envelope"></i>
                                Edit Profile
                            </a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#preferences">
                                <i class="icon-envelope"></i>
                                Preferences
                            </a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#customer-address">
                                <i class="icon-envelope"></i>
                                Addresses
                            </a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#customer-wallet">
                                <i class="icon-envelope"></i>
                                 Wallet
                            </a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#customer-list">
                                <i class="icon-envelope"></i>
                                Wish List
                            </a>
                        </li>

                        <li class="">
                            <a data-toggle="tab" href="#customer-giftcards">
                                <i class="icon-envelope"></i>
                                Gift Cards
                            </a>
                        </li>
                        <li class="">
                            <a data-toggle="tab" href="#customer-cart">
                                <i class="icon-envelope"></i>
                                Cart
                            </a>
                        </li>
                    </ul>
                </header>
                <div class="panel-body">
                    <div class="tab-content">
                        <div id="recent-activity" class="tab-pane">
                            <div class="profile-activity">
                                <div class="act-time">
                                    <div class="activity-body act-in">
                                        <span class="arrow"></span>
                                        <div class="text">
                                            <a href="#" class="activity-img"><img class="avatar" src="<c:url value="/resources/image/chat-avatar.jpg"/>" alt=""></a>
                                            <p class="attribution"><a href="#">Jonatanh Doe</a> at 4:25pm, 30th Octmber 2014</p>
                                            <p>It is a long established fact that a reader will be distracted layout</p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- profile -->
                        <div id="profile" class="tab-pane active">
                            <section class="panel">
                                <div class="panel-body bio-graph-info">
                                    <h1 class="text-primary">${customer.customerName}'s Personal Information</h1>
                                    <div class="row">
                                        <div class="bio-row">
                                            <p><span>Full Name </span>: ${customer.customerName} </p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Account Status </span>: ${customer.enabled}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Birthday</span>: ${customer.customerDob}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Country </span>: United</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Gender </span>: ${customer.customerGender}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Email </span>: ${customer.customerEmail}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Mobile </span>: ${customer.customerPhone}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Phone </span>:  (+021) 956 789123</p>
                                        </div>
                                    </div>

                                    <div class="bio-graph-info">
                                        <h1 class="text-primary">${customer.customerName}'s Mailing Address</h1>
                                    </div>
                                    <div class="row">

                                        <div class="bio-row">
                                            <p><span>Street Address </span>:  ${customer.mailingAddress.streetName}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Apt / Suite </span>:  ${customer.mailingAddress.apartmentNumber}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>City </span>:  ${customer.mailingAddress.city}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>State </span>:  ${customer.mailingAddress.state}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Country </span>:   ${customer.mailingAddress.country}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Zip Code </span>:   ${customer.mailingAddress.zipCode}</p>
                                        </div>
                                    </div>
                                </div>
                            </section>

                        </div>
                        <!-- edit-profile -->
                        <div id="edit-profile" class="tab-pane">
                            <section class="panel">
                                <div class="panel-body bio-graph-info">
                                    <h1> Profile Info</h1>
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">First Name</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="f-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Last Name</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="l-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">About Me</label>
                                            <div class="col-lg-10">
                                                <textarea name="" id="" class="form-control" cols="30" rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Country</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="c-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Birthday</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="b-day" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Occupation</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="occupation" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Email</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="email" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Mobile</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="mobile" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Website URL</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="url" placeholder="http://www.demowebsite.com ">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-offset-2 col-lg-10">
                                                <button type="submit" class="btn btn-primary">Save</button>
                                                <button type="button" class="btn btn-danger">Cancel</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </section>
                        </div>
                        <!--Preferences-->
                        <div id="preferences" class="tab-pane">
                            <section class="panel">
                                <div class="panel-body bio-graph-info">
                                    <h1> Preferences</h1>
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">First Name</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="f-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Last Name</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="l-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">About Me</label>
                                            <div class="col-lg-10">
                                                <textarea name="" id="" class="form-control" cols="30" rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Country</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="c-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Birthday</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="b-day" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Occupation</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="occupation" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Email</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="email" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Mobile</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="mobile" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Website URL</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="url" placeholder="http://www.demowebsite.com ">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-offset-2 col-lg-10">
                                                <button type="submit" class="btn btn-primary">Save</button>
                                                <button type="button" class="btn btn-danger">Cancel</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </section>
                        </div>
                    <!--Addresses-->
                        <div id="customer-address" class="tab-pane">
                            <section class="panel">
                                <div class="panel-body bio-graph-info">
                                    <h1> Shipping Addresses</h1>
                                    <div class="row">
                                        <div class="bio-row">
                                            <p><span>Street Address </span>: ${customer.shippingAddress.streetName} </p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Apt No / Suite </span>: ${customer.shippingAddress.apartmentNumber}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>City</span>: ${customer.shippingAddress.city}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>State </span>: ${customer.shippingAddress.state}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Country </span>: ${customer.shippingAddress.country}</p>
                                        </div>
                                        <div class="bio-row">
                                            <p><span>Zip Code </span>: ${customer.shippingAddress.zipCode}</p>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    <!--Wallet-->
                        <div id="customer-wallet" class="tab-pane">
                            <section class="panel">
                                <div class="panel-body bio-graph-info">
                                    <h1> Saved Payments</h1>

                                    <div class="profile-activity">
                                        <div class="act-time">
                                            <div class="activity-body act-in">
                                                <span class="arrow"></span>
                                                <div class="row">
                                                    <ul class="col-md-12 card-border">
                                                        <li class="col-md-12 card-border-header">Card Details</li>
                                                        <li class="col-md-3"><span>Card Type :</span>${customer.savedPayment.cardType}</li>
                                                        <li class="col-md-3"><span>Card Number :</span>${customer.savedPayment.cardNumber}</li>
                                                        <li class="col-md-3"><span>Exp :</span>${customer.savedPayment.cardExpiry}</li>
                                                        <li class="col-md-3"><span>Security :</span>${customer.savedPayment.cardSecurity}</li>
                                                    </ul>

                                                    <ul class="col-md-12 card-border">
                                                        <li class="col-md-12 card-border-header">Billing Details</li>
                                                        <li class="col-md-3"><span>First Name :</span> ${customer.savedPayment.firstName}</li>
                                                        <li class="col-md-3"><span>Last Name :</span> ${customer.savedPayment.lastName}</li>
                                                        <li class="col-md-3"><span>Email :</span>${customer.savedPayment.email}</li>
                                                        <li class="col-md-3"><span>Phone :</span>${customer.savedPayment.phone}</li>
                                                        <li class="col-md-3"><span>Street Name :</span>${customer.savedPayment.billingAddress.streetName}</li>
                                                        <li class="col-md-3"><span>Apt / Suite :</span>${customer.savedPayment.billingAddress.apartmentNumber}</li>
                                                        <li class="col-md-3"><span>City :</span>${customer.savedPayment.billingAddress.city}</li>
                                                        <li class="col-md-3"><span>State :</span>${customer.savedPayment.billingAddress.state}</li>
                                                        <li class="col-md-3"><span>Zip Code :</span>${customer.savedPayment.billingAddress.zipCode}</li>
                                                        <li class="col-md-3"><span>Country :</span>${customer.savedPayment.billingAddress.country}</li>
                                                    </ul>
                                               </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </section>
                        </div>
                    <!--Wish List-->
                        <div id="customer-list" class="tab-pane">
                            <section class="panel">
                                <div class="panel-body bio-graph-info">
                                    <h1> Wish List</h1>
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">First Name</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="f-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Last Name</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="l-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">About Me</label>
                                            <div class="col-lg-10">
                                                <textarea name="" id="" class="form-control" cols="30" rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Country</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="c-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Birthday</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="b-day" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Occupation</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="occupation" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Email</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="email" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Mobile</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="mobile" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Website URL</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="url" placeholder="http://www.demowebsite.com ">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-offset-2 col-lg-10">
                                                <button type="submit" class="btn btn-primary">Save</button>
                                                <button type="button" class="btn btn-danger">Cancel</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </section>
                        </div>
                    <!--Gift Cards-->
                        <div id="customer-giftcards" class="tab-pane">
                            <section class="panel">
                                <div class="panel-body bio-graph-info">
                                    <h1> Gift Cards</h1>
                                    <form class="form-horizontal" role="form">
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">First Name</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="f-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Last Name</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="l-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">About Me</label>
                                            <div class="col-lg-10">
                                                <textarea name="" id="" class="form-control" cols="30" rows="5"></textarea>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Country</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="c-name" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Birthday</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="b-day" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Occupation</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="occupation" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Email</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="email" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Mobile</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="mobile" placeholder=" ">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-lg-2 control-label">Website URL</label>
                                            <div class="col-lg-6">
                                                <input type="text" class="form-control" id="url" placeholder="http://www.demowebsite.com ">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="col-lg-offset-2 col-lg-10">
                                                <button type="submit" class="btn btn-primary">Save</button>
                                                <button type="button" class="btn btn-danger">Cancel</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </section>
                        </div>
                    <!--Carts-->
                        <div id="customer-cart" class="tab-pane">
                            <section class="panel">
                                <div class="panel-body bio-graph-info">
                                    <h1> Cart</h1>
                                    <section class="container" ng-app="cartApp">
                                        <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">
                                            <div>
                                                <a class="btn bg-danger pull-left" ng-click="clearCart()"><span class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
                                                <a href="<spring:url value="/order/${cartId}"/>" class="btn btn-success pull-right">
                                                    <span class="glyphicon glyphicon-shopping-cart"></span>Checkout</a>
                                            </div>

                                            <table class="table table-hover">
                                                <tr>
                                                    <th>Product</th>
                                                    <th>Unit Price</th>
                                                    <th>Quantity</th>
                                                    <th>Price</th>
                                                    <th>Action</th>
                                                </tr>
                                                <tr ng-repeat = "item in cart.cartItems">
                                                    <td>{{item.product.productName}}</td>
                                                    <td>{{item.product.productPrice}}</td>
                                                    <td>{{item.quantity}}</td>
                                                    <td>{{item.totalPrice}}</td>
                                                    <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                                                        <span class="glyphicon glyphicon-remove"></span>remove</a></td>
                                                </tr>
                                                <tr>
                                                    <th></th>
                                                    <th></th>
                                                    <th>Grand Total</th>
                                                    <th>{{calGrandTotal()}}</th>
                                                    <th></th>
                                                </tr>
                                            </table>

                                            <a href="<spring:url value="/productList"/>" class="btn btn-default">Continue Shopping</a>
                                        </div>
                                    </section>
                                </div>
                            </section>
                        </div>

                    </div>
                </div>
            </section>
        </div>
    </div>
    <!-- page end-->
</section>
<script src="<c:url value="/resources/js/controller.js"/>"></script>
<%@include file="/WEB-INF/views/template/adminfooter.jsp" %>