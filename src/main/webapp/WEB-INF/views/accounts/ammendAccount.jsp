<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 12/20/2021
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>

<jsp:include page="../mainTemplateStart.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/sweetalert/css/sweetalert.css" />"/>


<%--PUT YOUR PAGE CONTENT BETWEEN THESE TAGS--%>
<%--start of tag--%>
<div class="page-header">
    <div class="page-header-title">
        <h4>Ammend Account Details</h4>
    </div>
    <div class="page-header-breadcrumb">
        <ul class="breadcrumb-title">
            <li class="breadcrumb-item"><a> <i
                    class="icofont icofont-home"></i>
            </a></li>
            <li class="breadcrumb-item"><a href="#!">Home</a></li>
            <li class="breadcrumb-item"><a href="#!">Wirepick</a></li>
            <li class="breadcrumb-item active"><a href="#!">Ammend Account</a></li>
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

            <form method="post" id="ammendAccountForm" action=""   >
                <div style="margin-left: 15px; margin-right: 15px;" class="alert alert-info">
                    Review your account details here and submit the form
                </div>


                <%--ADD YOUR CONTENT HERE--%>

                <div class="row" id="ARL" style="display:block;">
                    <div class="col-sm-6 col-sm-6" style="float: left;">
                        <br>
                        <label> Account Name </label> <br>
                        <input class="form-control" type="text"
                               name="accountName" id="accountName" placeholder="name of account" value="${account.accountName}" required>
                        <br>
                        <label> Bank Name </label> <br>
                        <input class="form-control" type="text"
                               name="bankName" id="bankName" placeholder="Name of Bank" value="${account.bankName}" required>
                        <br>
                        <label> Branch Name </label> <br>
                        <input class="form-control" type="text"
                               name="branchName" id="branchName" placeholder="Name of branch" value="${account.branchName}" required>
                        <br>

                    </div>
                    <br>
                    <div class="col-sm-6" style="float: right;">
                        <label> Branch Code </label> <br>
                        <input class="form-control" type="text"
                               name="branchCode" id="branchCode" placeholder="branch code" value="${account.branchCode}" required>
                        <br>
                        <label> Account Number </label> <br>
                        <input class="form-control" type="number"
                               name="accountNumber" id="accountNumber" placeholder="Account Number" maxlength="13" min="0" value="${account.accountNumber}" required>
                        <br>
                        <label> TPIN </label> <br>
                        <input class="form-control" type="number"
                               name="tpin" id="tpin" placeholder="TPIN" maxlength="10" min="0" value="${account.idNumber}">
                        <br>
                        <br>

                        <div class="form-group text-right">
                            <button type="button" id="submitAmmendedAccDetails" class="btn btn-success mr-3">
                                <i class="icofont icofont-paper-plane"></i> Submit
                            </button>
                        </div>
                    </div>
                </div>

                <%--ADD YOUR CONTENT HERE--%>


            </form>

        </div>

    </div>
</div>

<%--end of tag--%>
<%--PUT YOUR PAGE CONTENT BETWEEN THESE TAGS--%>

<jsp:include page="../mainTemplateEnd.jsp"/>
<%--Put your custom JS here--%>
<script type="text/javascript" src="<c:url value="/assets/bower/sweetalert/js/sweetalert.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assets/js/accounts/ammendAccout.js"/>"></script>

