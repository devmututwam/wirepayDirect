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

<!--{{PLACE YOUR PAGE SPECIFIC CSS HERE}}-->
<%--File uploads css--%>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/jquery.filer/css/jquery.filer.css"/>"/>
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
<jsp:include page="../layout/navigationBar.jsp"/>
<jsp:include page="../layout/sideBar.jsp"/>


<div class="page-header">
    <div class="page-header-title">
        <h4>APPEAL AGAINST TPIN SUSPENSION</h4>
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

            <form method="post" id="appealTpinBlockageForm" action="">
                <div style="margin-left: 15px; margin-right: 15px;" class="alert alert-info">
                    Fill in the require fields and attach supporting documents if any
                </div>

                <div class="form-group  col-md-6" id="applicantTypeDiv" style="padding-top:20px;">
                    <h4 class="sub-title">Applicant Type</h4>
                    <div class="input-group date" id="applicantTypeDivId">
                        <select id="applicantType" name="applicantType" class="form-control form-control-lg " required>
                            <option value="0">------ Indicate whether you're a Declarant/Importer ------</option>
                            <option value="DECLARANT">DECLARANT</option>
                            <option value="CONSIGNEE">CONSIGNEE</option>
                        </select>
                        <span class="input-group-addon" id="requestTypeSpanId">
                         <i class="fa fa-desktop "></i>
                        </span>

                    </div>
                </div>

                <div class="form-group  col-md-6" id="tpinApplicantDiv" style="padding-top:20px;">
                    <h4 class="sub-title">TPin</h4>
                    <div class="input-group date" id="tpinApplicantDivId">
                        <input type="number" id="tpinApplicant" name="tpinApplicant" class="form-control "
                               placeholder="Enter your TPIN number" required/>
                        <span class="input-group-addon" id="tpinApplicantSpan">
                                  <i class="fa fa-calculator"></i>
                        </span>
                    </div>
                </div>


                <div class="form-group  col-md-6" id="disputedRefNumDiv" style="padding-top:20px;">
                    <h4 class="sub-title">Disputed Reference Number</h4>
                    <div class="input-group date" id="disputedRefNumDivId">
                        <input type="text" id="disputedRefNum" name="disputedRefNum" class="form-control "
                               placeholder="Enter the disputed reference number" required/>
                        <span class="input-group-addon" id="disputedRefNumSpan">
                                  <i class="fa fa-calculator"></i>
                        </span>
                    </div>
                </div>

                <div class="form-group  col-md-6" id="appealReasonDiv" style="padding-top:20px;">
                    <h4 class="sub-title">Reason for Appeal</h4>
                    <div class="input-group date" id="appealReasonDivId">
                        <textarea id="appealReason" name="appealReason" rows="4" class="form-control "
                                  placeholder="Enter the reason for appeal." required></textarea>
                        <span class="input-group-addon" id="appealReasonSpan">
                                  <i class="fa fa-microphone"></i>
                        </span>
                    </div>
                </div>

                <%--input field--%>
                <div class="form-group  col-md-6">
                    <label>Supporting Document(s) (Optional)</label>
                    <br>
                    <small>Allowed File Types: PDF</small><br>
                    <small>Allowed Max File Size: 5MB</small><br>
                    <div class="">
                        <input id="filer_input" type="file" multiple="multiple" name="supportingDocuments[]"
                               class="form-control">
                    </div>
                </div>

                <div class="row col-md-12">
                    <div class="col-md-6">
                    </div>
                    <div class="col-md-6">
                        <div class="form-group text-right">
                            <button type="button" id="submitAppeal" class="btn btn-success mr-3">
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
<script type="text/javascript"
        src="<c:url value="/assets/bower/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" />"></script>
<!-- jquery.datetimepicker -->
<script type="text/javascript" src="<c:url value="/assets/js/jquery.datetimepicker.js" />"></script>
<!-- Date-dropper js -->
<script type="text/javascript" src="<c:url value="/assets/bower/datedropper/js/datedropper.min.js" />"></script>
<!-- Date-range picker js -->
<script type="text/javascript"
        src="<c:url value="/assets/bower/bootstrap-daterangepicker/js/daterangepicker.js" />"></script>
<!-- Multiselect js -->
<script type="text/javascript"
        src="<c:url value="/assets/bower/bootstrap-multiselect/js/bootstrap-multiselect.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/multiselect/js/jquery.multi-select.min.js"/>"></script>
<script type="text/javascript"
        src="<c:url value="/assets/bower/bootstrap-multiselect/js/bootstrap-multiselect.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/multiselect/js/jquery.multi-select.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.quicksearch.js"/>"></script>
<script type="text/javascript"
        src="<c:url value="/assets/js/transactionMonitoringUnit/submitTpinBlockAppeal.js" />"></script>
<!-- Select 2 js -->
<script type="text/javascript" src="<c:url value="/assets/bower/select2/js/select2.full.min.js"/>"></script>
<!-- Custom js -->
<script type="text/javascript" src="<c:url value="/assets/pages/advance-elements/select2-custom.js"/>"></script>
<%--File uploads JS--%>
<script type="text/javascript" src="<c:url value="/assets/pages/jquery.filer/js/jquery.filer.min.js"/>"></script>


<script type="text/javascript">
    //Js for Start date
    $().ready(function () {

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


