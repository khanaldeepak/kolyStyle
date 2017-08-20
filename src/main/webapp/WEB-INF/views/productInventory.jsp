<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/adminheader.jsp" %>
<section class="wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa fa-bars"></i> Product Inventory</h3>
            <ol class="breadcrumb">
                <li><i class="fa fa-home"></i><a href="/realtorsNepal/admin">Home</a></li>
                <li><i class="fa fa-bars"></i>Products</li>
                <li><i class="fa fa-square-o"></i>Product Inventory</li>
            </ol>
        </div>
    </div>
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">
                <div class="add-product-button">
                    <a href="<spring:url value="/admin/product/addProduct"/> " class="btn btn-primary">Add Product</a>
                </div>

                <header class="panel-heading">
                    Product Inventory
                </header>

                <table class="table-striped table-hover">
                    <tbody>
                    <tr>
                        <th class="image-wrapper"><i class="icon_profile"></i> Product Thumbnail</th>
                        <th class="product-table-name"><i class="icon_calendar"></i> Product Name</th>
                        <th class="product-table-category"><i class="icon_mail_alt"></i> Category</th>
                        <th class="product-table-gender"><i class="icon_pin_alt"></i> Gender</th>
                        <th class="product-table-price"><i class="icon_mobile"></i> Price</th>
                        <th class="product-table-action"><i class="icon_cogs"></i> Action</th>
                    </tr>
                    <c:forEach items="${products}" var="product">
                        <tr>
                            <td class="image-wrapper"><img src="<c:url value="/resources/image/${product.productId}.png"/> " alt="image" class="image-thumbnail"/></td>
                            <td class="product-table-name">${product.productName} <br/>SKU :  ${product.productSKU}</td>
                            <td class="product-table-category">${product.productCategory}</td>
                            <td class="product-table-gender">${product.productGender}</td>
                            <td class="product-table-price">${product.productPrice}</td>
                            <td class="product-table-action">
                                <div class="btn-group">
                                    <a class="btn btn-primary" href="<spring:url value="/product/viewProduct/${product.productId}" />"> <span class="glyphicon glyphicon-info-sign"></span> </a>
                                    <a class="btn btn-danger" href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"> <span class="glyphicon glyphicon glyphicon-trash"></span> </a>
                                    <a class="btn btn-success" href="<spring:url value="/admin/product/editProduct/${product.productId}" />"> <span class="glyphicon glyphicon glyphicon-pencil"></span> </a>
                                </div>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="add-product-button">
                    <a href="<spring:url value="/admin/product/addProduct"/> " class="btn btn-primary">Add Product</a>
                </div>

            </section>
        </div>
    </div>
    <!-- page end-->
</section>
<%@include file="/WEB-INF/views/template/adminfooter.jsp" %>