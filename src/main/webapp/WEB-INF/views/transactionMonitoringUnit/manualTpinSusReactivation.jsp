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
<%--
<link rel="stylesheet" href="<c:url value="/assets/bower/select2/css/select2.min.css" />"/>
--%>
<link rel="stylesheet" href="<c:url value="/assets/bower/select2/css/select2Tmu.min.css" />"/>

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

    .select2-selection__choice {
        background-color: blue;
    }

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
                    View Comments history
                    <i class="icofont icofont-comment"></i>
                </button>
            </div>
        </div>
        <div class="card-block">
            <sec:authorize access="hasAnyAuthority('MANUAL_SUS_INIT')">
                <form method="post" id="manualSuspReactivationForm" action="">
                    <div style="margin-left: 15px; margin-right: 15px;" class="alert alert-info">
                        Fill in the required fields and attach supporting documents if any
                    </div>
                    <div>
                        <label class="danger-colorr" id="errorMessage"></label>
                    </div>

                    <div class="col-sm-6 col-sm-6" style="float: left;">
                        <div class="form-group" id="processTypeDiv" style="padding-top:20px;">
                            <h4 class="sub-title">Process Type</h4>

                            <div class="input-group date" id="processTypeDivId">
                                <select id="processType" name="processType" class="form-control form-control-lg"
                                        required>
                                        ${tmuManualSuspActivation.processType}
                                    <option value="0">------ Indicate whether you're Activating/Suspending ------
                                    </option>
                                    <option
                                            <c:if test="${tmuManualSuspActivation.processType eq 'SUSPENSION'}">selected</c:if>
                                            value="SUSPENSION">Suspension
                                    </option>
                                    <option
                                            <c:if test="${tmuManualSuspActivation.processType eq 'REACTIVATION'}">selected</c:if>
                                            value="REACTIVATION">Reactivation
                                    </option>
                                </select>
                                <span class="input-group-addon" id="processTypeSpanId">
                                 <i class="fa fa-desktop "></i>
                                </span>
                            </div>
                        </div>

                        <div class="form-group" style="padding-top:20px;">
                            <h4 class="sub-title">Tpin Type</h4>
                            <div class="input-group date">
                                <select id="tpinType" name="tpinType" class="form-control form-control-lg" value=""
                                        required>
                                    <option value="0">------ Choose the type of Tpin ------</option>
                                    <option
                                            <c:if test="${tmuManualSuspActivation.tpinType eq 'DECLARANT'} ">selected</c:if>
                                            value="DECLARANT">DECLARANT
                                    </option>
                                    <option
                                            <c:if test="${tmuManualSuspActivation.tpinType eq 'CONSIGNEE'} ">selected</c:if>
                                            value="CONSIGNEE">CONSIGNEE
                                    </option>
                                </select>
                                <span class="input-group-addon">
                                <i class="fa fa-desktop "></i>
                            </span>

                            </div>
                        </div>

                        <div class="form-group" id="tpinDiv" style="padding-top:20px;">
                            <h4 class="sub-title">TPin</h4>
                            <div class="input-group date" id="tpinDivId">
                                <input type="number" id="tpin" name="tpin" class="form-control" maxlength="10" min="0"
                                       placeholder="Enter TPIN number"
                                       value="${tmuManualSuspActivation.tpin}"/>
                                <span class="input-group-addon" id="tpinSpan">
                                      <i class="fa fa-calculator"></i>
                            </span>
                            </div>
                        </div>

                        <div class="form-group" id="taxPayerNameDiv" style="padding-top:20px;">
                            <div class="input-group date" id="taxPayerNameDivId">
                                <input class="form-control" type="text" name="taxPayerName" id="taxPayerName"
                                       placeholder="Name of taxpayer" value="${tpinExpt.taxPayerName}" readonly>
                                <br>
                            </div>
                        </div>
                        <br>


                        <div class="form-group" id="reasonDiv" style="padding-top:20px;">
                            <h4 class="sub-title">Reason for application</h4>
                            <div class="input-group date" id="reasonDivId">
                                <textarea id="reason" name="reason" rows="4" class="form-control "
                                          placeholder="Enter the reason for suspension/activation."
                                          required>${tmuManualSuspActivation.reason}</textarea>
                                <span class="input-group-addon" id="reasonSpan">
                                      <i class="fa fa-microphone"></i>
                            </span>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-sm-6" style="float: right;">

                        <div class="form-group" id="tpinLevelDiv" style="padding-top:20px;">
                            <h4 class="sub-title">Suspension/Reactivation Level</h4>
                            <div class="input-group date" id="tpinLevelDivId">
                                <select id="tpinLevel" name="tpinLevel" onchange="getSelectedValue(this)"
                                        class="form-control form-control-lg" required>
                                    <option selected value="0">------ Select level of suspension ------</option>
                                    <option value="TPIN_LEVEL">TPIN level</option>
                                    <option value="PROCEDURE_LEVEL">Procedure level</option>
                                    <option value="TRANSACTION_LEVEL">Transaction level</option>
                                </select>
                                <span class="input-group-addon" id="tpinLevelSpanId">
                             <i class="fa fa-desktop "></i>
                            </span>
                            </div>
                        </div>
                        <br>
                            <%--<div class="form-group" id="procedureDiv" name="procedureDiv" >
                                <h4 class="sub-title">Select EPC</h4>
                                <div class="form-group" id="epcCodeDivId">
                                    <select id="epcCodeArray" name="epcCodeArray[]" class="form-control col-sm-12 select2" multiple="" >
                                        <option value="0">------ Select EPC(s) ------</option>
                                        <c:forEach var="epcCode" items="${epcCodes}">
                                            <option value="${epcCode.code}">${epcCode.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>--%>
                        <div class="form-group" id="procedureDiv" name="procedureDiv">
                            <h4 class="sub-title">Select EPC</h4>
                            <div class="form-group" id="epcCodeDivId">
                                <select id="epcCodeArray" name="epcCodeArray[]" class="form-control col-sm-12 select2"
                                        multiple="">
                                    <option value="0">------ Select EPC(s) ------</option>

                                </select>
                            </div>
                        </div>

                        <br>
                        <div class="form-group" id="transactionDiv" name="transactionDiv">
                            <h4 class="sub-title">Select Entry(ies)</h4>
                            <div class="form-group" id="entriesArrayDivId">
                                <select id="entriesArray" name="entriesArray[]" class="form-control col-sm-12 select2"
                                        multiple="">
                                    <option value="0">------ Select Entry(ies) ------</option>
                                </select>
                            </div>
                        </div>

                        <c:choose>
                            <c:when test="${not empty step}">
                                <div class="form-group" id="commentsDiv" style="padding-top:20px;">
                                    <h4 class="sub-title">Previous user's comments</h4>
                                    <div class="input-group date" id="hiddenFieldsDivId">
                                        <textarea id="comments" name="comments" rows="4" class="form-control "
                                                  placeholder="Enter your comments here."
                                                  readonly>${tmuManualSuspActivation.previoudUserComments}</textarea>
                                        <input type="text" id="refNumber" name="refNumber" value="${refNumber}" hidden>
                                        <input type="text" id="step" name="step" value="${step}" hidden>
                                        <span class="input-group-addon" id="commentsSpan">
                                          <i class="fa fa-microphone"></i>
                                </span>
                                    </div>
                                </div>
                            </c:when>
                        </c:choose>
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
                                <button type="button" id="submitManualRequest" class="btn btn-success mr-3">
                                    <i class="icofont icofont-paper-plane"></i> Submit
                                </button>
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
<jsp:include page="../riskmanagement/modals/rskCommentsModal.jsp"/>

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
        src="<c:url value="/assets/js/transactionMonitoringUnit/submitManualTpinSuspActivation.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/js/transactionMonitoringUnit/tmuManualSuspensionvalidations.js" />"></script>
<!-- Select 2 js -->
<script type="text/javascript" src="<c:url value="/assets/bower/select2/js/select2.full.min.js"/>"></script>
<!-- Custom js -->
<script type="text/javascript" src="<c:url value="/assets/pages/advance-elements/select2-custom.js"/>"></script>
<%--File uploads JS--%>
<script type="text/javascript" src="<c:url value="/assets/pages/jquery.filer/js/jquery.filer.min.js"/>"></script>

<script type="text/javascript">
    //Js for Start date
    $().ready(function () {

        //js - specify allowed file types
        /* $('#filer_input').filer({
             limit: 10,
             maxSize: 3,
             extensions: ['jpg', 'jpeg', 'png', 'gif', 'psd', 'pdf'],
             changeInput: true,
             showThumbs: true,
             addMore: true
         });*/

    });
</script>

<script>
    //Js for Manual Suspension Multiple Select
    $(document).ready(function () {
        $("#epcCodeArray").select2();
    });
</script>

<script>
    //Js for Manual Suspension Multiple Select
    $(document).ready(function () {
        $("#entriesArray").select2();
    });
</script>

<style>
    .select2-selection__choice {
        background-color: blue;
    }
</style>

<!--Escape to layout folder-->
<jsp:include page="../layout/footer.jsp"/>


