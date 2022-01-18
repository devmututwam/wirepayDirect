<%--
  Created by IntelliJ IDEA.
  User: MWANGAMB
  Date: 25/03/2021
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="../layout/header.jsp" />

<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/datatables.net-bs4/css/dataTables.bootstrap4.min.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/data-table/css/buttons.dataTables.min.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/sweetalert/css/sweetalert.css" />"/>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/bower/datatables.net-bs4/css/dataTables.bootstrap4.min.css" />">
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/pages/data-table/css/buttons.dataTables.min.css" />">
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/bower/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" />">
<%--File uploads css--%>
<style>
    label{
        font-weight: bold;
    }
    red{
        color: red;
    }
</style>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/jquery.filer/css/jquery.filer.css"/>">
<jsp:include page="../layout/navigationBar.jsp" />
<jsp:include page="../layout/sideBar.jsp" />

<div class="page-header">
    <div class="page-header-title">
        <h4>Check For Liabilities</h4>
    </div>
    <div class="page-header-breadcrumb">
        <ul class="breadcrumb-title">
            <li class="breadcrumb-item"><a href="index.html"> <i class="icofont icofont-home"></i>
            </a></li>
            <li class="breadcrumb-item"><a href="#!">Home</a></li>
            <li class="breadcrumb-item"><a href="#!">Transaction Monitoring Unit</a></li>
            <li class="breadcrumb-item"><a href="#!">Check For Liabilities</a></li>
        </ul>
    </div>
</div>
<div class="page-body">
    <div class="card">

        <div class="card-header">
            <h5>Check For Liabilities</h5>
            <div class="card-header-right">
                <i class="icofont icofont-refresh"><a href="<c:url value=" /security/privileges" />"></a></i>
                <i class="icofont icofont-close-circled"></i>
            </div>
        </div>
        <div class="card-block">
            <form enctype="multipart/form-data" id="checkingTmuLiabilitiesForm" class="form needs-validation" novalidate>
                <p>
                <div class="col-12">Check List</div>
                <div class="text-danger col-6"><b>Red Fields Are Invalid And Require Your Attention</b></div>
                <div class="text-success col-6"><b>Green Fields Are Valid</b></div>
                </p>
                <div class="row">
                    <div class="col-md-6">
                        <label for="declarantTpin">Enter TPIN<red>*</red></label>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <input class="form-control" id="declarantTpin" type="number" min="0" name="declarantTpin" required placeholder="Enter TPIN">
                        </div>
                        <br>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-6">
                        <br>
                        <button type="submit" id="submitClearingAppeal" class="btn btn-success btn-md" value="Submit"><b>Check</b></button>
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

<!--{{ADD YOUR SCRIPTS HERE}}-->
<script type="text/javascript" src="<c:url value="/assets/bower/sweetalert/js/sweetalert.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/transactionMonitoringUnit/checkTmuLiabilities.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/bower/datatables.net/js/jquery.dataTables.min.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/bower/datatables.net-buttons/js/dataTables.buttons.min.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/pages/data-table/js/jszip.min.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/pages/data-table/js/pdfmake.min.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/pages/data-table/js/vfs_fonts.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/bower/datatables.net-buttons/js/buttons.print.min.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/bower/datatables.net-buttons/js/buttons.html5.min.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/bower/datatables.net-bs4/js/dataTables.bootstrap4.min.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/bower/datatables.net-responsive/js/dataTables.responsive.min.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/bower/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js" />"></script>

<script type="application/javascript" src="<c:url value="/assets/js/transactionMonitoringUnit/viewClearingApplication.js" />"></script>
<%--File uploads JS--%>
<script type="text/javascript" src="<c:url value="/assets/pages/jquery.filer/js/jquery.filer.min.js"/>"></script>



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
        // console.log($('input[name="endDate"]'));

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
