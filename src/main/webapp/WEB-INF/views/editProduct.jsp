<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1>
            <p class="lead">Please update the product information here:</p>

        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" id="editNewProduct" method="post" commandName="product" enctype="multipart/form-data">

            <form:hidden path="productId" value="${product.productId}"/>

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-Control" value="${product.productName}" />
        </div>

        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="saree"/>Saree</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="lehengas"/>Lehengas</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="kurthi"/>Kurthi</label>

        </div>

        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}" />
        </div>

        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}" />
        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/>New</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used"/>Used</label>

        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active"/>Active</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="Inactive"/>Inactive</label>

        </div>

        <div class="form-group">
            <label for="unitInStock">Unit In Stock</label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}" />
        </div>

        <div class="form-group">
            <label for="manufacturer">Manufacturer</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}" />
        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload Picture</label>
            <form:input path="productImage" id="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>

        <input type="submit" value="Submit" class="btn btn-default"/>
        <a href="<c:url value="/admin/productInventory"/> " class="btn btn-default">Cancel</a>

        </form:form>

<%@include file="/WEB-INF/views/template/footer.jsp"%>