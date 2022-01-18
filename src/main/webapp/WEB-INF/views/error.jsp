<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Wirepick | Smartpay Solution</title>
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
    <link rel="icon" href="<c:url value="/assets/logo/wirepick_logo.png" />" type="image/x-icon"/>

    <!-- Required Framework -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/bootstrap/css/bootstrap.min.css" />"/>

    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/main.css" />"/>

    <!-- Offline themes css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/offline/css/offline-theme-slide.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/assets/bower/offline/css/offline-language-english.css"/>"/>

    <style>
        .rounded {
            border-radius: 5px;
        }
    </style>
</head>
<body>
<div class="d-flex flex-row h-100">
    <div class="col-sm-12 col-md-6 px-5 my-auto">
        <div class="text-left">
            <table>
                <tr>
                    <td><strong>Status:</strong> ${status} </td>
                </tr>
                <tr>
                    <td><strong>Description:</strong> ${error}</td>
                </tr>
            </table>

            <h1>Sorry, we are unable to complete the process right now.</h1>
            <h4>An Error occurred while attempting to process your request.</h4>
            <div class="m-t-15">
                <c:url value="/" var="homeUrl"/>
                <a class="btn btn-primary rounded" href="${homeUrl}">Homepage</a>
            </div>
        </div>
    </div>
    <div class="col-md-6 .d-sm-none .d-md-block pr-5 my-auto">
        <div>
            <img class="img-fluid" src="<c:url value="/assets/images/error/error-7.svg"/> " alt="Error illustration">
        </div>
    </div>
</div>
<!--DO NO REMOVE-->
<!--TO BE REMOVED WHEN CODE IS MERGED INTO MASTER(GOLDEN COPY)-->
<table class="table table-bordered d-none">
    <thead>
    <tr>
        <th>TimeStamp:</th>
        <th>Status:</th>
        <th>Error:</th>
        <th>Message:</th>
        <th>Path:</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>${timestamp} </td>
        <td>${status}</td>
        <td>${error}</td>
        <td>${message}</td>
        <td>${path}</td>
    </tr>
    </tbody>
</table>
</body>
</html>
