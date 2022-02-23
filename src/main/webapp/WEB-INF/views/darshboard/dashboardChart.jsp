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
            <li class="breadcrumb-item"><a href="#!">Transactional Dashboard</a>
            </li>
        </ul>
    </div>
</div>
<div class="page-body" id="app">
    <div class="row">
        <%--<form method="get" id="darshBoardForm" action=""   >--%>

            <%--Section for the main summary of the darshboard details--%>
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Username Accounts Summary</h5>
                        <span><b>Here's a summary of your account Activity</b></span>
                    </div>

                    <div class="card-block">
                        <div class="table-responsive" style="overflow-x: auto;">
                            <table id="accountDetailsTable" class="table table-striped table-bordered nowrap">
                                <thead>
                                <tr>
                                    <th>Account Name</th>
                                    <th>Bank</th>
                                    <th>Account Number</th>
                                    <th>Account Balance</th>
                                    <th>Total Amount Due</th>
                                    <th>Total Amount Paid</th>
                                    <th>Outstanding PRNs</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><b>${accountModel.accountName}</b></td>
                                    <td><b>${accountModel.bankName}</b></td>
                                    <td><b>${accountModel.accountNumber}</b></td>
                                    <td><b>${accountModel.accountBalance}</b></td>
                                    <td><b>178561893.574</b></td>
                                    <td>621749.256</td>
                                    <td>
                                        <a  href="userTransactions/getUserTransactionsByUser" class="text-info">Click here!</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        <%--</form>--%>

            <%--Section for TaxOnline details--%>
            <div class="col-sm-6 col-sm-6" style="float: ;">
                <div class="card">
                    <div class="card-header">
                        <h5>TaxOnline</h5>
                        <span><b>Summary of your TaxOnline Activity</b></span>
                    </div>

                    <div class="card-block">
                        <div class="table-responsive" style="overflow-x: auto;">
                            <table id="taxOnlineTable" class="table table-striped table-bordered nowrap">
                                <thead>
                                <tr>
                                    <th>Pending Transactions</th>
                                    <th>Amount Due</th>
                                    <th>Total Paid</th>
                                    <th>View Transactions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><b>${taxonlineDto.pendingTransactions}</b></td>
                                    <td><b>${taxonlineDto.amountDue}</b></td>
                                    <td>${taxonlineDto.totalPaid}</td>
                                    <td>
                                        <a  href="userTransactions/getUserTransactionsByUser" class="text-info">Click here!</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <%--Section for NAPSA details--%>
            <div class="col-sm-6 col-sm-6" style="float: ;">
                <div class="card">
                    <div class="card-header">
                        <h5>NAPSA</h5>
                        <span><b>Summary of your NAPSA activity</b></span>
                    </div>

                    <div class="card-block">
                        <div class="table-responsive" style="overflow-x: auto;">
                            <table id="napsaTable" class="table table-striped table-bordered nowrap">
                                <thead>
                                <tr>
                                    <th>Pending Transactions</th>
                                    <th>Amount Due</th>
                                    <th>Total Paid</th>
                                    <th>View Transactions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><b>${napsaDto.pendingTransactions}</b></td>
                                    <td><b>${napsaDto.amountDue}</b></td>
                                    <td>${napsaDto.totalPaid}</td>
                                    <td>
                                        <a  href="userTransactions/getUserTransactionsByUser" class="text-info">Click here!</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <%--Section for  ASYCUDA World details--%>
            <div class="col-sm-6 col-sm-6" style="float: ;">
                <div class="card">
                    <div class="card-header">
                        <h5>ASYCUDA World</h5>
                        <span><b>Summary of your ASYCUDA World activity</b></span>
                    </div>

                    <div class="card-block">
                        <div class="table-responsive" style="overflow-x: auto;">
                            <table id="asycudaWorldTable" class="table table-striped table-bordered nowrap">
                                <thead>
                                <tr>
                                    <th>Pending Transactions</th>
                                    <th>Amount Due</th>
                                    <th>Total Paid</th>
                                    <th>View Transactions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><b>${asycudaDto.pendingTransactions}</b></td>
                                    <td><b>${asycudaDto.amountDue}</b></td>
                                    <td>${asycudaDto.totalPaid}</td>
                                    <td>
                                        <a  href="userTransactions/getUserTransactionsByUser" class="text-info">Click here!</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <%--Section for PACRA details--%>
            <div class="col-sm-6 col-sm-6" style="float: ;">
                <div class="card">
                    <div class="card-header">
                        <h5>PACRA</h5>
                        <span><b>Summary of your PACRA activity</b></span>
                    </div>

                    <div class="card-block">
                        <div class="table-responsive" style="overflow-x: auto;">
                            <table id="pacraTable" class="table table-striped table-bordered nowrap">
                                <thead>
                                <tr>
                                    <th>Pending Transactions</th>
                                    <th>Amount Due</th>
                                    <th>Total Paid</th>
                                    <th>View Transactions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><b>${pacraDto.pendingTransactions}</b></td>
                                    <td><b>${pacraDto.amountDue}</b></td>
                                    <td>${pacraDto.totalPaid}</td>
                                    <td>
                                        <a  href="userTransactions/getUserTransactionsByUser" class="text-info">Click here!</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


    </div>
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
<jsp:include page="../layout/footer.jsp"/>
