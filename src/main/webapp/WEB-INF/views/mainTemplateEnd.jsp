<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 12/20/2021
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>



<%-- Start of Page content --%>

<%--
    INSET YOUR PAGE HEADER AND PAGE BODY HERE
--%>


<%-- End of Page content --%>


<!--Escape to layout folder-->
<jsp:include page="layout/scripts.jsp"/>
<!-- data-table js -->
<jsp:include page="layout/dataTable.jsp"/>

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
<jsp:include page="layout/footer.jsp"/>
