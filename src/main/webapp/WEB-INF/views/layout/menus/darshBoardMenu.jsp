<%--
  Created by IntelliJ IDEA.
  User: SINKOLOLWE LAZAROUS
  Date: 2/15/2021
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<li class="pcoded-hasmenu">
    <a href="javascript:void(0)">
        <span class="pcoded-micon"><img src="<c:url value="/assets/images/icons/dashboard.png" />"
                                        class="menuicons"/></span>
        <span class="pcoded-mtext" data-i18n="nav.animations.main">Main</span>
        <span class="pcoded-mcaret"></span>
    </a>
    <ul class="pcoded-submenu">

        <li class=" ">
            <a href="<c:url value="/dashboardMain" />"> <span
                    class="pcoded-micon"><i class="icon-chart"></i></span> <span
                    class="pcoded-mtext"
                    data-i18n="nav.page_layout.vertical.static-layout">Main Darshboard</span>
                <span class="pcoded-mcaret"></span>
            </a>
        </li>
        <li class=" ">
            <a href="<c:url value="/darshBoardSummary" />"> <span
                    class="pcoded-micon"><i class="icon-chart"></i></span> <span
                    class="pcoded-mtext"
                    data-i18n="nav.page_layout.vertical.static-layout">Transactional Darshboard</span>
                <span class="pcoded-mcaret"></span>
            </a>
        </li>





    </ul>
</li>
