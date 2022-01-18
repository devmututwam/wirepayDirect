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
<!-- Data Table Css -->
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/bower/datatables.net-bs4/css/dataTables.bootstrap4.min.css" />"/>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/pages/data-table/css/buttons.dataTables.min.css" />"/>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/bower/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" />"/>
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
        <h4>View TPINs on exception list</h4>
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

            <form method="post" id="configureNumberOfDaysForm" action=""   >
                <div style="margin-left: 15px; margin-right: 15px;" class="alert alert-info">
                    TPINs on exception list
                </div>


                <%--ADD YOUR CONTENT HERE--%>



                <div class="dt-responsive table-responsive">
                    <table id="simpletable" class="table table-hover table-striped table-bordered nowrap">
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>TPIN</th>
                            <th>TPIN TYPE</th>
                            <th>REFERENCE NUMBER</th>
                            <th>DATE ADDED</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:if test="${not empty exceptionList}">
                            <c:forEach var="exceptionTpin" items="${exceptionList}" varStatus="counter">
                                <tr>
                                    <td>${counter.count}.</td>
                                    <td>${exceptionTpin.tpin}</td>
                                    <td>${exceptionTpin.tpinType}</td>
                                    <td>${exceptionTpin.transactionId}</td>
                                    <td>${exceptionTpin.modifiedDate}</td>
                                    <%--<td><fmt:parseDate value="${ exceptionTpin.modifiedDate }" pattern="yyyy-MM-dd'T'HH:mm"
                                                       var="parsedDateTime" type="both"/>
                                        <input class="form-control" disabled type="text"
                                               value="<fmt:formatDate pattern="dd-MM-yyyy" value="${ parsedDateTime }" />"/></td>--%>
                                </tr>
                            </c:forEach>
                        </c:if>

                        </tbody>
                    </table>
                </div>




                <%--ADD YOUR CONTENT HERE--%>


            </form>

        </div>

    </div>
</div>
<%-- End of Page content --%>
<!--Escape to layout folder-->
<jsp:include page="../layout/scripts.jsp"/>
<!-- data-table js -->
<jsp:include page="../layout/dataTable.jsp"/>

<!--{{ADD YOUR SCRIPTS HERE}}-->
<script type="text/javascript" src="<c:url value="/assets/bower/sweetalert/js/sweetalert.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/pages/store-js/moment.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" />"></script>
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
<script src="<c:url value="/assets/pages/data-table/js/dataTables.select.min.js"/>"></script>
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
<!-- Select 2 js -->
<script type="text/javascript" src="<c:url value="/assets/bower/select2/js/select2.full.min.js"/>"></script>
<!-- Custom js -->
<script type="text/javascript" src="<c:url value="/assets/pages/advance-elements/select2-custom.js"/>"></script>

<script>
    $(document).ready(function() {

        $('#simpletable').DataTable( {
            dom: 'Bfrtip',
            searching: true,
            paging:   true,
            ordering: true,
            info:     true,
            lengthChange: true,
            buttons: [
                {
                    extend: 'copy',
                },
                {
                    extend: 'excel',
                },
                {
                    extend: 'csv',
                }
            ],

        } );

    } );
</script>

<!--Escape to layout folder-->
<jsp:include page="../layout/footer.jsp"/>


