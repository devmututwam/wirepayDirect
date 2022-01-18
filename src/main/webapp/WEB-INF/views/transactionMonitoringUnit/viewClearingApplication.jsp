<%--
        Created by IntelliJ IDEA.
        User: MWANGAMB
        Date: 15/02/2021
        Time: 17:43
        To change this template use File | Settings | File Templates.
        --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../layout/header.jsp" />
<%--File uploads css--%>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/jquery.filer/css/jquery.filer.css"/>"/>

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
<sec:authorize access="hasAnyAuthority('TMU_CUSTOMS_CLEAR_LET_REV', 'TMU_CUSTOMS_CLEAR_LET_APP')">
<jsp:include page="../layout/navigationBar.jsp" />
<jsp:include page="../layout/sideBar.jsp" />

<div class="page-header">
    <div class="page-header-title">
        <h4>Customs Clearing Letter Application</h4>
    </div>
    <div class="page-header-breadcrumb">
        <ul class="breadcrumb-title">
            <li class="breadcrumb-item"><a href="index.html"> <i class="icofont icofont-home"></i>
            </a></li>
            <li class="breadcrumb-item"><a href="#!">Home</a></li>
            <li class="breadcrumb-item"><a href="#!">Transaction Monitoring Unit</a></li>
            <li class="breadcrumb-item"><a href="#!">View Clearing Letter Application</a></li>
        </ul>
    </div>
</div>
<div class="page-body">
    <div class="card">
        <div class="card-header">
            <h5>View Clearing Letter Application</h5>
            <div class="card-header-right">
                <i class="icofont icofont-refresh"><a href="<c:url value=" /security/privileges" />"></a></i>
                <i class="icofont icofont-close-circled"></i>
            </div>
        </div>
        <div class="card-block">
            <form id="#" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-6">
                        <label for="declarant_tpin">TPIN</label>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <input class="form-control" id="declarant_tpin" type="number" name="declarant_tpin" required disabled readonly placeholder="Your TPIN" value="${clearingApplications.declarantTpin}" min="0" maxlength="15">
                        </div>
                        <br>
                    </div>
                    <div class="col-md-6">
                        <label for="category">Category</label>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <select class="form-control" id="category" name="category" type="text" required readonly disabled placeholder="Category" >
                                <option value=""></option>
                                <option value="NEW" <c:if test="${clearingApplications.category == 'NEW'}"> selected </c:if>>New</option>
                                <option value="RENEWAL" <c:if test="${clearingApplications.category == 'RENEWAL'}">selected</c:if>>Renewal</option>
                                <option value="AMENDMENT" <c:if test="${clearingApplications.category == 'AMENDMENT'}"> selected </c:if>>Amendment</option>
                            </select>
                        </div>
                        <br>
                    </div>
                    <div class="col-lg-12">
                        <label for="reasons">Reasons For Applying</label>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <textarea readonly disabled rows="10" cols="5" class="form-control" id="reasons" name="reasons" maxlength="2000" required placeholder="Reasons">${clearingApplications.reasons}</textarea>
                        </div>
                        <br>
                    </div>
                    <div class="col-lg-12">
                        <label for="reasonsStatus">Reasons For Application's Status</label>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <textarea readonly disabled rows="10" cols="5" class="form-control" id="reasonsStatus" name="reasons" maxlength="2000" required placeholder="Reasons">${clearingApplications.reasonsStatus}</textarea>
                        </div>
                        <br>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <label class="form-control-label" for="licensingCycleFrom">Licensing Cycle From</label>
                        <div class="input-group">
                            <input class="form-control" id="licensingCycleFrom" name="licensingCycleFrom" type="text" value="${clearingApplications.licensingCycleFrom}" disabled readonly required>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <label class="form-control-label" for="licensingCycleTo">Licensing Cycle To</label>
                        <div class="input-group">
                            <input class="form-control" id="licensingCycleTo" name="licensingCycleTo" type="text" value="${clearingApplications.licensingCycleTo}" disabled readonly required>
                        </div>
                    </div>

                    <%--<div class="col-md-6">
                        <label class="form-control-label" for="consideredPeriod">Period Considere From</label>
                        <div class="input-group">
                            <input class="form-control" id="consideredPeriod" name="consideredPeriod" type="text" value="${clearingApplications.consideredPeriod}" disabled readonly required>
                        </div>
                    </div>--%>

                    <div class="col-md-6">
                        <label class="form-control-label" for="status">Status</label>
                        <div class="input-group">
                            <input class="form-control" id="status" name="status" type="text" value="${clearingApplications.status}" disabled readonly required>
                        </div>
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
                <input type="hidden" class="reference" value="${clearingApplications.applicationRef}">

                <div class="row">
                    <div class="col-md-6">
                        <br>
                        <br>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%-- End of Page content --%>
<!--Escape to layout folder-->
<jsp:include page="../layout/scripts.jsp" />
</sec:authorize>
<!--{{ADD YOUR SCRIPTS HERE}}-->
<script type="text/javascript" src="<c:url value="/assets/bower/sweetalert/js/sweetalert.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/transactionMonitoringUnit/submitClearingApplication.js"/>"></script>
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
    });
</script>

<!--Escape to layout folder-->
<jsp:include page="../layout/footer.jsp" />