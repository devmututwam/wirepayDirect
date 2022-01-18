<%--
        Created by IntelliJ IDEA.
        User: MWANGAMB
        Date: 15/02/2021
        Time: 17:43
        To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../layout/header.jsp"/>

<!--{{PLACE YOUR PAGE SPECIFIC CSS HERE}}-->
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/bower/datatables.net-bs4/css/dataTables.bootstrap4.min.css" />"/>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/pages/data-table/css/buttons.dataTables.min.css" />"/>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/pages/data-table/css/select.dataTables.min.css" />"/>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/bower/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" />"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/sweetalert/css/sweetalert.css" />"/>
<!--forms-wizard css-->
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/jquery.steps/css/jquery.steps.css"/>">
<!-- Style.css -->
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/style.css"/>">
<%--Attachements--%>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/jquery.filer/css/jquery.filer.css"/>"/>
<!-- custom css -->
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/riskmanagement/selectivityRequest.css" />">
<style>
    label{
        font-weight: bold;
    }
    red{
        color: red;
    }
</style>
<sec:authorize access="hasAnyAuthority('TMU_CUSTOMS_CLEAR_LET_REV', 'TMU_CUSTOMS_CLEAR_LET_APP')">
<jsp:include page="../layout/navigationBar.jsp" />
<jsp:include page="../layout/sideBar.jsp" />

<div class="page-header">
    <div class="page-header-title">
        <h4>Customs Clearing Letter Applications</h4>
    </div>
    <div class="page-header-breadcrumb">
        <ul class="breadcrumb-title">
            <li class="breadcrumb-item"><a href="index.html"> <i class="icofont icofont-home"></i>
            </a></li>
            <li class="breadcrumb-item"><a href="#!">Home</a></li>
            <li class="breadcrumb-item"><a href="#!">Transaction Monitoring Unit</a></li>
            <li class="breadcrumb-item"><a href="#!">Customs Clearing Letter Applications</a></li>
        </ul>
    </div>
</div>
<div class="page-body">
    <div class="card">

        <div class="card-header">
            <h5>Customs Clearing Letter Applications</h5>
            <div class="card-header-right">
                <i class="icofont icofont-refresh"><a href="<c:url value=" /security/privileges" />"></a></i>
                <i class="icofont icofont-close-circled"></i>
            </div>
        </div>
        <div class="card-block table-responsive">
            <table id="viewClearingApplicationsTable" class="table table-striped table-bordered nowrap" style="width:100%">
             <thead>
                 <tr>
                      <th>N<u>o</u></th>
                      <th>TPIN</th>
                      <th>APPLICATION DATE</th>
                      <th>APPLICATION REF</th>
                      <th>STATUS</th>
                      <th>REASONS</th>
                      <th>ACTIONS</th>
                 </tr>
             </thead>
             <tbody>
<c:forEach var="applications" items="${clearingApplications}" varStatus="row">
                <tr>
                  <td>${row.count}</td>
                  <td>${applications.declarantTpin}</td>
                  <td>${applications.createdDate}</td>
                  <td>${applications.applicationRef}</td>
                  <td>${applications.status}</td>
                    <td><textarea rows="5" style="width: 100%" readonly disabled>${applications.reasonsStatus}</textarea></td>
                    <td>
                        <a class="btn-sm btn btn-info" href="<c:url value="transactionMonitoringUnit/viewClearingApplication?referenceNumber=${applications.applicationRef}" />" >View</a>
                        <c:if test="${applications.status=='APPROVED'}">
                            <a class="btn-sm btn btn-warning" href="<c:url value="transactionMonitoringUnit/downloadTCC?referenceNumber=${applications.applicationRef}" />" target="_blank" >View Letter</a>
                        </c:if>
                        <c:if test="${applications.status=='REJECTED'}">
                            <a class="btn-sm btn btn-danger" href="<c:url value="transactionMonitoringUnit/downloadRTCC?referenceNumber=${applications.applicationRef}&appealRef=0" />" target="_blank" >View Notice</a>
                        </c:if>
                    </td>
              </tr>
</c:forEach>
             </tbody>
            </table>
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

<!-- Custom js -->

<script type="text/javascript" src="<c:url value="/assets/pages/advance-elements/select2-custom.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/sweetalert/js/sweetalert.min.js"/>"></script>

<!-- modalEffects js nifty modal window effects -->

<script type="text/javascript" src="<c:url value="/assets/js/modalEffects.js"/>"></script>
<!-- data-table js -->

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
<script src="<c:url value="/assets/pages/data-table/js/dataTables.select.min.js"/>"></script>

<script>

    $(document).ready(function() {

      $('#viewClearingApplicationsTable').DataTable( {
            dom: 'Bfrtip',
            searching: true,
            paging: true,
            ordering:true,
            info:true,
            lengthChange: true,
            scrollX: true,
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

