<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/adminheader.jsp" %>
<section class="wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa fa-bars"></i> Recent Orders</h3>
            <ol class="breadcrumb">
                <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                <li><i class="fa fa-bars"></i>Orders</li>
                <li><i class="fa fa-square-o"></i>Recent Orders</li>
            </ol>
        </div>
    </div>
    <!-- page start-->
    <div class="row">
        <div class="col-lg-12">
            <section class="panel">

                <div class="col-lg-12 col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2><i class="fa fa-flag-o red"></i><strong>Recent Orders</strong></h2>
                            <div class="panel-actions">
                                <a href="#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                                <a href="#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                                <a href="#" class="btn-close"><i class="fa fa-times"></i></a>
                            </div>
                        </div>
                        <div class="panel-body">
                            <table class="table bootstrap-datatable countries">
                                <thead>
                                <tr>
                                    <th>Order No</th>
                                    <th>Customer Name</th>
                                    <th>Phone</th>
                                    <th>Order Total</th>
                                    <th>Status</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>53258745</td>
                                    <td>Germany</td>
                                    <td>2563</td>
                                    <td>1025</td>
                                    <td>
                                        <div class="progress thin">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 73%">
                                            </div>
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="27" aria-valuemin="0" aria-valuemax="100" style="width: 27%">
                                            </div>
                                        </div>
                                        <span class="sr-only">73%</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>53258745</td>
                                    <td>India</td>
                                    <td>3652</td>
                                    <td>2563</td>
                                    <td>
                                        <div class="progress thin">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100" style="width: 57%">
                                            </div>
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="43" aria-valuemin="0" aria-valuemax="100" style="width: 43%">
                                            </div>
                                        </div>
                                        <span class="sr-only">57%</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>56845279</td>
                                    <td>Spain</td>
                                    <td>562</td>
                                    <td>452</td>
                                    <td>
                                        <div class="progress thin">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="93" aria-valuemin="0" aria-valuemax="100" style="width: 93%">
                                            </div>
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="7" aria-valuemin="0" aria-valuemax="100" style="width: 7%">
                                            </div>
                                        </div>
                                        <span class="sr-only">93%</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>56985745</td>
                                    <td>Russia</td>
                                    <td>1258</td>
                                    <td>958</td>
                                    <td>
                                        <div class="progress thin">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            </div>
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            </div>
                                        </div>
                                        <span class="sr-only">20%</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>98568745</td>
                                    <td>USA</td>
                                    <td>4856</td>
                                    <td>3621</td>
                                    <td>
                                        <div class="progress thin">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            </div>
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            </div>
                                        </div>
                                        <span class="sr-only">20%</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>78544785</td>
                                    <td>Brazil</td>
                                    <td>265</td>
                                    <td>102</td>
                                    <td>
                                        <div class="progress thin">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            </div>
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            </div>
                                        </div>
                                        <span class="sr-only">20%</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>856854785</td>
                                    <td>Coloumbia</td>
                                    <td>265</td>
                                    <td>102</td>
                                    <td>
                                        <div class="progress thin">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            </div>
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            </div>
                                        </div>
                                        <span class="sr-only">20%</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>589574856</td>
                                    <td>France</td>
                                    <td>265</td>
                                    <td>102</td>
                                    <td>
                                        <div class="progress thin">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                            </div>
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            </div>
                                        </div>
                                        <span class="sr-only">20%</span>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>

                </div>


            </section>
        </div>
    </div>
    <!-- page end-->
</section>
<%@include file="/WEB-INF/views/template/adminfooter.jsp" %>