<%--
  Created by IntelliJ IDEA.
  User: DAKAL
  Date: 11/02/2021
  Time: 00:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="layout/header.jsp"/>

<div class="page-header">
    <div class="page-header-title">
        <h4>Privileges</h4>
    </div>
    <div class="page-header-breadcrumb">
        <ul class="breadcrumb-title">
            <li class="breadcrumb-item"><a href="index.html"> <i
                    class="icofont icofont-home"></i>
            </a></li>
            <li class="breadcrumb-item"><a href="#!">Home</a></li>
            <li class="breadcrumb-item"><a href="#!">Security</a></li>
            <li class="breadcrumb-item"><a href="#!">Privileges</a></li>
        </ul>
    </div>
</div>
<div class="page-body">
    <div class="card">

        <div class="card-header">
            <h5>Privileges</h5>
            <div class="card-header-right">
                <i class="icofont icofont-refresh"><a
                        href="<c:url value="/security/privileges" />"></a></i>
                <i class="icofont icofont-close-circled"></i>
            </div>
        </div>
        <div class="card-block">
            <div class="row">
                <div class="col-sm-12">
                </div>
            </div>
        </div>

    </div>
</div>

<jsp:include page="layout/footer.jsp"/>