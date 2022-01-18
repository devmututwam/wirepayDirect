<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 23/11/2021
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>

<jsp:include page="../layout/header.jsp"/>

<!-- C3 chart -->
<link rel="stylesheet" href="<c:url value="/assets/bower/c3/css/c3.css"/>" type="text/css" media="all">
<!-- Data Table Css -->
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/bower/datatables.net-bs4/css/dataTables.bootstrap4.min.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/data-table/css/buttons.dataTables.min.css"/>"/>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/bower/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css"/>"/>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/pages/data-table/extensions/responsive/css/responsive.dataTables.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/jquery.filer/css/jquery.filer.css"/>"/>
<!-- Style.css -->

<%--Ecommerce CSS--%>
<!-- Favicon icon -->
<link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
<!-- Google font-->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css" href="../bower_components/bootstrap/css/bootstrap.min.css">
<!-- themify-icons line icon -->
<link rel="stylesheet" type="text/css" href="assets/icon/themify-icons/themify-icons.css">
<!-- ico font -->
<link rel="stylesheet" type="text/css" href="assets/icon/icofont/css/icofont.css">
<!-- flag icon framework css -->
<link rel="stylesheet" type="text/css" href="assets/pages/flag-icon/flag-icon.min.css">
<!-- Menu-Search css -->
<link rel="stylesheet" type="text/css" href="assets/pages/menu-search/css/component.css">
<!-- C3 chart -->
<link rel="stylesheet" href="../bower_components/c3/css/c3.css" type="text/css" media="all">
<!-- Data Table Css -->
<link rel="stylesheet" type="text/css" href="../bower_components/datatables.net-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="assets/pages/data-table/css/buttons.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="../bower_components/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css">
<link rel="stylesheet" type="text/css" href="assets/pages/data-table/extensions/responsive/css/responsive.dataTables.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<!--color css-->

<link rel="stylesheet" type="text/css" href="assets/css/linearicons.css" >
<link rel="stylesheet" type="text/css" href="assets/css/simple-line-icons.css">
<link rel="stylesheet" type="text/css" href="assets/css/ionicons.css">
<link rel="stylesheet" type="text/css" href="assets/css/jquery.mCustomScrollbar.css">

<jsp:include page="../layout/navigationBar.jsp"/>
<jsp:include page="../layout/sideBar.jsp"/>

<div class="page-header">
    <div class="page-header-title">
        <h4>Dashboard</h4>
    </div>
    <div class="page-header-breadcrumb">
        <ul class="breadcrumb-title">
            <li class="breadcrumb-item">
                <a href="index.html">
                    <i class="icofont icofont-home"></i>
                </a>
            </li>
            <li class="breadcrumb-item"><a href="#!">Dashboard</a>
            </li>
        </ul>
    </div>
</div>
<div class="page-body" id="app">

    <%--Start Ecommerce Stuff--%>
        <div class="page-body">
            <div class="row">
                <!-- counter-card-1 start-->
                <div class="col-md-12 col-xl-4">
                    <div class="card counter-card-1">
                        <div class="card-block-big">
                            <div>
                                <h3>Current Balance</h3>
                                <p class="text-success">Account Name: Mututwa Mututwa <br> Bank: Zanaco <br> Branch: Mongu
                                    <span class="f-right text-primary">
                                        <i class="icofont icofont-money"></i>ZMW 7,620,014.89
                                    </span></p>
                                <div class="progress ">
                                    <div class="progress-bar progress-bar-striped progress-xs progress-bar-pink" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <i class="icofont icofont-wallet"></i>
                        </div>
                    </div>
                </div>
                <!-- counter-card-1 end-->
                <!-- counter-card-2 start -->
                <div class="col-md-6 col-xl-4">
                    <div class="card counter-card-2">
                        <div class="card-block-big">
                            <div>
                                <h3>Pending Transactions</h3>
                                <p><a  href="userTransactions/getUserTransactionsByUser" class="text-success">View transactions</a>
                                    <span class="f-right text-success">
                                        <i class="icofont icofont-numbered"></i>
                                        27</span></p>
                                <div class="progress ">
                                    <div class="progress-bar progress-bar-striped progress-xs progress-bar-success" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <i class="icofont icofont-listing-number"></i>
                        </div>
                    </div>
                </div>
                <!-- counter-card-2 end -->
                <!-- counter-card-3 start -->
                <div class="col-md-6 col-xl-4">
                    <div class="card counter-card-3">
                        <div class="card-block-big">
                            <div>
                                <h3>Completed Transactions</h3>
                                <p><a  href="userTransactions/getUserTransactionsByUser" class="text-success">View transactions</a>
                                    <span class="f-right text-default">
                                                            <i class="icofont icofont-numbered"></i>
                                                            46
                                                            </span></p>
                                <div class="progress ">
                                    <div class="progress-bar progress-bar-striped progress-xs progress-bar-default" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                            <i class="icofont icofont-numbered"></i>
                        </div>
                    </div>
                </div>
                <!-- counter-card-3 end -->
                <!-- Monthly Growth Chart start-->
                <div class="col-xl-6">
                    <div class="card">
                        <div class="card-header">
                            <h5>Monthly Statistics</h5>
                        </div>
                        <div class="card-block">
                            <div id="chart4"></div>
                        </div>
                    </div>
                </div>
                <!-- Monthly Growth Chart end-->
                <!-- Google Chart start-->
                <div class="col-xl-6">
                    <div class="card">
                        <div class="card-header">
                            <h5>Annual Activity Chart</h5>
                        </div>
                        <div class="card-block">
                            <div id="chart_Donut" style="width: 100%; height: 320px;"></div>
                        </div>
                    </div>
                </div>
                <!-- Google Chart end-->
                <!-- Recent Order table start -->
                <div class="col-xl-8">
                    <div class="card">
                        <div class="card-header">
                            <h5>RECENT TRANSACTIONS</h5>
                        </div>
                        <div class="card-block">

                            <div class="dt-responsive table-responsive">
                                <table id="simpletable" class="table table-striped table-bordered nowrap">
                                    <thead>
                                    <tr>
                                        <th>No.</th>
                                        <th>Service Name</th>
                                        <th>PRN</th>
                                        <th>Amount</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:if test="${not empty transactions}">
                                        <c:forEach var="transaction" items="${transactions}" varStatus="counter">
                                            <tr>
                                                <td>${counter.count}.</td>
                                                <td>${transaction.serviceCode}</td>
                                                <td>${transaction.prnNumber}</td>
                                                <td>${transaction.prnAmount}</td>
                                                <td>${transaction.status}</td>
                                                <td> <button type="button" class="icofont icofont-paper-plane text-success" >Pay</button> </td>
                                            </tr>
                                        </c:forEach>
                                    </c:if>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Recent Order table end -->
                <div class="col-sm-12 col-xl-4">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Daily Visitors</h5>
                                </div>
                                <div class="card-block">
                                    <div id="pie-chart" style="height:300px"></div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>

            <div class="col-sm-12">
                <!-- User activities chart start -->
                <div class="card analytic-user">
                    <div class="card-block-big text-center">
                        <i class="icofont icofont-wallet"></i>
                        <h1>ZMW 324,587</h1>
                        <h4>Total Transacted</h4>
                    </div>
                    <div class="card-footer p-t-25 p-b-25">
                        <p class="m-b-0" style="text-align: center">Powered by Wirepick Zambia @Copyright 2021 | All rights reserved</p>
                    </div>
                </div>
                <!-- User activities chart end -->
            </div>
        </div>
    <%--End Ecommerce Stuff--%>

</div>

<jsp:include page="../layout/scripts.jsp"/>
<!-- data-table js -->
<jsp:include page="../layout/dataTable.jsp"/>

<!-- modernizr js -->
<script type="text/javascript" src="<c:url value="/assets/bower/modernizr/js/modernizr.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/d3/js/d3.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/c3/js/c3.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/pages/chart/echarts/js/echarts-all.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/pages/jquery.filer/js/jquery.filer.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/script.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.mCustomScrollbar.concat.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.mousewheel.min.js"/>"></script>
<%--Data Tables js--%>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net/js/jquery.dataTables.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net-buttons/js/dataTables.buttons.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net-bs4/js/dataTables.bootstrap4.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net-responsive/js/dataTables.responsive.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js" />"></script>

<!-- Required Jquery -->
<script type="text/javascript" src="../bower_components/jquery/js/jquery.min.js"></script>
<script type="text/javascript" src="../bower_components/jquery-ui/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../bower_components/popper.js/js/popper.min.js"></script>
<script type="text/javascript" src="../bower_components/bootstrap/js/bootstrap.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="../bower_components/jquery-slimscroll/js/jquery.slimscroll.js"></script>
<!-- modernizr js -->
<script type="text/javascript" src="../bower_components/modernizr/js/modernizr.js"></script>
<script type="text/javascript" src="../bower_components/modernizr/js/css-scrollbars.js"></script>
<!-- classie js -->
<script type="text/javascript" src="../bower_components/classie/js/classie.js"></script>
<!-- c3 chart js -->
<script src="../bower_components/d3/js/d3.min.js"></script>
<script src="../bower_components/c3/js/c3.js"></script>
<!-- google chart -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!-- echart js -->
<script src="assets/pages/chart/echarts/js/echarts-all.js" type="text/javascript"></script>
<!-- data-table js -->
<script src="../bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="../bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="assets/pages/data-table/js/jszip.min.js"></script>
<script src="assets/pages/data-table/js/pdfmake.min.js"></script>
<script src="assets/pages/data-table/js/vfs_fonts.js"></script>
<script src="assets/pages/data-table/extensions/responsive/js/dataTables.responsive.min.js"></script>
<script src="../bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
<script src="../bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="../bower_components/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="../bower_components/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>
<!-- i18next.min.js -->
<script type="text/javascript" src="../bower_components/i18next/js/i18next.min.js"></script>
<script type="text/javascript" src="../bower_components/i18next-xhr-backend/js/i18nextXHRBackend.min.js"></script>
<script type="text/javascript" src="../bower_components/i18next-browser-languagedetector/js/i18nextBrowserLanguageDetector.min.js"></script>
<script type="text/javascript" src="../bower_components/jquery-i18next/js/jquery-i18next.min.js"></script>
<!-- Custom js -->
<script type="text/javascript" src="assets/pages/dashboard/ecommerce-dashboard.js"></script>
<script type="text/javascript" src="assets/js/script.js"></script>
<script src="assets/js/pcoded.min.js"></script>
<script src="assets/js/demo-12.js"></script>
<script src="assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/js/jquery.mousewheel.min.js"></script>

<script>

    $(document).ready(function () {
        /*$("#taxOnlineTable").dataTable({
            responsive: false
        });

        $("#rightTable").dataTable({
            responsive: false
        });*/

    });

</script>

<script>
    $(document).ready(function() {

        $('#simpletable').DataTable( {
            dom: 'Bfrtip',
            searching: true,
            paging:   true,
            ordering: true,
            info:     true,
            lengthChange: true,
            buttons: [
                {
                    extend: 'copy',
                },
                {
                    extend: 'excel',
                },
                {
                    extend: 'csv',
                }
            ],

        } );

    } );
</script>
<jsp:include page="../layout/footer.jsp"/>
