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
        <span class="pcoded-micon"><img src="<c:url value="/assets/images/icons/payments.png" />"
                                        class="menuicons"/></span>
        <span class="pcoded-mtext" data-i18n="nav.animations.main">Accounts</span>
        <span class="pcoded-mcaret"></span>
    </a>
    <ul class="pcoded-submenu">

        <%-- Accounts  --%>
        <li class=" pcoded-hasmenu">
            <a href="<c:url value="/accounts/configureAccounts" />"> <span
                    class="pcoded-micon"><i class="icon-chart"></i></span> <span
                    class="pcoded-mtext"
                    data-i18n="nav.page_layout.vertical.static-layout">Configure Accounts</span>
                <span class="pcoded-mcaret"></span>
            </a>
        </li>
        <li class=" pcoded-hasmenu">
            <a href="<c:url value="/accounts/viewAccounts" />"> <span
                    class="pcoded-micon"><i class="icon-chart"></i></span> <span
                    class="pcoded-mtext"
                    data-i18n="nav.page_layout.vertical.static-layout">View Accounts</span>
                <span class="pcoded-mcaret"></span>
            </a>
        </li>
        <li class=" pcoded-hasmenu">
            <a href="<c:url value="/accounts/accountAmmendments" />"> <span
                    class="pcoded-micon"><i class="icon-chart"></i></span> <span
                    class="pcoded-mtext"
                    data-i18n="nav.page_layout.vertical.static-layout">Ammendments</span>
                <span class="pcoded-mcaret"></span>
            </a>
        </li>


    </ul>
</li>
