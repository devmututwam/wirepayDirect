<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 2021/02/25
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Escape to layout folder-->
<jsp:include page="../layout/header.jsp"/>
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
    .day, .month, .year {color: #282828 !important;}
    .day.disabled, .year.disabled, .month.disabled {color: #d7d7d7 !important;}
    .day.focused {color: #a8a8a8;}
    .day.active {color: #fff !important;}
</style>
<!--Escape to layout folder-->
<jsp:include page="../layout/navigationBar.jsp"/>
<jsp:include page="../layout/sideBar.jsp"/>


<div class="page-header">
    <div class="page-header-title">
        <h4>Configure number of days</h4>
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

            <form method="post" id="configureNumberOfDaysForm" action=""   >
                <div style="margin-left: 15px; margin-right: 15px;" class="alert alert-info">
                    Fill in the required information and submit the form
                </div>

                <div class="form-group  col-md-6" id="numbOfDaysDiv" style="padding-top:20px;">
                    <h4 class="sub-title">Number of days</h4>
                    <div class="input-group date" id="numbOfDaysDivId">
                        <input type="number"  id="numbOfDays" name="numbOfDays" class="form-control " placeholder="Enter number of days" min="0" maxlength="10" required/>
                        <span class="input-group-addon" id="numbOfDaysSpan">
                                  <i class="fa fa-calculator"></i>
                        </span>
                    </div>
                </div>

                <div class="form-group  col-md-6" id="reasonDiv" style="padding-top:20px;">
                    <h4 class="sub-title">Reason</h4>
                    <div class="input-group date" id="reasonDivId">
                        <input type="text"  id="reason" name="reason" class="form-control " placeholder="Enter reason for the select number of days" required/>
                        <span class="input-group-addon" id="reasonSpan">
                                  <i class="fa fa-microphone"></i>
                        </span>
                    </div>
                </div>



                <div class="row col-md-12">
                    <div class="col-md-6">
                    </div>
                    <div class="col-md-6">
                        <div class="form-group text-right">
                            <button type="button" id="submitDaysConfiguration" class="btn btn-success mr-3">
                                <i class="icofont icofont-paper-plane"></i> Submit
                            </button>
                        </div>
                    </div>
                </div>
            </form>

        </div>

    </div>
</div>
<%-- End of Page content --%>
<!--Escape to layout folder-->
<jsp:include page="../layout/scripts.jsp"/>

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
<script type="text/javascript" src="<c:url value="/assets/js/transactionMonitoringUnit/submitConfigNumberOfDays.js" />"></script>
<!-- Select 2 js -->
<script type="text/javascript" src="<c:url value="/assets/bower/select2/js/select2.full.min.js"/>"></script>
<!-- Custom js -->
<script type="text/javascript" src="<c:url value="/assets/pages/advance-elements/select2-custom.js"/>"></script>


<script type="text/javascript">
    //Js for Start date
    $().ready(function() {

        $('#dateFromId').datepicker({
            autoclose: true,
            format: 'yyyy-mm-dd'
        });

        $('#dateToId').datepicker({
            autoclose: true,
            format: 'yyyy-mm-dd'
        });

    });
</script>





<!--Escape to layout folder-->
<jsp:include page="../layout/footer.jsp"/>


