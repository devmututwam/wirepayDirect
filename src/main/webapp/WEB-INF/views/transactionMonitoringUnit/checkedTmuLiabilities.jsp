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
                        <label for="declarantTpin">Enter TPIN <red>*</red></label>
                        <br>
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="icofont icofont-comment"></i>
                            </span>
                            <input class="form-control" id="declarantTpin" type="number" max="0" name="declarantTpin" required placeholder="Enter TPIN" value="${userTpin}">
                        </div>
                        <br>
                    </div>
                    <div class="col-md-6">
                        <br>
                        <button type="submit" id="submitClearingAppeal" class="btn btn-success btn-md" value="Submit"><b>Check</b></button>
                        <br>
                    </div>
                </div>
                <%--<div class="row">
                    <div class="alert alert-info">
                        ${response}
                    </div>
                </div>--%>
            </form>

            <div class="mt-5" id="checkLiabilitiesPage">
<c:if test="${suspended == true}">
                <div class="col-lg-10 alert alert-danger">This TPIN is <b>Suspended</b>. They Can Appeal To Have The TPIN (via the Portal) Activated Under <br>"TPIN & Customs Clearing > Appeal Tpin blockage > Initiate Appeal" </div>
</c:if>
                <c:if test="${liability == true}">
                    <div class="col-lg-10 alert alert-info">This TPIN has liabilities</div>
                    <div class="mt-4 col-md-12 bg-light">
                        <h5 class="pt-3 pb-3 col-lg-12 " data-toggle="collapse" data-target="#consigneeTableDiv" aria-expanded="false" aria-controls="consigneeTableDiv">Consignee : Liabilities <b> - ${consignee.size()}</b></h5>
                        <div data-parent="#checkLiabilitiesPage" id="consigneeTableDiv" class="collapse table-responsive dt-responsive"  style="overflow: auto;">
                            <table id="consigneeTable" class="table table-hover table-striped table-bordered" style="width: 100%">
                                <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Declaration Type</th>
                                    <th>Registration Details</th>
                                    <th>Assessment Details</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${consignee}" var="consignee" varStatus="row">
                                    <tr>
                                        <td>${row.count}</td>
                                        <td>${consignee.declarationType}</td>
                                        <td>Date : ${consignee.registrationDate}<br>Number : ${consignee.registrationNumber}<br>Serial : ${consignee.registrationSerial}</td>
                                        <td>Date : ${consignee.assessmentDate}<br>Number : ${consignee.assessmentNumber}<br>Serial : ${consignee.assessmentSerial}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="table-responsive mt-4 col-md-12 bg-light">
                        <h5 class="pt-3 pb-3 col-lg-12 " data-toggle="collapse" data-target="#declarantTableDiv" aria-expanded="false" aria-controls="declarantTableDiv">Declarant : Liabilities <b> - ${declarant.size()}</b></h5>
                        <div data-parent="#checkLiabilitiesPage" id="declarantTableDiv"  class="collapse table-responsive dt-responsive"  style="overflow: auto;">
                            <table id="declarantTable" class="table table-hover table-striped table-bordered" style="width: 100%">
                                <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Declaration Type</th>
                                    <th>Registration Details</th>
                                    <th>Assessment Details</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${declarant}" var="declarant" varStatus="row">
                                    <tr>
                                        <td>${row.count}</td>
                                        <td>${declarant.declarationType}</td>
                                        <td>Date : ${declarant.registrationDate}<br>Number : ${declarant.registrationNumber}<br>Serial : ${declarant.registrationSerial}</td>
                                        <td>Date : ${declarant.assessmentDate}<br>Number : ${declarant.assessmentNumber}<br>Serial : ${declarant.assessmentSerial}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="table-responsive mt-4 col-md-12 bg-light">
                        <h5 class="pt-3 pb-3 col-lg-12 " data-toggle="collapse" data-target="#sadDetailsDiv" aria-expanded="false" aria-controls="sadDetailsDiv">Customs Details : Liabilities <b> - ${sadDetails.size()}</b></h5>
                        <div data-parent="#checkLiabilitiesPage" id="sadDetailsDiv"  class="collapse table-responsive dt-responsive"  style="overflow: auto;" >
                            <table id="sadDetails" class="table table-hover table-striped table-bordered" style="width: 100%">
                                <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Declaration Type</th>
                                    <th>Amount Paid</th>
                                    <th>Amount Top Pay</th>
                                    <th colspan="">Registration Date</th>
                                    <th colspan="">Registration Number</th>
                                    <th colspan="">Registration Serial</th>
                                    <th colspan="">Assessment Date</th>
                                    <th colspan="">Assessment Number</th>
                                    <th colspan="">Assessment Serial</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${sadDetails}" var="sadDetails" varStatus="row">
                                    <tr>
                                        <td>${row.count}</td>
                                        <td>${sadDetails.declarationType}</td>
                                        <td>${sadDetails.amountPaid}</td>
                                        <td>${sadDetails.amountToPay}</td>
                                        <td>${sadDetails.assessmentDate}</td>
                                        <td>${sadDetails.registrationNumber}</td>
                                        <td>${sadDetails.registrationSerial}</td>
                                        <td>${sadDetails.assessmentDate}</td>
                                        <td>${sadDetails.assessmentNumber}</td>
                                        <td>${sadDetails.assessmentSerial}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="table-responsive mt-4 col-md-12 bg-light">
                        <h5 class="pt-3 pb-3 col-lg-12 " data-toggle="collapse" data-target="#untaxDetailsDiv" aria-expanded="false" aria-controls="untaxDetailsDiv">Other : Liabilities <b> - ${untaxDetails.size()}</b></h5>
                        <div data-parent="#checkLiabilitiesPage" id="untaxDetailsDiv" class="collapse table-responsive dt-responsive"  style="overflow: auto;">
                            <table id="untaxDetails" class="table table-hover table-striped table-bordered" style="width: 100%">
                                <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Commodity</th>
                                    <th>Valid From</th>
                                    <th>Valid To</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${untaxDetails}" var="untaxDetails" varStatus="row">
                                    <tr>
                                        <td>${row.count}</td>
                                        <td>${untaxDetails.lstCod}</td>
                                        <td>${untaxDetails.validFrom}</td>
                                        <td>${untaxDetails.validTo}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </c:if>
            </div>
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

<script type="text/javascript" src="<c:url value="/assets/pages/data-table/js/dataTables.select.min.js"/>"></script>

<script type="text/javascript">
    $(document).ready(function(){

        let exportOptions = {
            columns: ':visible:not(.not-exported)',
            rows: '.selected'
        }

        $('#consigneeTable').DataTable({
            searching: true,
            paging:   true,
            ordering: true,
            info:     true,
            lengthChange: true,
            // scrollX: true,
            select: true,
            dom: 'Bfrtip',
            buttons: [
                'selectAll',
                'selectNone',
                {
                    extend: 'copy',
                    exportOptions: exportOptions,
                },
                {
                    extend: 'excel',
                    exportOptions: exportOptions,
                },
                {
                    extend: 'csv',
                    exportOptions: exportOptions,
                }
            ],
        });

        $('#declarantTable').DataTable({
            searching: true,
            paging:   true,
            ordering: true,
            info:     true,
            lengthChange: true,
            // scrollX: true,
            select: true,
            dom: 'Bfrtip',
            buttons: [
                'selectAll',
                'selectNone',
                {
                    extend: 'copy',
                    exportOptions: exportOptions,
                },
                {
                    extend: 'excel',
                    exportOptions: exportOptions,
                },
                {
                    extend: 'csv',
                    exportOptions: exportOptions,
                }
            ],
        });

        $('#sadDetails').DataTable({
            searching: true,
            paging:   true,
            ordering: true,
            info:     true,
            lengthChange: true,
            // scrollX: true,
            select: true,
            dom: 'Bfrtip',
            buttons: [
                'selectAll',
                'selectNone',
                {
                    extend: 'copy',
                    exportOptions: exportOptions,
                },
                {
                    extend: 'excel',
                    exportOptions: exportOptions,
                },
                {
                    extend: 'csv',
                    exportOptions: exportOptions,
                }
            ],
        });

        $('#untaxDetails').DataTable({
            searching: true,
            paging:   true,
            ordering: true,
            info:     true,
            lengthChange: true,
            // scrollX: true,
            select: true,
            dom: 'Bfrtip',
            buttons: [
                'selectAll',
                'selectNone',
                {
                    extend: 'copy',
                    exportOptions: exportOptions,
                },
                {
                    extend: 'excel',
                    exportOptions: exportOptions,
                },
                {
                    extend: 'csv',
                    exportOptions: exportOptions,
                }
            ],
        });

    });

</script>

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
