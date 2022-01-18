<%--
  Created by IntelliJ IDEA.
  User: MWANGAMB
  Date: 11/03/2021
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>

<jsp:include page="../layout/header.jsp" />
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/datatables.net-bs4/css/dataTables.bootstrap4.min.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/data-table/css/buttons.dataTables.min.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/sweetalert/css/sweetalert.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/datatables.net-bs4/css/dataTables.bootstrap4.min.css" />">
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/data-table/css/buttons.dataTables.min.css" />">
<style>
    label {
        font-weight: bold;
    }

    red {
        color: red;
    }
</style>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" />">
<sec:authorize access="hasAuthority('TMU_CUSTOMS_CLEAR_LET_REV')">
<jsp:include page="../layout/navigationBar.jsp" />
<jsp:include page="../layout/sideBar.jsp" />

<div class="page-header">
    <div class="page-header-title">
        <h4>Review Clearing Letter Appeal</h4>
    </div>
    <div class="page-header-breadcrumb">
        <ul class="breadcrumb-title">
            <li class="breadcrumb-item"><a href="index.html"> <i class="icofont icofont-home"></i>
                </a></li>
            <li class="breadcrumb-item"><a href="#!">Home</a></li>
            <li class="breadcrumb-item"><a href="#!">Transaction Monitoring Unit</a></li>
            <li class="breadcrumb-item"><a href="#!">Review Clearing Letter Appeal</a></li>
        </ul>
    </div>
</div>
<div class="page-body">
    <div class="card">

        <div class="card-header">
            <h5>Review Clearing Letter Appeal</h5>
            <div class="card-header-right">
                <i class="icofont icofont-refresh"><a href="<c:url value=" /security/privileges" />"></a></i>
                <i class="icofont icofont-close-circled"></i>
            </div>
        </div>
        <div class="card-block">
            <div class="row"><b class="col-lg-12">Appeal Details</b></div>
            <div class="row">
                <div class="col-md-6">
                    <label for="declarant_tpin">Declarants TPIN </label>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <input disabled readonly class="form-control" maxlength="15" minlength="9" required id="declarant_tpin" type="number" name="declarant_tpin" required placeholder="Your TPIN" value="${clearingAppeal.declarantTpin}">
                    </div>
                    <br>
                </div>
                <div class="col-md-6">
                    <label for="status">Status </label>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <input disabled readonly class="form-control" id="status" name="status" type="text" required placeholder="Status" value="${clearingAppeal.status}" />
                    </div>
                    <br>
                </div>
                <div class="col-md-6">
                    <label for="date">Appeal Date </label>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <input disabled readonly class="form-control" id="date" name="date" type="datetime" required placeholder="Date Of Aplication" value="${clearingAppeal.createdDate}" />
                    </div>
                    <br>
                </div>
                <div class="col-md-6">
                    <label for="appealref">Appeal Reference</label>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <input disabled readonly class="form-control" id="appealref" name="appealref" type="text" required placeholder="Application Reference" value="${clearingAppeal.applicationRef}" />
                    </div>
                    <br>
                </div>
                <div class="col-lg-12">
                    <label for="reasons">Reasons For Appeal</label>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <textarea disabled readonly rows="10" cols="5" minlength="25" maxlength="2000" class="form-control" id="reasons" name="reasons" required placeholder="Reasons">${clearingAppeal.reasons}</textarea>
                    </div>
                    <br>
                </div>
                <div class="col-lg-12">
                    <label for="reasons">Current Reasons For Appeal's Status</label>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <textarea disabled readonly rows="10" cols="5" minlength="25" maxlength="2000" class="form-control" id="reasons" name="reasons" required placeholder="Reasons">${clearingAppeal.reasonsStatus}</textarea>
                    </div>
                    <br>
                </div>
            </div>
            <div class="row"><b class="col-lg-12">Initial Application Details</b>

                <div class="col-md-6">
                    <label for="statusApp">Status Of Application </label>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <input disabled readonly class="form-control" id="statusApp" name="statusApp" type="text" required placeholder="Status Of Application" value="${clearingApplication.status}" />
                    </div>
                    <br>
                </div>
                <div class="col-md-6">
                    <label for="dateApp">Date Of Application</label>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <input disabled readonly class="form-control" id="dateApp" name="dateApp" type="text" required placeholder="Date Of Application" value="${clearingApplication.createdDate}" />
                    </div>
                    <br>
                </div>
                <div class="col-md-6">
                    <label for="refApp">Application Reference</label>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <input disabled readonly class="form-control" id="refApp" name="refApp" type="text" required placeholder="Application Reference" value="${clearingApplication.applicationRef}" />
                    </div>
                    <br>
                </div>
                <div class="col-md-12">
                    <label for="reasonApp">Reasons Of Application</label>
                    <small id="emailHelp" class="form-text text-muted">Maximum Of 2000 Characters</small>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <textarea disabled readonly rows="6" maxlength="2000" class="form-control" id="reasonApp" name="reasonApp" type="text" required placeholder="Application Reasons">${clearingApplication.reasons}</textarea>
                    </div>
                    <br>
                </div>
                <div class="col-md-12">
                    <label for="reasonApp">Current Reasons For Application's Status</label>
                    <small id="emailHelp" class="form-text text-muted">Maximum Of 2000 Characters</small>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <textarea disabled readonly rows="6" maxlength="2000" class="form-control" id="reasonApp" name="reasonApp" type="text" required placeholder="Application Reasons">${clearingApplication.reasonsStatus}</textarea>
                    </div>
                    <br>
                </div>

                <div class="col-lg-12">
                    <label for="reasonsStatus">Reasons For Your Decision <red>*</red></label>
                    <small id="emailHelp" class="form-text text-muted">Maximum Of 2000 Characters</small>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="icofont icofont-comment"></i>
                        </span>
                        <textarea rows="8" cols="5" class="form-control" maxlength="2000" id="reasonsStatus" required name="reasonsStatus" placeholder="Reasons For Rejection"></textarea>
                    </div>
                    <br>
                </div>
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
            </div>

            <div class="row">
                <div class="col-lg-12 text-right">
                    <form id="review_form" name="review_form" class="col-md-4" style="display: inline">
                        <input type="hidden" id="review_input" name="trend_status" value="REVIEWED">
                        <input class="form-control" type="hidden" id="declarantTpin_1" name="declarantTpin" required value="${clearingAppeal.declarantTpin}" />
                        <input class="form-control reference" type="hidden" id="transactionId_1" name="transactionId" required value="${clearingAppeal.transactionId}" />
                        <input class="form-control" type="hidden" id="applicationRef_1" name="applicationRef" required value="${clearingAppeal.applicationRef}" />
                        <button type="submit" id="approveTrendAnalysis" class="btn btn-success btn-sm" value="Approved">
                            <c:if test="${clearingAppeal.status != 'INITIATED'}">
                                Resubmit
                            </c:if>
                            <c:if test="${clearingAppeal.status  == 'INITIATED'}">
                                Approve
                            </c:if>
                        </button>
                    </form>
                    <%--                    <form name="send_back_form" id="send_back_form" class="col-md-4" style="display: inline">
                                            <input type="hidden" id="send_back_input" name="trend_status" value="SENT_BACK">
                                            <input class="form-control" type="hidden" id="transactionId_2" name="transactionId" required value="${clearingApplications.id}"/>
                                            <button type="submit" id="returnTrendAnalysis" class="btn btn-warning btn-sm" value="SENT_BACK">Send Back</button>
                                        </form>--%>
                    <form name="reject_form" id="reject_form" class="col-md-" style="display: inline">
                        <input type="hidden" id="reject_input" name="trend_status" value="REJECTED">
                        <input class="form-control" type="hidden" id="transactionId_3" name="transactionId" required value="${clearingAppeal.transactionId}" />
                        <input class="form-control" type="hidden" id="declarantTpin_3" name="declarantTpin" required value="${clearingAppeal.declarantTpin}" />
                        <input class="form-control" type="hidden" id="applicationRef_3" name="applicationRef" required value="${clearingAppeal.applicationRef}" />
                        <button type="submit" id="rejectTrendAnalysis" class="btn btn-danger btn-sm" value="REJECTED">Reject</button>
                    </form>
                </div>
            </div>

        </div>

    </div>
</div>

<%-- End of Page content --%>
<!--Escape to layout folder-->
<jsp:include page="../layout/scripts.jsp" />
</sec:authorize>
<!--{{ADD YOUR SCRIPTS HERE}}-->
<script type="text/javascript" src="<c:url value="/assets/bower/sweetalert/js/sweetalert.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/js/transactionMonitoringUnit/reviewClearingAppeal.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net/js/jquery.dataTables.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net-buttons/js/dataTables.buttons.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/pages/data-table/js/jszip.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/pages/data-table/js/pdfmake.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/pages/data-table/js/vfs_fonts.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net-buttons/js/buttons.print.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net-buttons/js/buttons.html5.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net-bs4/js/dataTables.bootstrap4.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net-responsive/js/dataTables.responsive.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js" />"></script>
<script type="application/javascript" src="<c:url value="/assets/js/transactionMonitoringUnit/viewClearingApplication.js" />"></script>
<%--File uploads JS--%>
<script type="text/javascript" src="<c:url value="/assets/pages/jquery.filer/js/jquery.filer.min.js" />"></script>
<%--Link to js that is populating table for attachments--%>
<script type="text/javascript" src="<c:url value="/assets/js/riskmanagement/getAttachments.js" />"></script>
<script>
    $(document).ready(function() {
        //get Files
        let reference = $('.reference').val();
        $.get('fileManager/getFiles/' + reference).done(function(response) {
            let index = 1;
            let table = $("#attachmentTable > tbody");
            $('#attachmentTable').DataTable();
            console.log(response, reference);
            let row;
            $.each(response, function(key, file) {
                row += ` <tr class="row_${key}">
                            <td>${index}</td>
                            <td>${file.name}</td>
                            <td>
                                <a href="fileManager/view/${key}" target="_blank" class="btn btn-sm btn-primary">Download File</a>
                            </td>
                            <td>
                                <button value="${key}" type="button" class="btn btn-sm btn-danger deleteFileBtn">Delete File</button>
                            </td>
                        </tr>`;
                index++;
            })
            if (index > 1) {
                $('.attachmentTableCover').show();
            }
            table.html("");
            table.append(row);
        });

        $(document).on("click", ".deleteFileBtn", function() {
            let key = $(this).val();

            swal({
                    title: "Confirm",
                    text: "Are you sure you want to delete this file",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonClass: "btn-danger",
                    confirmButtonText: "Yes",
                    closeOnConfirm: false
                },
                function() {
                    $.ajax({
                        url: $('input[name=Root]').val() + '/fileManager/removeFile/' + key,
                        method: 'POST',
                        data: {},
                        success: function(response) {
                            console.log(response);
                            $(".row_" + key).hide();
                            swal("Success", "File Deleted Successfully", "success");
                        }
                    });
                });
        });

    });
</script>
<!--Escape to layout folder-->
<jsp:include page="../layout/footer.jsp" />