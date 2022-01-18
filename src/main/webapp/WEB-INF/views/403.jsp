<%--
  Created by IntelliJ IDEA.
  User: DAKAL
  Date: 23/03/2021
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
    <title>ZRA | TaxOnline Customs Module</title>
    <!--[if lt IE 9]>
	<script type="text/javascript" src="<c:url value='/assets/js/shared/html5shiv.js' />"></script>
	<script type="text/javascript" src="<c:url value='/assets/js/shared/respond.min.js' />"></script>
	<![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <meta name="description" content="Zambia Revenue Authority - Customs Management System"/>
    <meta name="keywords" content=""/>
    <meta name="author" content="ZRA"/>

    <base href="<c:url value="/" />"/>
    <!-- Favicon icon -->
    <link rel="icon" href="<c:url value="/assets/logo/flavicon.png" />" type="image/x-icon"/>

    <!-- Required Framework -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/bootstrap/css/bootstrap.min.css" />"/>

    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/main.css" />"/>

    <!-- Offline themes css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/offline/css/offline-theme-slide.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/offline/css/offline-language-english.css"/>"/>

    <style>
        .rounded {
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div class="d-flex flex-row h-100">
    <div class="col-md-6 .d-sm-none .d-md-block px-3 my-auto">
        <div>
            <img class="img-fluid" src="<c:url value="/assets/images/error/error-6.svg" /> " alt="Access denied illustration">
        </div>
    </div>
    <div class="col-sm-12 col-md-6 px-5 my-auto">
        <h1>Access denied - error 403</h1>
        <h4>${msg}</h4>
        <c:url value="/logout" var="logoutUrl" />
        <c:url value="/" var="homeUrl" />
        <div class="m-t-15">
            <a class="btn btn-primary rounded mr-3" href="${homeUrl}">Go Back</a>
            <a class="btn btn-outline-danger rounded" href="${logoutUrl}">Log Out</a>
        </div>
    </div>
</div>

</body>
</html>
