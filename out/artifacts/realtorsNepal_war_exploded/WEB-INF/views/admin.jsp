
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Administrator Page</h1>
            <p class="lead">This is the admin portal</p>

        </div>
        <h3>
            <a href="<c:url value="/admin/productInventory"/>"> Product inventory</a>
        </h3>

        <p>Here you can view, check and modify the product inventory</p>
       
<%@include file="/WEB-INF/views/template/footer.jsp"%>