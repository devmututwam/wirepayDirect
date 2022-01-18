<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 6/8/2021
  Time: 2:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Escape to layout folder-->
<jsp:include page="../../layout/header.jsp"/>
<!-- flag icon framework css -->
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/flag-icon/flag-icon.min.css"/>"/>
<!-- Menu-Search css -->
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/menu-search/css/component.css"/>"/>
<!--forms-wizard css-->
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/jquery.steps/css/jquery.steps.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/sweetalert/css/sweetalert.css" />"/>
<!-- Select 2 css -->
<link rel="stylesheet" href="<c:url value="/assets/bower/select2/css/select2.min.css" />"/>
<style>
    /** Custom styles for enabled days. */
    .day, .month, .year {
        color: #282828 !important;
    }

    .day.disabled, .year.disabled, .month.disabled {
        color: #d7d7d7 !important;
    }

    .day.focused {
        color: #a8a8a8;
    }

    .day.active {
        color: #fff !important;
    }
</style>
<!--Escape to layout folder-->
<jsp:include page="../../layout/navigationBar.jsp"/>
<jsp:include page="../../layout/sideBar.jsp"/>


<div class="page-header">
    <div class="page-header-title">
        <h4>Generate TPIN Activity Report</h4>
    </div>
    <div class="page-header-breadcrumb">
        <ul class="breadcrumb-title">
            <li class="breadcrumb-item"><a href="<c:url value="/" />"> <i
                    class="icofont icofont-home"></i>
            </a></li>
            <li class="breadcrumb-item"><a href="#!">Home</a></li>
            <li class="breadcrumb-item"><a href="#!">Customs</a></li>
            <li class="breadcrumb-item active"><a href="#!">Transaction Monitoring Unit</a></li>
        </ul>
    </div>
</div>

<div class="page-body">
    <div class="card">
        <div class="card-header">
            <div class="card-header-right">
                <i class="icofont icofont-refresh text-success mytooltip">
                        <span class="tooltip-content5">
                            <span class="tooltip-text3">
                                <span class="tooltip-inner2">Refresh<br> This button refreshes your page</span>
                            </span>
                        </span>
                </i>
                <i class="icofont icofont-rounded-down text-warning mytooltip">
                        <span class="tooltip-content5">
                            <span class="tooltip-text3">
                                <span class="tooltip-inner2">Minimize<br> This button minimizes the card</span>
                            </span>
                        </span>
                </i>
            </div>
        </div>
        <div class="card-block">

            <form:form id="tpinActivityReportForm" method="POST" target="_blank" action="getTpinActivityReport"
                       modelAttribute="tpinActivityReport" onsubmit="return getTpinActivityReport()">
            <div class="card">
                <div class="card-block">
                    <div class="row">
                        <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12">
                            <!-- Date card start -->
                            <div class="card">
                                <div class="card-header">
                                    <h5>Enter report parameters</h5>
                                    <div class="card-header-right">
                                        <i class="icofont icofont-rounded-down"></i> <i
                                            class="icofont icofont-refresh"></i>
                                    </div>
                                </div>

                                <div class="card-block">

                                    <div class="row form-group">
                                        <div class="col-sm-3">
                                            <label class="form-label">Start Date</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <form:input path="startDate" id="startDate" class="form-control"
                                                        placeholder="Select Date" readonly="true"/>
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="col-sm-3">
                                            <label class="form-label">End Date</label>
                                        </div>
                                        <div class="col-sm-9">
                                            <form:input path="endDate" id="endDate" class="form-control"
                                                        placeholder="Select Date" readonly="true"/>
                                        </div>
                                    </div>


                                    <button type="submit" id="btnGenerateReport" class="btn btn-success">
                                        <i class="icofont icofont-gear"></i> Generate Report
                                    </button>


                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                </form:form>

            </div>

        </div>
    </div>
    <%-- End of Page content --%>
    <!--Escape to layout folder-->
    <jsp:include page="../../layout/scripts.jsp"/>

    <!--{{ADD YOUR SCRIPTS HERE}}-->
    <script type="text/javascript" src="<c:url value="/assets/bower/sweetalert/js/sweetalert.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/assets/pages/store-js/moment.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/bower/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" />"></script>
    <!-- jquery.datetimepicker -->
    <script type="text/javascript" src="<c:url value="/assets/js/jquery.datetimepicker.js" />"></script>
    <!-- Date-dropper js -->
    <script type="text/javascript" src="<c:url value="/assets/bower/datedropper/js/datedropper.min.js" />"></script>
    <!-- Date-range picker js -->
    <script type="text/javascript" src="<c:url value="/assets/bower/bootstrap-daterangepicker/js/daterangepicker.js" />"></script>
    <!-- Multiselect js -->
    <script type="text/javascript" src="<c:url value="/assets/bower/bootstrap-multiselect/js/bootstrap-multiselect.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/assets/bower/multiselect/js/jquery.multi-select.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/assets/bower/bootstrap-multiselect/js/bootstrap-multiselect.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/assets/bower/multiselect/js/jquery.multi-select.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/jquery.quicksearch.js"/>"></script>
    <!-- Select 2 js -->
    <script type="text/javascript" src="<c:url value="/assets/bower/select2/js/select2.full.min.js"/>"></script>
    <!-- Custom js -->
    <script type="text/javascript" src="<c:url value="/assets/pages/advance-elements/select2-custom.js"/>"></script>
    <!-- DataTables -->
    <script src="<c:url value="/assets/bower/datatables.net/js/jquery.dataTables.js"/>"></script>
    <script src="<c:url value="/assets/bower/datatables.net-bs4/js/dataTables.bootstrap4.js"/>"></script>
    <!-- data-table js -->
    <script src="<c:url value="/assets/bower/datatables.net/js/jquery.dataTables.min.js"/>"></script>
    <script src="<c:url value="/assets/bower/datatables.net-buttons/js/dataTables.buttons.min.js"/>"></script>
    <script src="<c:url value="/assets/pages/data-table/js/jszip.min.js"/>"></script>
    <script src="<c:url value="/assets/pages/data-table/js/vfs_fonts.js"/>"></script>
    <script src="<c:url value="/assets/bower/datatables.net-buttons/js/buttons.print.min.js"/>"></script>
    <script src="<c:url value="/assets/bower/datatables.net-buttons/js/buttons.html5.min.js"/>"></script>
    <script src="<c:url value="/assets/bower/datatables.net-bs4/js/dataTables.bootstrap4.min.js"/>"></script>
    <script src="<c:url value="/assets/bower/datatables.net-responsive/js/dataTables.responsive.min.js"/>"></script>
    <script src="<c:url value="/assets/bower/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/assets/bower/moment/js/moment.min.js"/>"></script>


    <script>
        $(document).ready(function () {
            $("#startDate").datepicker({
                format: "yyyy-mm-dd",
                todayBtn: true,
                todayHighlight: true,
                autoclose: true
            });
            $("#endDate").datepicker({
                format: "yyyy-mm-dd",
                todayBtn: true,
                todayHighlight: true,
                autoclose: true
            });
        });
    </script>

    <script>

        function getTpinActivityReport() {

            console.log("I AM HERE!!!!");

            var startDate = $('#startDate').val();
            var endDate = $('#endDate').val();

            if (isEmpty(startDate)) {
                swal("Start Date Missing", "Please Select Start Date", "error");
            } else if (isEmpty(endDate)) {
                swal("End Date Missing", "Please Select End Date", "error");
            } else {
                var myWindow = window.open("transactionmonitoringunit/getTpinActivityReport/" + startDate + "/" + endDate, "", "height=400,width=600");
            }
            return false;
        }

        function isEmpty(str) {
            if (str == null || str == undefined) {
                return true;
            } else {
                return !str.replace(/\s+/, '').length;
            }
        }

    </script>
    <%--<script type="text/javascript" src="<c:url value="/assets/pages/Jqueryconfirm/jquery-confirm.min.js"/>"></script>--%>
    <!--Escape to layout folder-->
    <jsp:include page="../../layout/footer.jsp"/>



