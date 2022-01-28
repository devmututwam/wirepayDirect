<%--
  Created by IntelliJ IDEA.
  User: DAKAL
  Date: 10/02/2021
  Time: 22:27
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
</head>
<link rel="stylesheet" href="<c:url value="/assets/css/enforcementAlert/vue-select.css"/>"/>
<body>
<input type="hidden" id="root" name="Root" value="${pageContext.request.contextPath}"/>
<!-- Pre-loader start -->
<jsp:include page="loader.jsp"/>
<!-- Pre-loader end -->
<!-- Menu header start -->
<div id="pcoded" class="pcoded">
    <div class="pcoded-overlay-box"></div>
    <div class="pcoded-container navbar-wrapper">

        <nav class="navbar header-navbar pcoded-header" header-theme="theme4">
            <div class="navbar-wrapper">
                <div class="navbar-logo">
                    <a class="mobile-menu" id="mobile-collapse" href="javascript:void(0)">
                        <i class="ti-menu"></i>
                    </a>
                    <a class="mobile-search morphsearch-search" href="#">
                        <i class="ti-search"></i>
                    </a>
                    <a href="<c:url value="/dashboardMain" />">
<%--                        <img class="img-fluid" src="<c:url value="/assets/logo/cm.png" />"--%>
                        <img class="img-fluid" src="<c:url value="/assets/logo/wirepick_logo.png" />"
                             alt="Customs Management Logo"/>
                    </a>
                    <a class="mobile-options">
                        <i class="ti-more"></i>
                    </a>
                </div>
                <div class="navbar-container container-fluid">
                    <div>
                        <ul class="nav-left">
                            <li>
                                <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a>
                                </div>
                            </li>
                            <li>
                                <a href="#!" onclick="javascript:toggleFullScreen()">
                                    <i class="ti-fullscreen"></i>
                                </a>
                            </li>
                            <li style="margin-left:7rem;opacity:0.9;">
                                <a href="<c:url value="/dashboardMain" /> "
                                   style="font-weight: bold; color: #C0A062; font-size: 16px;">
                                    Wirepick Direct
                                </a>
                            </li>
                        </ul>
                        <ul class="nav-right">

                            <li class="user-profile header-notification">
                                <img src="<c:url value="/assets/images/user.png" />" alt="User-Profile-Image">
                                <span class="authenticatedUser" style="color:white">${user.name}</span>

                                <i class="ti-angle-down" style="color:white"></i>
                                <ul class="show-notification profile-notification">
                                    <li class="d-none">
                                        <a href="#!">
                                            <i class="ti-settings"></i> Settings
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<c:url value="/userprofile" />">
                                            <i class="ti-user"></i> Profile
                                        </a>
                                    </li>

                                    <li>
                                        <a href="<c:url value="/email-inbox" />">
                                            <i class="ti-email"></i> My Messages
                                        </a>
                                    </li>

                                    <li class="header-notification d-none">
                                        <a href="javascript:void(0)" id="help">
                                            <i class="icofont icofont-paper-plane m-r-5"></i> Report an Issue
                                        </a>
                                    </li>

                                    <li class="d-none">
                                        <a href="auth-lock-screen.html">
                                            <i class="ti-lock"></i> Lock Screen
                                        </a>
                                    </li>

                                    <li>
                                        <a class="signOut" href="javascript:void(0)"
                                           data-href="<c:url value="/" />">
                                           <%--data-href="<c:url value="/sign_out" />">--%>
                                            <i class="icofont icofont-sign-out"></i> Sign Out
                                        </a>
                                    </li>

                                    <li class="d-none">
                                        <a class="logout" href="javascript:void(0)"
                                           data-href="<c:url value="/logout" />">
                                            <i class="icofont icofont-sign-out"></i> Logout
                                        </a>
                                    </li>

                                </ul>
                            </li>
                        </ul>
                        <!-- search -->
                        <div id="morphsearch" class="morphsearch d-none">
                            <form class="morphsearch-form">
                                <input class="morphsearch-input" type="search" placeholder="Search..."/>
                                <button class="morphsearch-submit" type="submit">Search</button>
                            </form>
                            <div class="morphsearch-content">
                            </div>
                            <span class="morphsearch-close"><i class="icofont icofont-search-alt-1"></i></span>
                        </div>
                        <!-- search end -->
                    </div>
                </div>
            </div>
        </nav>

        <script type="text/javascript" src="<c:url value="/assets/bower/axios/js/axios.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="/assets/bower/vue/js/vue.min.js"/>"></script>
