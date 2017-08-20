<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/adminheader.jsp" %>
<section class="wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa fa-bars"></i> Add Product</h3>
            <ol class="breadcrumb">
                <li><i class="fa fa-home"></i><a href="/realtorsNepal/admin">Home</a></li>
                <li><i class="fa fa-bars"></i>Products</li>
                <li><i class="fa fa-square-o"></i>Add Product</li>
            </ol>
        </div>
    </div>
    <!-- page start-->


        <div class="page-header">
            <h1 class="lead-text black-bold-text">Add Product</h1>
            <p class="lead black-bold-text">Fill in the below information to add a product:</p>

        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" cssClass="addNewProduct" id="addNewProduct" method="post" commandName="product" enctype="multipart/form-data">
    <div class="col-md-6 border-grey">
        <div class="form-group col-md-12">
            <label for="name">Product Name </label><form:errors path="productName" cssStyle="color: #ff0000;"/>
            <br/><form:input path="productName" id="name" class="form-Control col-md-12" placeholder="Product Name"/>
        </div>

        <div class="form-group col-md-4">
            <label for="price">Price </label><form:errors path="productPrice" cssStyle="color: #ff0000;"/>
            <br/><form:input path="productPrice" id="price" class="form-Control col-md-5" placeholder="Price" />
        </div>



        <div class="form-group col-md-4">
            <label for="unitInStock">Unit In Stock </label><form:errors path="unitInStock" cssStyle="color: #ff0000;"/>
            <br/><form:input path="unitInStock" id="unitInStock" class="form-Control col-md-5" placeholder="Unit in Stock" />
        </div>

        <div class="form-group col-md-4">
            <label for="manufacturer">Manufacturer </label><form:errors path="productManufacturer" cssStyle="color: #ff0000;"/>
            <br/><form:input path="productManufacturer" id="manufacturer" class="form-Control col-md-12" placeholder="Manufacturer"/>
        </div>

        <div class="form-group col-md-12">
            <label for="productsku">Product SKU </label><form:errors path="productSKU" cssStyle="color: #ff0000;"/>
            <br/><form:input path="productSKU" id="productsku" class="form-Control col-md-3" placeholder="Product SKU" />
        </div>

        <div class="form-group col-md-12">
            <label for="description">Description </label><form:errors path="productDescription" cssStyle="color: #ff0000;"/>
            <br/><form:textarea path="productDescription" id="description" class="form-Control col-md-12 height-160" placeholder="Product Description" />
        </div>

        <div class="form-group col-md-12">
            <label class="control-label" for="productImage">Upload Picture</label>
            <br/><form:input path="productImage" id="productImage" type="file" class="form:input-large" />
        </div>

        <br><br>

    </div>
    <div class="col-md-6 border-grey">

                <div class="form-group col-md-12">
                    <label for="gender">Gender </label><form:errors path="productGender" cssStyle="color: #ff0000;"/>
                    <br/><label class="checkbox-inline"><form:radiobutton path="productGender" id="gender" value="Male"/> Male</label>
                    <label class="checkbox-inline"><form:radiobutton path="productGender" id="gender" value="Female"/> Female</label>

                </div>

                <div class="form-group col-md-12">
                    <label for="category">Category </label><form:errors path="productCategory" cssStyle="color: #ff0000;"/>
                    <br/><label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="saree"/> Saree</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="lehengas"/> Lehengas</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="kurthi"/> Kurthi</label>

                </div>

                <div class="form-group col-md-6">
                    <label for="condition">Condition </label><form:errors path="productCondition" cssStyle="color: #ff0000;"/>
                    <br/><label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/> New</label>
                    <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used"/> Used</label>

                </div>

                <div class="form-group col-md-6">
                    <label for="status">Status </label><form:errors path="productStatus" cssStyle="color: #ff0000;"/>
                    <br/><label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active"/> Active</label>
                    <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="Inactive"/> Inactive</label>

                </div>

                <div class="form-group col-md-12">
                    <label for="status">Listing Type </label><form:errors path="listingType" cssStyle="color: #ff0000;"/>
                    <br/><label class="checkbox-inline"><form:radiobutton path="listingType" id="listing" value="Featured"/> Featured</label>
                    <label class="checkbox-inline"><form:radiobutton path="listingType" id="listing" value="Latest"/> Latest</label>
                    <label class="checkbox-inline"><form:radiobutton path="listingType" id="listing" value="BestSeller"/> Best Seller</label>
                    <label class="checkbox-inline"><form:radiobutton path="listingType" id="listing" value="Special"/> Special</label>

                </div>
                <div class="form-group col-md-12">
                    <input type="submit" value="Submit" class="btn btn-default"/>
                    <a href="<c:url value="/admin/productInventory"/> " class="btn btn-default">Cancel</a>
                </div>

    </div>

    </form:form>
        <!-- page end-->
</section>
<%@include file="/WEB-INF/views/template/adminfooter.jsp" %>