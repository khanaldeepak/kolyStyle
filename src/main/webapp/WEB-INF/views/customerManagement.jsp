      <%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@include file="/WEB-INF/views/template/adminheader.jsp" %>
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h3 class="page-header"><i class="fa fa fa-bars"></i> Customers</h3>
                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                        <li><i class="fa fa-bars"></i>Customers</li>
                        <li><i class="fa fa-square-o"></i>Customers List</li>
                    </ol>
                </div>
            </div>
            <!-- page start-->
            <div class="row">
                <div class="col-lg-12">
                    <section class="panel">
                        <div class="add-product-button">
                            <a href="<spring:url value="/admin/product/addProduct"/> " class="btn btn-primary">Add Customers</a>
                        </div>

                        <header class="panel-heading">
                            Customer Management
                        </header>

                        <table class="table-striped table-hover">
                            <tbody>
                            <tr>
                                <th class="image-wrapper"><i class="icon_profile"></i> Customer Name</th>
                                <th class="product-table-name"><i class="icon_calendar"></i> Email</th>
                                <th class="product-table-category"><i class="icon_mail_alt"></i> Phone</th>
                                <th class="product-table-gender"><i class="icon_pin_alt"></i> Username</th>
                                <th class="product-table-price"><i class="icon_mobile"></i> Active</th>
                                <th class="product-table-action"><i class="icon_cogs"></i> Action</th>
                            </tr>
                            <c:forEach items="${customerList}" var="customer">
                                <tr>
                                    <td class="image-wrapper"><a href="<c:url value="/admin/profile/${customer.username}"/>">${customer.customerName}</a></td>
                                    <td class="product-table-name">${customer.customerEmail}</td>
                                    <td class="product-table-category">${customer.customerPhone}</td>
                                    <td class="product-table-gender">${customer.username}</td>
                                    <td class="product-table-price">${customer.enabled}</td>
                                    <td class="product-table-action">
                                        <div class="btn-group">
                                            <a class="btn btn-primary" href="<spring:url value="/product/viewProduct/${customer.customerId}" />"> <span class="glyphicon glyphicon-info-sign"></span> </a>
                                            <a class="btn btn-danger" href="<spring:url value="/admin/product/deleteProduct/${customer.customerId}" />"> <span class="glyphicon glyphicon glyphicon-trash"></span> </a>
                                            <a class="btn btn-success" href="<spring:url value="/admin/product/editProduct/${customer.customerId}" />"> <span class="glyphicon glyphicon glyphicon-pencil"></span> </a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <div class="add-product-button">
                            <a href="<spring:url value="/admin/product/addProduct"/> " class="btn btn-primary">Add Customers</a>
                        </div>

                    </section>
                </div>
            </div>
            <!-- page end-->
        </section>
        <%@include file="/WEB-INF/views/template/adminfooter.jsp" %>