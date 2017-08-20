<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/adminheader.jsp" %>
<section class="wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa fa-bars"></i> Coupons</h3>
            <ol class="breadcrumb">
                <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                <li><i class="fa fa-bars"></i>Coupons</li>
                <li><i class="fa fa-square-o"></i>Coupons List</li>
            </ol>
        </div>
    </div>
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <div class="add-product-button">
                    <a href="<spring:url value="/admin/product/addProduct"/> " class="btn btn-primary">Add Coupon</a>
                </div>

                <header class="panel-heading">
                    Coupons Management
                </header>

                <table class="table-striped table-hover">
                    <tbody>
                    <tr>
                        <th class="coupon-table-id"> Coupon Id</th>
                        <th class="coupon-table-code"> Coupon Codes</th>
                        <th class="coupon-table-value"> Coupon Value</th>
                        <th class="coupon-table-details"> Coupon Details</th>
                        <th class="coupon-table-details"> Minimum Amount</th>
                        <th class="coupon-table-expiry"> Coupon Expiry</th>
                        <th class="coupon-table-status"> Coupon Status</th>
                        <th class="coupon-table-action"> Action</th>
                    </tr>
                    <c:forEach items="${promoCodesList}" var="promocode">
                        <tr>
                            <td class="coupon-table-id"><a href="<c:url value="/admin/profile/${promocode.promoCodeId}"/>">${promocode.promoCodeId}</a></td>
                            <td class="coupon-table-code">${promocode.promoCode}</td>
                            <td class="coupon-table-value">${promocode.promoPercent}</td>
                            <td class="coupon-table-details">${promocode.promoDetails}</td>
                            <td class="coupon-table-details">${promocode.minAmount}</td>
                            <td class="coupon-table-expiry">${promocode.promoExpiry}</td>
                            <td class="coupon-table-status">${promocode.active}</td>
                            <td class="coupon-table-action">
                                <div class="btn-group">
                                    <a class="btn btn-primary" href="<spring:url value="/product/viewProduct/${promocode.promoCodeId}" />"> <span class="glyphicon glyphicon-info-sign"></span> </a>
                                    <a class="btn btn-danger" href="<spring:url value="/admin/product/deleteProduct/${promocode.promoCodeId}" />"> <span class="glyphicon glyphicon glyphicon-trash"></span> </a>
                                    <a class="btn btn-success" href="<spring:url value="/admin/product/editProduct/${promocode.promoCodeId}" />"> <span class="glyphicon glyphicon glyphicon-pencil"></span> </a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="add-product-button">
                    <a href="<spring:url value="/admin/product/addProduct"/> " class="btn btn-primary">Add Coupon</a>
                </div>

            </section>
        </div>
    </div>
    <!-- page end-->
</section>
<%@include file="/WEB-INF/views/template/adminfooter.jsp" %>