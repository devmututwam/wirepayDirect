<%--
  Created by IntelliJ IDEA.
  User: MWANGAMB
  Date: 11/03/2021
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<jsp:include page="../layout/header.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/datatables.net-bs4/css/dataTables.bootstrap4.min.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/data-table/css/buttons.dataTables.min.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" />"/>
<style>
    label{
        font-weight: bold;
    }
    red{
        color: red;
    }
</style>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/sweetalert/css/sweetalert.css" />"/>

<sec:authorize access="hasAuthority('TMU_APP_CUSTOMS_CLEAR_LET_REV')">

<jsp:include page="../layout/navigationBar.jsp" />
<jsp:include page="../layout/sideBar.jsp" />

<div class="page-header">
    <div class="page-header-title">
        <h4>Review Customs Clearing Letter Application</h4>
    </div>
    <div class="page-header-breadcrumb">
        <ul class="breadcrumb-title">
            <li class="breadcrumb-item"><a href="index.html"> <i class="icofont icofont-home"></i>
            </a></li>
            <li class="breadcrumb-item"><a href="#!">Home</a></li>
            <li class="breadcrumb-item"><a href="#!">Transaction Monitoring Unit</a></li>
            <li class="breadcrumb-item"><a href="#!">Review Customs Clearing Letter Application</a></li>
        </ul>
    </div>
</div>
<div class="page-body">
    <div class="card">

        <div class="card-header">
            <h5>Review Customs Clearing Letter Application</h5>
            <div class="card-header-right">
                <i class="icofont icofont-refresh"><a href="<c:url value=" /security/privileges" />"></a></i>
                <i class="icofont icofont-close-circled"></i>
            </div>
        </div>
        <div class="card-block">
            <form disabled readonly id="captureClearingApplicationForm" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-6">
                        <label for="declarant_tpin">Enter TPIN *</label>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <input disabled readonly class="form-control" required id="declarant_tpin" type="number" name="declarant_tpin" required placeholder="Your TPIN" value="${clearingApplications.declarantTpin}" maxlength="15" minlength="9" >
                        </div>
                        <br>
                    </div>
                    <div class="col-md-6">
                        <label for="category">Category *</label>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <select disabled readonly class="form-control" id="category" name="category" type="text" required placeholder="Category" >
                                <option disabled value=""></option>
                                <option disabled value="NEW" <c:if test="${clearingApplications.category == 'NEW'}"> selected </c:if>>New</option>
                                <option disabled value="RENEWAL" <c:if test="${clearingApplications.category == 'RENEWAL'}">selected</c:if>>Renewal</option>
                                <option disabled value="AMENDMENT" <c:if test="${clearingApplications.category == 'AMENDMENT'}"> selected </c:if>>Amendment</option>
                            </select>
                        </div>
                        <br>
                    </div>
                    <div class="col-md-6">
                        <label for="date">Application Date *</label>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <input disabled readonly class="form-control" id="date" name="date" type="datetime"  required placeholder="Date Of Aplication" value="${clearingApplications.createdDate}"/>
                        </div>
                        <br>
                    </div>
                    <div class="col-md-6">
                        <label for="appref">Application Reference *</label>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>

                            <input disabled readonly class="form-control" id="appref" name="appref" type="text"  required placeholder="Application Reference" value="${clearingApplications.applicationRef}"/>
                        </div>
                        <br>
                    </div>
                    <div class="col-lg-12">
                        <label for="reasons">Reasons *</label>
                        <small id="emailHelp" class="form-text text-muted">Maximum Of 2000 Characters</small>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <textarea disabled readonly rows="10" cols="5" maxlength="2000" class="form-control" id="reasons" name="reasons" required placeholder="Reasons">${clearingApplications.reasons}</textarea>
                        </div>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <label class="form-control-label">Licensing Cycle From *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="licensingCycleFrom" name="licensingCycleFrom" value="${clearingApplications.licensingCycleFrom}" readonly />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label class="form-control-label">Licensing Cycle To *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="licensingCycleTo" name="licensingCycleTo" value="${clearingApplications.licensingCycleTo}" readonly/>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label class="form-control-label">Period Considere From *</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="consideredPeriod" name="consideredPeriod" value="${clearingApplications.consideredPeriod}" readonly />
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <label for="reasonsStatus">Reasons For Rejection If Any <red>*</red></label>
                        <small id="emailHelp" class="form-text text-muted">Maximum Of 2000 Characters</small>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <textarea rows="8" cols="5" maxlength="2000" required class="form-control" id="reasonsStatus" name="reasonsStatus" placeholder="Reasons For Rejection"></textarea>
                        </div>
                        <br>
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
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr class="row_${key}">
                            <td>a</td>
                            <td>b</td>
                            <td>c</td>
                            <td>d</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <input type="hidden" class="reference" value="${refNumber}">

            </form>


    <sec:authorize access="hasAuthority('TMU_APP_CUSTOMS_CLEAR_LET_REV')">
            <div class="row">
                <div class="col-lg-12 text-right">
                    <form id="review_form" name="review_form" class="col-md-4" style="display: inline">
                        <input type="hidden"  id="review_input" name="status" value="REVIEWED">
                        <input class="form-control" type="hidden" id="transactionId_1" name="applicationRef" required value="${clearingApplications.applicationRef}"/>
                        <input class="form-control" type="hidden" id="declarantTpin_1" name="declarantTpin" required value="${clearingApplications.declarantTpin}"/>
                        <button type="submit" id="review_btn" class="btn btn-success btn-sm" value="Approved">Approve</button>
                    </form>
                    <%--                    <form name="send_back_form" id="send_back_form" class="col-md-4" style="display: inline">--%>
                    <%--                        <input type="hidden" id="send_back_input" name="trend_status" value="SENT_BACK">--%>
                    <%--                        <input class="form-control" type="hidden" id="transactionId_2" name="transactionId" required value="${clearingApplications.id}"/>--%>
                    <%--                        <button type="submit" id="returnTrendAnalysis" class="btn btn-warning btn-sm" value="SENT_BACK">Send Back</button>--%>
                    <%--                    </form>--%>
                    <form name="reject_form" id="reject_form" class="col-md-" style="display: inline">
                        <input type="hidden"  id="reject_input" name="status" value="REJECTED">
                        <input class="form-control" type="hidden" id="transactionId_3" name="applicationRef" required value="${clearingApplications.applicationRef}"/>
                        <input class="form-control" type="hidden" id="declarantTpin_3" name="declarantTpin" required value="${clearingApplications.declarantTpin}"/>
                        <button type="submit" id="reject_btn" class="btn btn-danger btn-sm" value="REJECTED">Reject</button>
                    </form>
                </div>
            </div>
    </sec:authorize>
        </div>

    </div>
</div>

<%-- End of Page content --%>
<!--Escape to layout folder-->
<jsp:include page="../layout/scripts.jsp" />
<jsp:include page="../layout/dataTable.jsp"/>
</sec:authorize>
<!--{{ADD YOUR SCRIPTS HERE}}-->
<script type="text/javascript" src="<c:url value="/assets/bower/sweetalert/js/sweetalert.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/transactionMonitoringUnit/reviewClearingApplication.js"/>"></script>
<script src="<c:url value="/assets/bower/datatables.net/js/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="/assets/bower/datatables.net-buttons/js/dataTables.buttons.min.js"/>"></script>
<script src="<c:url value="/assets/pages/data-table/js/jszip.min.js"/>"></script>
<script src="<c:url value="/assets/pages/data-table/js/pdfmake.min.js"/>"></script>
<script src="<c:url value="/assets/pages/data-table/js/vfs_fonts.js"/>"></script>
<script src="<c:url value="/assets/bower/datatables.net-buttons/js/buttons.print.min.js"/>"></script>
<script src="<c:url value="/assets/bower/datatables.net-buttons/js/buttons.html5.min.js"/>"></script>
<script src="<c:url value="/assets/bower/datatables.net-bs4/js/dataTables.bootstrap4.min.js"/>"></script>
<script src="<c:url value="/assets/bower/datatables.net-responsive/js/dataTables.responsive.min.js"/>"></script>
<script src="<c:url value="/assets/bower/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"/>"></script>
<script src="<c:url value="/assets/pages/data-table/js/data-table-custom.js"/>"></script>
<script src="<c:url value="/assets/pages/data-table/js/dataTables.select.min.js"/>"></script>

<script type="text/javascript" src="<c:url value="/assets/bower/bootstrap-datepicker/js/bootstrap-datepicker.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/pages/advance-elements/bootstrap-datetimepicker.min.js" />"></script>
<!-- Date-range picker js -->
<script type="text/javascript" src="<c:url value="/assets/bower/bootstrap-daterangepicker/js/daterangepicker.js" />"></script>
<!-- Date-dropper js -->
<script type="text/javascript" src="<c:url value="/assets/bower/datedropper/js/datedropper.min.js" />"></script>
<%--File uploads JS--%>
<script type="text/javascript" src="<c:url value="/assets/pages/jquery.filer/js/jquery.filer.min.js"/>"></script>
<%--Link to js that is populating table for attachments--%>
<script type="text/javascript" src="<c:url value="/assets/js/riskmanagement/getAttachments.js" />"></script>


<script type="text/javascript">
    //init elements
    $().ready(function () {
        /*
                $('#filer_input').filer({
                    limit: 10,
                    maxSize: 3,
                    extensions: ['jpg', 'jpeg', 'png', 'gif', 'psd', 'pdf'],
                    changeInput: true,
                    showThumbs: true,
                    addMore: true
                });


                //dates
                $('input[name="endDate"], input[name="startDate"]').datepicker({
                    startDate: new Date(),
                    showOnFocus: false
                });
                // console.log($('input[name="endDate"]'));
        */

    });
</script>
<!--Escape to layout folder-->
<jsp:include page="../layout/footer.jsp" />
