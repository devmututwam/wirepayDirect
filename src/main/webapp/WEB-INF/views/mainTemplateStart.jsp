<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 12/20/2021
  Time: 3:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Escape to layout folder-->
<jsp:include page="layout/header.jsp"/>
<!-- flag icon framework css -->
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/flag-icon/flag-icon.min.css"/>"/>
<!-- Menu-Search css -->
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/menu-search/css/component.css"/>"/>
<!--forms-wizard css-->
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/jquery.steps/css/jquery.steps.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/sweetalert/css/sweetalert.css" />"/>
<!-- Select 2 css -->
<link rel="stylesheet" href="<c:url value="/assets/bower/select2/css/select2.min.css" />"/>
<!-- Data Table Css -->
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/bower/datatables.net-bs4/css/dataTables.bootstrap4.min.css" />"/>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/pages/data-table/css/buttons.dataTables.min.css" />"/>
<link rel="stylesheet" type="text/css"
      href="<c:url value="/assets/bower/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" />"/>
<style>
    /** Custom styles for enabled days. */
    .day, .month, .year {color: #282828 !important;}
    .day.disabled, .year.disabled, .month.disabled {color: #d7d7d7 !important;}
    .day.focused {color: #a8a8a8;}
    .day.active {color: #fff !important;}
</style>
<!--Escape to layout folder-->
<jsp:include page="layout/navigationBar.jsp"/>
<jsp:include page="layout/sideBar.jsp"/>


<%-- Start of Page content --%>

<%--
    INSET YOUR PAGE HEADER AND PAGE BODY HERE
--%>


<%-- End of Page content --%>


