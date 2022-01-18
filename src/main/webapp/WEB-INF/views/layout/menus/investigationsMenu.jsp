<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 4/15/2021
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<sec:authorize access="hasAnyAuthority('INV_DC_ALLEGATION','INV_CAPTURE_ALLEGATION','INV_EXAMINE_ALLEGATION','INV_STATION_ALLEGATION','INV_REGIONAL_ALLEGATION')">--%>

<li class="pcoded-hasmenu">
    <a href="javascript:void(0)">
        <span class="pcoded-micon"><img src="<c:url value="/assets/images/icons/Investigations.jpg" />"
                                        class="menuicons"/></span>
        <span class="pcoded-mtext" data-i18n="nav.animations.main">Investigations</span>
        <span class="pcoded-mcaret"></span>
    </a>
    <ul class="pcoded-submenu">

<%--                Customs Investigations  --%>
    <sec:authorize access="hasAnyAuthority('INV_CAPTURE_ALLEGATION')">
            <li class=" ">
                <a href="<c:url value="/investigations/customsCaptureAllegation" />"> <span
                        class="pcoded-micon"><i class="icon-chart"></i></span> <span
                        class="pcoded-mtext"
                        data-i18n="nav.page_layout.vertical.static-layout">Submission of Allegation</span>
                    <span class="pcoded-mcaret"></span>
                </a>
            </li>
    </sec:authorize>
    <sec:authorize access="hasAnyAuthority('INV_DC_ALLEGATION','INV_STATION_ALLEGATION','INV_REGIONAL_ALLEGATION')">
            <li class=" ">
                <a href="<c:url value="/investigations/viewCustomsInvestigationsAllegations" />"> <span
                        class="pcoded-micon"><i class="icon-chart"></i></span> <span
                        class="pcoded-mtext"
                        data-i18n="nav.page_layout.vertical.static-layout">View Allegations</span>
                    <span class="pcoded-mcaret"></span>
                </a>
            </li>
    </sec:authorize>

            <sec:authorize access="hasAnyAuthority('INV_CAPTURE_ALLEGATION')">
                <li class=" ">
                    <a href="<c:url value="/investigations/customsFeedbackToInvestigations" />"> <span
                            class="pcoded-micon"><i class="icon-chart"></i></span> <span
                            class="pcoded-mtext"
                            data-i18n="nav.page_layout.vertical.static-layout">FeedBack to Investigations</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
            </sec:authorize>
            <sec:authorize access="hasAnyAuthority('INV_DC_ALLEGATION','INV_STATION_ALLEGATION','INV_REGIONAL_ALLEGATION')">
                <li class=" ">
                    <a href="<c:url value="/investigations/viewCustomsInvestigationsFeedbacks" />"> <span
                            class="pcoded-micon"><i class="icon-chart"></i></span> <span
                            class="pcoded-mtext"
                            data-i18n="nav.page_layout.vertical.static-layout">View Feedback</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
            </sec:authorize>

            <sec:authorize access="hasAnyAuthority('INV_CAPTURE_ALLEGATION')">
                <li class=" ">
                    <a href="<c:url value="/investigations/customsRequestToInvestigations" />"> <span
                            class="pcoded-micon"><i class="icon-chart"></i></span> <span
                            class="pcoded-mtext"
                            data-i18n="nav.page_layout.vertical.static-layout">Requests to Investigations</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
            </sec:authorize>
            <sec:authorize access="hasAnyAuthority('INV_DC_ALLEGATION','INV_STATION_ALLEGATION','INV_REGIONAL_ALLEGATION')">
                <li class=" ">
                    <a href="<c:url value="/investigations/viewCustomsInvestigationsRequests" />"> <span
                            class="pcoded-micon"><i class="icon-chart"></i></span> <span
                            class="pcoded-mtext"
                            data-i18n="nav.page_layout.vertical.static-layout">View Requests</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
            </sec:authorize>

<%--            <sec:authorize access="hasAnyAuthority('INV_CAPTURE_ALLEGATION')">--%>
<%--                <li class=" ">--%>
<%--                    <a href="<c:url value="/investigations/customsRequestToInvestigations" />"> <span--%>
<%--                            class="pcoded-micon"><i class="icon-chart"></i></span> <span--%>
<%--                            class="pcoded-mtext"--%>
<%--                            data-i18n="nav.page_layout.vertical.static-layout">Cas</span>--%>
<%--                        <span class="pcoded-mcaret"></span>--%>
<%--                    </a>--%>
<%--                </li>--%>
<%--            </sec:authorize>--%>
<%--            <sec:authorize access="hasAnyAuthority('INV_DC_ALLEGATION','INV_STATION_ALLEGATION','INV_REGIONAL_ALLEGATION')">--%>
                <li class=" ">
                    <a href="<c:url value="/investigations/viewCaseReferralsFromInvestigations" />"> <span
                            class="pcoded-micon"><i class="icon-chart"></i></span> <span
                            class="pcoded-mtext"
                            data-i18n="nav.page_layout.vertical.static-layout">View Case Referrals</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>
<%--            </sec:authorize>--%>

            <ul class="pcoded-submenu">

                <%--<li class=" ">
                    <a href="<c:url value="/transactionmonitoringunit/viewManualInterventionListList" />"> <span
                            class="pcoded-micon"><i class="icon-chart"></i></span> <span
                            class="pcoded-mtext"
                            data-i18n="nav.page_layout.vertical.static-layout">View Executed Tasks</span>
                        <span class="pcoded-mcaret"></span>
                    </a>
                </li>--%>

            </ul>

    </ul>
</li>

<%--</sec:authorize>--%>