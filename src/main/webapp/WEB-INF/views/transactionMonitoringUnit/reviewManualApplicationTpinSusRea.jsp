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
        <h4>MANUAL SUSPENSION / REACTIVATION OF TPIN</h4>
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

            <sec:authorize access="hasAnyAuthority('MANUAL_SUS_REV', 'MANUAL_SUS_APP')">
                <form method="post" id="manualSuspReactivationReviewForm" action=""   >
                            <div style="margin-left: 15px; margin-right: 15px;" class="alert alert-info">
                                Fill in the required fields and attach supporting documents if any
                            </div>

                            <%--LEFT COLUMN--%>
                            <div class="col-sm-6 col-sm-6" style="float: left;">
                                <div class="form-group" id="processTypeDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Process Type</h4>
                                    <div class="input-group date" id="processTypeDivId">
                                        <input type="text"  id="processType" name="processType" class="form-control " value="${tmuManualSuspActivation.processType}" readonly/>
                                        <span class="input-group-addon" id="processTypeSpanId">
                                         <i class="fa fa-desktop "></i>
                                        </span>

                                    </div>
                                </div>

                                <div class="form-group" id="tpinDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">TPin</h4>
                                    <div class="input-group date" id="tpinDivId">
                                        <input type="number"  id="tpin" name="tpin" class="form-control " value="${tmuManualSuspActivation.tpin}" readonly/>
                                        <span class="input-group-addon" id="tpinSpan">
                                                  <i class="fa fa-calculator"></i>
                                        </span>
                                    </div>
                                </div>

                                <div class="form-group  col-md-6" style="padding-top:20px;">
                                    <h4 class="sub-title">Tpin Type</h4>
                                    <div class="input-group date">
                                        <input type="text"  id="tpinType" name="tpinType" class="form-control " value="${tmuManualSuspActivation.tpinType}" readonly/>
                                        <span class="input-group-addon" >
                                            <i class="fa fa-desktop "></i>
                                        </span>
                                    </div>
                                </div>

                                <div class="form-group" id="reasonDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Reason for application</h4>
                                    <div class="input-group date" id="reasonDivId">
                                        <textarea  id="reason" name="reason" rows="4" class="form-control " readonly>${tmuManualSuspActivation.reason}</textarea>
                                        <span class="input-group-addon" id="reasonSpan">
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
                            <div class="col-sm-6 col-sm-6" style="float: right;">

                                <div class="form-group" id="tpinLevelDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Suspension/Reactivation Level</h4>
                                    <div class="input-group date" id="tpinLevelDivId">
                                        <input type="text"  id="tpinLevel" name="tpinLevel" class="form-control " value="${tmuManualSuspActivation.tpinLevel}" readonly/>
                                        <span class="input-group-addon" id="tpinLevelSpanId">
                                         <i class="fa fa-desktop "></i>
                                        </span>
                                    </div>
                                </div>

                                <%--If EPC list is not empty then display--%>
                                <c:if test="${not empty manualEpcCodes}">
                                    <div class="form-group" id="procedureDiv" name="procedureDiv" >
                                        <br>
                                        <h4 class="sub-title">Selected EPC(s)</h4>
                                        <div class="form-group" id="epcCodeDivId">
                                            <div class="dt-responsive table-responsive">
                                                <table id="simpletable" class="table table-hover table-striped table-bordered nowrap" style="width:100%">
                                                    <thead>
                                                    <tr>
                                                        <th>No.</th>
                                                        <th>NAME</th>
                                                        <th>EPC CODE</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach var="manualEpcCode" items="${manualEpcCodes}" varStatus="counter">
                                                            <tr>
                                                                <td>${counter.count}.</td>
                                                                <td>${manualEpcCode.name}</td>
                                                                <td>${manualEpcCode.code}</td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>

                                    <%--If Entries list is not empty then display--%>
                                <c:if test="${not empty entriesList}">
                                    <div class="form-group" id="transactionDiv" name="transactionDiv" >
                                        <br>
                                        <h4 class="sub-title">Selected EPC(s)</h4>
                                        <div class="form-group" id="entriesArrayDivId">
                                            <div class="dt-responsive table-responsive">
                                                <table id="entriesTable" class="table table-hover table-striped table-bordered nowrap" style="width:100%">
                                                    <thead>
                                                    <tr>
                                                        <th>No.</th>
                                                        <th>PRN</th>
                                                        <th>CUSTOMS OFFICE CODE</th>
                                                        <th>ASSESSMENT DATE</th>
                                                        <th>ASSESSMENT SERIAL</th>
                                                        <th>ASSESSMENT NUMBER</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach var="entry" items="${entriesList}" varStatus="counter">
                                                        <tr>
                                                            <td>${counter.count}.</td>
                                                            <td>${entry.prnNumber}</td>
                                                            <td>${entry.customsOfficeCode}</td>
                                                            <td>${entry.assessmentDate}</td>
                                                            <td>${entry.assessmentSerial}</td>
                                                            <td>${entry.assessmentNumber}</td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>

                                <div class="form-group" id="commentsDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Officer's comments</h4>
                                    <div class="input-group date" id="commentsDivId">
                                        <textarea  id="comments" name="comments" rows="4" class="form-control " placeholder="Enter your comments here.">${tmuManualSuspActivation.previoudUserComments}</textarea>
                                        <input type="text" id="refNumber" name="refNumber" value="${refNumber}" hidden>
                                        <input type="text" id="step" name="step" value="${step}" hidden>
                                        <span class="input-group-addon" id="commentsSpan">
                                                  <i class="fa fa-microphone"></i>
                                        </span>
                                    </div>
                                </div>

                                <c:choose>
                                    <c:when test="${step eq 'REVIEW_MANUAL_INTERVENTION'}">
                                        <div class="form-group" style="padding-top:20px;">
                                            <h4 class="sub-title">Escalate Request (Do you want to send for further approval?)</h4>
                                            <div class="input-group date">
                                                <select id="requDelegated" name="requDelegated" class="form-control form-control-lg" value="">
                                                <%-- <option selected value="0">----- SELECT YOUR OPTION HERE -----</option>--%>
                                                    <option value="YES">YES</option>
                                                    <option selected value="NO">NO</option>
                                                </select>
                                                <span class="input-group-addon">
                                                <i class="fa fa-desktop "></i>
                                            </span>
                                            </div>
                                        </div>
                                    </c:when>
                                </c:choose>


                            </div>



                            <div class="row col-md-12">
                                <div class="col-md-6">
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group text-right">
                                        <button class="btn btn-primary btn-sm" type="button" id="approveReview"><i class="fa fa-check"></i> APPROVE</button>
                                        <%--<button class="btn btn-warning ms-btn-remarks-history"><i class="icofont icofont-history"></i> Remarks History</button>--%>
                                        <button class="btn btn-primary btn-sm" type="button" id="rejectReview"><i class="icofont icofont-trash"></i> REJECT</button>
                                        <button class="btn btn-primary btn-sm" type="button" id="sendBackReview"><i class="fa-paper-plane"></i> SENDBACK</button>
                                    </div>
                                </div>
                            </div>
                        </form>
            </sec:authorize>

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
<script type="text/javascript" src="<c:url value="/assets/js/transactionMonitoringUnit/reviewManualTpinSusRect.js" />"></script>
<!-- Select 2 js -->
<script type="text/javascript" src="<c:url value="/assets/bower/select2/js/select2.full.min.js"/>"></script>
<!-- Custom js -->
<script type="text/javascript" src="<c:url value="/assets/pages/advance-elements/select2-custom.js"/>"></script>
<%--File uploads JS--%>
<script type="text/javascript" src="<c:url value="/assets/pages/jquery.filer/js/jquery.filer.min.js"/>"></script>
<%--Link to js that is populating table for attachments--%>
<script type="text/javascript" src="<c:url value="/assets/js/riskmanagement/getReviewerAttachments.js" />"></script>



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


