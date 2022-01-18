<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<nav class="navbar header-navbar pcoded-header" header-theme="theme4">
    <div class="navbar-wrapper">
        <div class="navbar-logo">
            <a class="mobile-menu" id="mobile-collapse" href="#!">
                <i class="ti-menu"></i>
            </a>
            <a class="mobile-search morphsearch-search" href="#">
                <i class="ti-search"></i>
            </a>
            <a href="<c:url value="/index" />">
                <img class="img-fluid" src="<c:url value="/assets/logo/taxonline_logo.png" />" alt="TaxOnline Logo"/>
            </a>
            <a class="mobile-options">
                <i class="ti-more"></i>
            </a>
        </div>
        <div class="navbar-container container-fluid">
            <div>
                <ul class="nav-left col-md-6">
                    <li>
                        <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                    </li>
                    <li>
                        <a class="main-search morphsearch-search" href="#">
                            <!-- themify icon -->
                            <i class="ti-search"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#!" onclick="javascript:toggleFullScreen()">
                            <i class="ti-fullscreen"></i>
                        </a>
                    </li>
                    <li style="margin-left:30%;opacity:0.9;">
                        <a href="#" style="font-weight: bold; color: #C0A062; font-size: 22px;line-height:3.1">
                            Zambia Revenue Authority
                        </a>
                    </li>
                </ul>
                <ul class="nav-right">
                    <li class="header-notification lng-dropdown">
                        <a href="#" id="dropdown-active-item">
                            <i class="flag-icon flag-icon-gb m-r-5"></i> English
                        </a>
                        <ul class="show-notification">
                            <li>
                                <a href="#" data-lng="en">
                                    <i class="flag-icon flag-icon-gb m-r-5"></i> English
                                </a>
                            </li>
                            <li>
                                <a href="#" data-lng="es">
                                    <i class="flag-icon flag-icon-es m-r-5"></i> Spanish
                                </a>
                            </li>
                            <li>
                                <a href="#" data-lng="pt">
                                    <i class="flag-icon flag-icon-pt m-r-5"></i> Portuguese
                                </a>
                            </li>
                            <li>
                                <a href="#" data-lng="fr">
                                    <i class="flag-icon flag-icon-fr m-r-5"></i> French
                                </a>
                            </li>
                        </ul>
                    </li>


                </ul>
                <!-- search -->
                <div id="morphsearch" class="morphsearch">
                    <form class="morphsearch-form">
                        <input class="morphsearch-input" type="search" placeholder="Search..."/>
                        <button class="morphsearch-submit" type="submit">Search</button>
                    </form>
                    <div class="morphsearch-content">
                        <div class="dummy-column">
                            <h2>People</h2>
                            <a class="dummy-media-object" href="#!">
                                <img class="round"
                                     src="#"
                                     alt="cms"/>
                                <h3>cms</h3>
                            </a>
                            <a class="dummy-media-object" href="#!">
                                <img class="round"
                                     src="#"
                                     alt="cms"/>
                                <h3>cms</h3>
                            </a>
                        </div>
                        <div class="dummy-column">
                            <h2>Popular</h2>
                            <a class="dummy-media-object" href="#!">
                                <img src="<c:url value="/assets/images/avatar-1.png" />" alt="PagePreloadingEffect"/>
                                <h3>Page Preloading Effect</h3>
                            </a>
                            <a class="dummy-media-object" href="#!">
                                <img src="<c:url value="/assets/images/avatar-1.png" />"
                                     alt="DraggableDualViewSlideshow"/>
                                <h3>Draggable Dual-View Slideshow</h3>
                            </a>
                        </div>
                        <div class="dummy-column">
                            <h2>Recent</h2>
                            <a class="dummy-media-object" href="#!">
                                <img src="<c:url value="/assets/images/avatar-1.png" />"
                                     alt="TooltipStylesInspiration"/>
                                <h3>Tooltip Styles Inspiration</h3>
                            </a>
                            <a class="dummy-media-object" href="#!">
                                <img src="<c:url value="/assets/images/avatar-1.png" />" alt="NotificationStyles"/>
                                <h3>Notification Styles Inspiration</h3>
                            </a>
                        </div>
                    </div>
                    <!-- /morphsearch-content -->
                    <span class="morphsearch-close"><i class="icofont icofont-search-alt-1"></i></span>
                </div>
                <!-- search end -->
            </div>
        </div>
    </div>
</nav>

<div class="pcoded-main-container">
    <div class="pcoded-wrapper">
        <nav class="pcoded-navbar" pcoded-header-position="relative">
            <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
            <div class="pcoded-inner-navbar main-menu">
                <div class="pcoded-navigatio-lavel" data-i18n="nav.category.navigation" menu-title-theme="theme5">Main
                    Menu
                </div>
                <ul class="pcoded-item pcoded-left-item">
                    <%-- Add Menu sections --%>

                    <br/>

                    <li class="pcoded-hasmenu">
                        <a href="<c:url value="/index"/>">
                            <span class="pcoded-micon"><i class="fa fa-home"></i></span>
                            <span class="pcoded-mtext" data-i18n="nav.page_layout.main">Home</span>
                            <span class="pcoded-mcaret"></span>
                        </a>
                    </li>

                    <li >
                        <a id="continueReg" style="cursor: pointer">
                            <span class="pcoded-micon"><i
                                    class="icofont icofont icofont-fountain-pen text-warning submenuicons"></i></span>
                            <span class="pcoded-mtext" data-i18n="nav.page_layout.main">Continue Registration</span>
                            <span class="pcoded-mcaret"></span>
                        </a>
                    </li>


                </ul>
            </div>
        </nav>
        <div class="pcoded-content">
            <div class="pcoded-inner-content">

                <div class="main-body">
                    <div class="page-wrapper">
                                                                
            
        

            