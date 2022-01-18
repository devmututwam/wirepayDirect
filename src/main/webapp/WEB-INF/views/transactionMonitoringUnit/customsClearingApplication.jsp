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
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/jquery.filer/css/jquery.filer.css"/>">

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
<%--<sec:authorize access="hasAuthority('TMU_CUSTOMS_CLEAR_LET_INIT')">--%>
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
        <li class="breadcrumb-item"><a href="#!">Customs Clearing Letter Application</a></li>
    </ul>
</div>
</div>
<div class="page-body">
<div class="card">

    <div class="card-header">
        <h5>Customs Clearing Letter Application</h5>
        <div class="card-header-right">
            <i class="icofont icofont-refresh"><a href="<c:url value=" /security/privileges" />"></a></i>
        <i class="icofont icofont-close-circled"></i>
    </div>
        <div>
            <div class="col-12">Check List</div>
            <div class="text-danger col-12"><b>Red Fields Are Invalid And Require Your Attention</b></div>
            <div class="text-success col-12"><b>Green Fields Are Valid</b></div>
        </div>
</div>
<div class="card-block">
    <form id="captureClearingApplicationForm" enctype="multipart/form-data" class="needs-validation" novalidate>

        <div class="row">
            <div class="col-md-6 form-group">
                <label for="declarantTpin">Enter Your TPIN <red>*</red></label>
                <br>
                <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                    <input class="form-control" id="declarantTpin" min="0" type="number" name="declarantTpin" required placeholder="Your TPIN" value="${clearingApplications.declarantTpin}" minlength="9" maxlength="15">
                </div>
                <br>
            </div>
            <div class="col-md-6">
                <label for="category">Select Category <red>*</red></label>
                <br>
                <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                    <select class="form-control" id="category" name="category" type="text" required >
                        <option value=""></option>
                        <option value="NEW" <c:if test="${clearingApplications.category == 'NEW'}"> selected </c:if> >New</option>
                        <option value="RENEWAL" <c:if test="${clearingApplications.category == 'RENEWAL'}">selected</c:if>>Renewal</option>
                        <option value="AMENDMENT" <c:if test="${clearingApplications.category == 'AMENDMENT'}"> selected </c:if>>Amendment</option>
                    </select>
                </div>
                <br>
            </div>
            <div class="col-lg-12">
                <label for="reasons">Reasons For Applying <red>*</red></label>
                <small id="emailHelp" class="form-text text-muted">Maximum Of 2000 Characters</small>
                <br>
                <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                    <textarea rows="10" cols="5" class="form-control" id="reasons" name="reasons" maxlength="2000" required placeholder="Reasons">${clearingApplications.reasons}</textarea>
                </div>
                <br>
            </div>
         </div>

        <div class="row">
            <div class="col-md-6">
                <label class="form-control-label" for="licensingCycleFrom">Licensing Cycle From <red>*</red></label>
                <div class="input-group">
                    <input class="form-control" id="licensingCycleFrom" name="licensingCycleFrom" type="date" required>
                </div>
            </div>

            <div class="col-md-6">
                <label class="form-control-label" for="licensingCycleTo">Licensing Cycle To <red>*</red></label>
                <div class="input-group">
                    <input class="form-control" id="licensingCycleTo" name="licensingCycleTo" type="date" required>
                </div>
            </div>

<%--            <div class="col-md-6">--%>
<%--                <label class="form-control-label" for="consideredPeriod">Period Considere From <red>*</red></label>--%>
<%--                <div class="input-group">--%>
<%--                    <input class="form-control" id="consideredPeriod" name="consideredPeriod" type="date" required>--%>
<%--                </div>--%>
<%--            </div>--%>


        </div>

        <%--input field--%>
        <div class="form-group  col-md-6">
            <label>Supporting Document(s) (Optional)</label>
            <br>
            <small>Allowed File Types: PDF</small><br>
            <small>Allowed Max File Size: 5MB</small><br>
            <div class="">
                <input id="filer_input" type="file" multiple="multiple" name="supportingDocuments[]" class="form-control">
            </div>
        </div>


        <div class="row">
            <div class="col-md-6">
                <br>
                <button type="submit" id="submitClearingApplication" class="btn btn-success btn-md" value="Submit"><b>Apply</b></button>
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
<%--</sec:authorize>--%>
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

<script type="text/javascript">
    //init elements
    $().ready(function () {

        //dates
        $('input[name="endDate"], input[name="startDate"]').datepicker({
            startDate: new Date(),
            showOnFocus: false
        });
    });
</script>

<script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>

<!--Escape to layout folder-->
<jsp:include page="../layout/footer.jsp" />