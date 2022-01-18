<%--
  Created by IntelliJ IDEA.
  User: DAKAL
  Date: 11/02/2021
  Time: 00:54
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>

<!-- Sidebar inner chat end-->
<div class="pcoded-main-container">
    <div class="pcoded-wrapper">
        <nav class="pcoded-navbar" pcoded-header-position="relative">
            <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
            <div class="pcoded-inner-navbar main-menu">
                <div class="pcoded-navigatio-lavel d-none" data-i18n="nav.category.navigation"
                     menu-title-theme="theme5">Wirepick Direct
                </div>
                <ul class="pcoded-item pcoded-left-item">
                    <%--  ADD MENU INCLUDES --%>

                    <jsp:include page="menus/darshBoardMenu.jsp"/>
                    <jsp:include page="menus/userTransactionsMenu.jsp"/>
                    <jsp:include page="menus/accountsMenu.jsp"/>

                </ul>
            </div>

        </nav>
        <div class="pcoded-content">
            <div class="pcoded-inner-content">
                <div class="main-body">
                    <div class="page-wrapper">