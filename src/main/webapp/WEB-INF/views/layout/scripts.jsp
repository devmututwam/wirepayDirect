<%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div class="modal fade text-center" id="page-loader" tabindex="-1" role="dialog" data-backdrop="static"
     data-keyboard="false">
    <div class="modal-dialog modal-xsm" role="document">
        <div class="modal-content" style="margin:100% auto">
            <div class="modal-body">
                <div class="preloader-custom loader-block mt-3">
                    <div class="circ1"></div>
                    <div class="circ2"></div>
                    <div class="circ3"></div>
                    <div class="circ4"></div>
                </div>
                <p class="text-center"><span id="loading-message">Loading</span>....</p>
            </div>
        </div>
    </div>
</div>

<div class="modal fade no-select" id="offline-modal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Connection Lost</h4>
            </div>
            <div class="modal-body">
                <h5>Network Disconnected</h5>
                <p class=" m-t-15">Sorry your device has lost connectivity. This dialog will disappear ehn you are back
                    Online.</p>
            </div>
        </div>
    </div>
</div>
<jsp:include page="workflowHistory.jsp" />

<script type="text/javascript" src="<c:url value="/assets/bower/jquery/js/jquery.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/jquery-ui/js/jquery-ui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/popper/js/popper.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/bootstrap/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/axios/js/axios.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/es6/lodash.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/vue/js/vue.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/jquery-slimscroll/js/jquery.slimscroll.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/modernizr/js/modernizr.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/modernizr/js/css-scrollbars.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/classie/js/classie.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/sweetalert/js/sweetalert.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/common/common.script.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/common/index.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/common/auth.sign.out.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/session/session.timeout.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/script.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/pcoded.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/side_menu_init.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.mCustomScrollbar.concat.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/jquery.mousewheel.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/cookie/js.cookie.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/common/root.js"/>"></script>
<!-- Offline js -->
<script type="text/javascript" src="<c:url value="/assets/bower/offline/js/offline.min.js"/>"></script>

<!--include on specific page - workflow history-->
<script type="text/javascript" src="<c:url value="/assets/js/common/workflow-history.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/common/workflow-lock-task.js"/>"></script>

<script>
  /*  window.addEventListener('online', () => {
        console.log('Back Online');
        $('#offline-modal').modal('hide')
    });
    window.addEventListener('offline', () => {
        console.log('Now offline');
        $('#offline-modal').modal({
            backdrop: 'static',
            keyboard: false
        })
    });*/
</script>