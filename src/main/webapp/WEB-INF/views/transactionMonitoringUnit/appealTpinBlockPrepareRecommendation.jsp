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
                <button type="button" class="btn btn-primary m-1" data-toggle="modal"
                        data-target="#modal-risk-comments">
                    View Comments
                    <i class="icofont icofont-comment"></i>
                </button>
            </div>
        </div>
        <div class="card-block">

            <form method="post" id="appealTpinBlockageForm" action=""   >
                <div style="margin-left: 15px; margin-right: 15px;" class="alert alert-info">
                    Review the appeal application and submit your recommendations (Recommendation 1)
                </div>

                <%--LEFT COLUMN--%>
                <div class="col-sm-6 col-sm-6" id="columnLeft" style="float: left;">

                    <div class="form-group" id="processTypeDiv" style="padding-top:20px;">
                        <h4 class="sub-title">Process Type</h4>
                        <div class="input-group date" id="processTypeDivId">
                            <select id="processType" name="processType" onchange="getSelectedValue(this)" class="form-control form-control-lg" readonly>
                                <option <c:if test="${tmuAppealTpinBlock.processType} eq 'APPEAL_MANUAL_BLOCKING'}">selected</c:if> value="APPEAL_MANUAL_BLOCKING">
                                    Appeal tpin blockage due manual intervention process</option>
                                <option <c:if test="${tmuAppealTpinBlock.processType eq 'APPEAL_AUTOMATIC_BLOCKING'}">selected</c:if> value="APPEAL_AUTOMATIC_BLOCKING">
                                    Appeal tpin blockage resulting from unpaid liabilities</option>
                            </select>
                            <span class="input-group-addon" id="processTypeSpanId">
                             <i class="fa fa-desktop "></i>
                            </span>
                        </div>
                    </div>

                    <div class="form-group" id="applicantTypeDiv" style="padding-top:20px;">
                        <h4 class="sub-title">Applicant Type</h4>
                        <div class="input-group date" id="applicantTypeDivId">
                            <input type="text"  id="applicantType" name="applicantType" class="form-control " value="${tmuAppealTpinBlock.tpinType}" readonly/>
                            <span class="input-group-addon" id="applicantTypeSpanId">
                             <i class="fa fa-desktop "></i>
                            </span>

                        </div>
                    </div>

                    <div class="form-group" id="tpinApplicantDiv" style="padding-top:20px;">
                        <h4 class="sub-title">TPIN</h4>
                        <div class="input-group date" id="tpinApplicantDivId">
                            <input type="text"  id="tpinApplicant" name="tpinApplicant" class="form-control " value="${tmuAppealTpinBlock.tpin}" readonly/>
                            <span class="input-group-addon" id="tpinApplicantSpan">
                                      <i class="fa fa-calculator"></i>
                            </span>
                        </div>
                    </div>

                    <div class="form-group" id="appealReasonDiv" style="padding-top:20px;">
                        <h4 class="sub-title">Reason for Appeal</h4>
                        <div class="input-group date" id="appealReasonDivId">
                            <textarea  id="appealReason" name="appealReason" rows="4" class="form-control "readonly>${tmuAppealTpinBlock.reasonForAppeal}</textarea>
                            <span class="input-group-addon" id="appealReasonSpan">
                                      <i class="fa fa-microphone"></i>
                            </span>
                        </div>
                    </div>

                    <%--DISPLAY ATTACHEMENTS--%>

                    <%--jsp - DataTables--%>
                    <%--display files--%>
                    <div class="dt-responsive table-responsive attachmentTableCover col-md-12 mt-5 bg-light hide">
                        <h5 class="mt-3 mb-3">Uploaded Documents</h5>
                        <table id="attachmentTable" class="table table-hover table-striped table-bordered nowrap">
                            <thead>
                            <tr>
                                <th>No.</th>
                                <th>Document Name</th>
                                <th>Open</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="row_${key}">
                                <td>a</td>
                                <td>b</td>
                                <td>c</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <input type="hidden" class="reference" value="${refNumber}">

                </div>

                <%--RIGHT COLUMN--%>
                <div class="col-sm-6 col-sm-6" id="columnRight" style="float: right;">

                    <%--Details for automatic blocking--%>
                    <c:choose>
                        <c:when test="${not empty declarationTabEntity}">
                            <div class="form-group" id="liabilityDetails">

                                <div class="form-group" id="stationsDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Customs Office Code</h4>
                                    <div class="input-group date" id="stationsDivId">
                                        <input type="text"  id="customsOfficeCode" name="customsOfficeCode" class="form-control " value="${declarationTabEntity.customsOfficeCode}" readonly/>
                                        <span class="input-group-addon" id="stationsSpanId"><i class="fa fa-desktop "></i></span>
                                    </div>
                                </div>

                                <div class="form-group" id="assessmentSerialDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Assessment Serial</h4>
                                    <div class="input-group date" id="assessmentSerialDivId">
                                        <input type="text" id="assessmentSerial" name="assessmentSerial" value="${declarationTabEntity.assessmentSerial}" class="form-control" readonly/>
                                        <span class="input-group-addon" id="assessmentSerialSpan"><i class="fa fa-calculator"></i></span>
                                    </div>
                                </div>

                                <div class="form-group" id="assessmentNumberDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Assessment Number</h4>
                                    <div class="input-group date" id="assessmentNumberDivId">
                                        <input type="text" id="assessmentNumber" name="assessmentNumber" class="form-control" value="${declarationTabEntity.assessmentNumber}" readonly/>
                                        <span class="input-group-addon" id="assessmentNumberSpan"><i class="fa fa-calculator"></i></span>
                                    </div>
                                </div>

                                <div class="form-group" id="assessmentDateDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Assessment Date</h4>
                                    <div class="input-group date" id="assessmentDateDivId">
                                        <input class="form-control" name="assessmentDate" id="assessmentDate" type="text" value="${declarationTabEntity.assessmentDate}" readonly>
                                        <span class="input-group-addon" id="assessmentDateSpan"><i class="fa fa-database"></i></span>
                                    </div>
                                </div>


                            </div>
                        </c:when>
                    </c:choose>


                    <%--Details for manual blocking--%>
                    <c:choose>
                        <c:when test="${not empty tmuManualSuspActivation}">
                            <div class="form-group" id="manualSuspDetails">

                                <div class="form-group" id="disputedReferenceDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Disputed Reference</h4>
                                    <div class="input-group date" id="disputedReferenceDivId">
                                        <input class="form-control" name="disputedReference" id="disputedReference" type="text" value="${tmuManualSuspActivation.referenceNumber}" readonly>
                                        <span class="input-group-addon" id="disputedReferenceSpan">
                                                  <i class="fa fa-calculator"></i>
                                        </span>
                                    </div>
                                </div>

                                <div class="form-group" id="reasonDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Reason for Manual Suspension</h4>
                                    <div class="input-group date" id="reasonDivId">
                                        <textarea  id="reason" name="reason" rows="4" class="form-control " readonly>${tmuManualSuspActivation.reason}</textarea>
                                        <span class="input-group-addon" id="reasonSpan">
                                                  <i class="fa fa-microphone"></i>
                                        </span>
                                    </div>
                                </div>

                            </div>
                        </c:when>
                    </c:choose>

                    <div class="form-group" id="officerReccDiv" style="padding-top:20px;">
                        <h4 class="sub-title">Officer's Recommendations</h4>
                        <div class="input-group date" id="officerReccDivId">
                            <textarea  id="officerRecc" name="officerRecc" rows="4" class="form-control " placeholder="Enter your recommendations here." required></textarea>
                            <input type="text" id="refNumber" name="refNumber" value="${refNumber}" hidden>
                            <input type="text" id="step" name="step" value="${step}" hidden>
                            <span class="input-group-addon" id="officerReccSpan">
                                      <i class="fa fa-microphone"></i>
                            </span>
                        </div>
                    </div>

                </div>

                <div class="row col-md-12">
                    <div class="col-md-6">
                    </div>
                    <div class="col-md-6">
                        <div class="form-group text-right">
                            <button class="btn btn-primary btn-sm" type="button" id="submitRecommendation"><i class="fa fa-check"></i> Submit Recommendation</button>
                            <%--                            <button class="btn btn-warning ms-btn-remarks-history"><i class="icofont icofont-history"></i> Remarks History</button>
                                                        <button class="btn btn-primary btn-sm" type="button" id="rejectReview"><i class="icofont icofont-trash"></i> REJECT</button>--%>
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
<jsp:include page="../layout/dataTable.jsp"/>
<jsp:include page="../riskmanagement/modals/rskCommentsModal.jsp"/>

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
<script type="text/javascript" src="<c:url value="/assets/js/transactionMonitoringUnit/prepareReccAppealTpinBlock.js" />"></script>
<!-- Select 2 js -->
<script type="text/javascript" src="<c:url value="/assets/bower/select2/js/select2.full.min.js"/>"></script>
<!-- Custom js -->
<script type="text/javascript" src="<c:url value="/assets/pages/advance-elements/select2-custom.js"/>"></script>
<%--File uploads JS--%>
<script type="text/javascript" src="<c:url value="/assets/pages/jquery.filer/js/jquery.filer.min.js"/>"></script>
<%--Link to js that is populating table for attachments--%>
<script type="text/javascript" src="<c:url value="/assets/js/riskmanagement/getAttachments.js" />"></script>



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


