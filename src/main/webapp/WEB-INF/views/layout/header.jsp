<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Wirepick Direct</title>
    <!--[if lt IE 9]>
	<script type="text/javascript" src="<c:url value='/assets/js/shared/html5shiv.js' />"></script>
	<script type="text/javascript" src="<c:url value='/assets/js/shared/respond.min.js' />"></script>
	<![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <meta name="description" content="Wirepick | Smartpay Solution"/>
    <meta name="keywords" content=""/>
    <meta name="author" content="ZRA"/>

    <base href="<c:url value="/" />"/>
    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

    <!-- Required Framework -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/bootstrap/css/bootstrap.min.css" />"/>
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/icon/font-awesome/css/font-awesome.min.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/flag-icon/flag-icon.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/icon/icofont/css/icofont.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/linearicons.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/simple-line-icons.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/ionicons.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/icon/themify-icons/themify-icons.css" />">

    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/list-scroll/list.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/stroll/css/stroll.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/sweetalert/css/sweetalert.css" />"/>
    <%-- Animate.css	--%>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/animate.css" />">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/main.css" />"/>

    <!--color css-->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/jquery.mCustomScrollbar.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/session/session.css" />"/>
    <!-- Offline themes css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/offline/css/offline-theme-slide.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/offline/css/offline-language-english.css"/>"/>
    <style>
        .datepicker table tr td, .datepicker table tr th{
            cursor:pointer;
        }
        .datepicker table tr td .month,.datepicker table tr td .year{
            border:1px solid #efefef;
            padding:3px;
            border-radius:5px;
        }
        .datepicker table tr td .month:hover,.datepicker table tr td .year:hover{
            border:1px solid #efefef;
            padding:3px;
            border-radius:5px;
            background:#00477f;
            color:white;
        }
        .day{
            color:#12212f;
        }
        .datepicker table tr td.day:hover, .datepicker table tr td.focused{
            color:white;
            background:#00477f;
        }
        .menuicons{
            height:20px;
            width:20px;
           /* width:auto;*/
            padding-left:1px;
        }
        .submenuicons{
            font-size:24px;
            width:auto;
            padding-left:1px;
        }

        .header-navbar .navbar-wrapper .navbar-container .header-notification .show-notification button,
        .header-navbar .navbar-wrapper .navbar-container .mega-menu-top .show-notification button,
        .header-navbar .navbar-wrapper .navbar-container .header-notification .profile-notification button,
        .header-navbar .navbar-wrapper .navbar-container .mega-menu-top .profile-notification button {
            color: #666;
            -webkit-transition: all 0.3s ease-in-out;
            transition: all 0.3s ease-in-out;
        }

        .link{
            color: #666;
            text-decoration: none;
            background-color: transparent;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
        }

        .modal-xsm {
            max-width: 200px
        }
       .collapse-level-1{
           padding:0.35rem 1rem 0.35rem 2rem;
           font-size: 14px;
       }

    .lock-button {
        position: fixed;
        bottom: 20px;
        right: 80px;
    }
    </style>