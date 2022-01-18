<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 12/20/2021
  Time: 3:30 PM
  To change this template use File | Settings | File Templates.
--%>

<jsp:include page="../mainTemplateStart.jsp"/>

<%--PUT YOUR PAGE CONTENT BETWEEN THESE TAGS--%>
<%--start of tag--%>
<div class="page-header">
    <div class="page-header-title">
        <h4>View Accounts</h4>
    </div>
    <div class="page-header-breadcrumb">
        <ul class="breadcrumb-title">
            <li class="breadcrumb-item"><a> <i
                    class="icofont icofont-home"></i>
            </a></li>
            <li class="breadcrumb-item"><a href="#!">Home</a></li>
            <li class="breadcrumb-item"><a href="#!">Wirepick</a></li>
            <li class="breadcrumb-item active"><a href="#!">View Accounts</a></li>
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

            <form method="post" id="accountAmmendmentsForm" action=""   >
                <div style="margin-left: 15px; margin-right: 15px;" class="alert alert-info">
                    View your available accounts for possible ammendment
                </div>


                <%--ADD YOUR CONTENT HERE--%>

                <div class="dt-responsive table-responsive">
                    <table id="simpletable" class="table table-hover table-striped table-bordered nowrap">
                        <thead>
                        <tr>
                            <th>No.</th>
                            <th>TPIN</th>
                            <th>ACC NAME</th>
                            <th>ACC NO</th>
                            <th>BANK NAME</th>
                            <th>BRANCH</th>
                            <th>BALANCE</th>
                            <th>STATUS</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:if test="${not empty availableAccounts}">
                            <c:forEach var="account" items="${availableAccounts}" varStatus="counter">
                                <tr>
                                    <td>${counter.count}.</td>
                                    <td>${account.idNumber}</td>
                                    <td>${account.accountName}</td>
                                    <%--<td>${account.accountNumber}</td>--%>
                                    <td>
                                        <a href="accounts/ammendAccount?accountNumber=${account.accountNumber}" class="text-info">${account.accountNumber}</a>
                                    </td>
                                    <td>${account.bankName}</td>
                                    <td>${account.branchName}</td>
                                    <td>${account.accountBalance}</td>
                                    <td>${account.status}</td>
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

<%--end of tag--%>
<%--PUT YOUR PAGE CONTENT BETWEEN THESE TAGS--%>

<jsp:include page="../mainTemplateEnd.jsp"/>
<%--Put your custom JS here--%>
<script type="text/javascript" src="<c:url value="/assets/js/accounts/configureAccount.js"/>"></script>

