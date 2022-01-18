<%--
  Created by IntelliJ IDEA.
  User: MUTUTWAM
  Date: 12/6/2021
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Wirepick Direct</title>
    <!-- HTML5 Shim and Respond.js IE9 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script type="text/javascript" src="<c:url value='/assets/js/shared/html5shiv.js' />"></script>
    <script type="text/javascript" src="<c:url value='/assets/js/shared/respond.min.js' />"></script>

    <![endif]-->
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="planDescription" content="Phoenixcoded">
    <meta name="keywords"
          content=", Flat ui, Admin , Responsive, Landing, Bootstrap, App, Template, Mobile, iOS, Android, apple, creative app">
    <meta name="author" content="Phoenixcoded">
    <!-- Favicon icon -->
    <%--
        <link rel="icon" href="<c:url value="/assets/images/favicon.ico" />" type="image/x-icon">
    --%>
    <link rel="shortcut icon" href="<c:url value="/assets/images/favicon.ico" />" type="image/x-icon">
    <!-- Google font-->
    <link href="<c:url value="/assets/fonts/open-sans/font-css.css" />" rel="stylesheet">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/bootstrap/css/bootstrap.min.css" />">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/icon/themify-icons/themify-icons.css" /> ">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/icon/icofont/css/icofont.css" />">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/style.css" />">
    <!-- color .css -->
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/icon/font-awesome/css/font-awesome.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/sweetalert/css/sweetalert.css" />"/>
</head>

<body class="fix-menu">
<section class="login p-fixed d-flex text-center bg-primary common-img-bg">
    <!-- Container-fluid starts -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-3 col-lg-3 col-xl-3" style="display: flex;flex-direction: column; justify-content: center;align-items: center;margin: auto;">
                <!-- Authentication card start -->
                <div class="login-card card-block auth-body">

                    <form class="md-float-material" id="registerForm"  method="post" autocomplete="off">
                        <div class="auth-box">
                            <div class="row m-b-20">
                                <div class="col-md-12">
                                    <h3 class="text-center txt-primary">Register for account. It's fast and easy.</h3>
                                </div>
                            </div>
                            <hr/>
                            <div class="input-group">
                                <input type="text" id="username" name="username" class="form-control" placeholder="Choose Username">
                                <span class="md-line"></span>
                            </div>
                            <div class="input-group">
                                <input type="text" id="email" name="email" class="form-control" placeholder="Your Email Address">
                                <span class="md-line"></span>
                            </div>
                            <div class="input-group">
                                <input type="password" class="form-control" placeholder="Choose Password">
                                <span class="md-line"></span>
                            </div>
                            <div class="input-group">
                                <input type="password"  id="password" name="password" class="form-control" placeholder="Confirm Password">
                                <span class="md-line"></span>
                            </div>
                            <div class="row m-t-25 text-left">
                                <div class="col-md-12">
                                    <div class="checkbox-fade fade-in-primary">
                                        <label>
                                            <input type="checkbox" value="">
                                            <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                            <span class="text-inverse">I read and accept <a href="#">Terms &amp; Conditions.</a></span>
                                        </label>
                                    </div>
                                </div>
                                <%--<div class="col-md-12">
                                    <div class="checkbox-fade fade-in-primary">
                                        <label>
                                            <input type="checkbox" value="">
                                            <span class="cr"><i class="cr-icon icofont icofont-ui-check txt-primary"></i></span>
                                            <span class="text-inverse">Send me the <a href="">Newsletter</a> weekly.</span>
                                        </label>
                                    </div>
                                </div>--%>
                            </div>
                            <div class="row m-t-30">
                                <div class="col-md-12">
                                    <button type="button" id="registerBtn" class="btn btn-primary btn-md btn-block waves-effect text-center m-b-20">Register.</button>
                                </div>
                            </div>
                            <hr/>
                            <div class="row">
                                <div class="col-md-10">
                                    <p class="text-inverse text-left m-b-0">Wirepick Zambia.</p>
                                    <p class="text-inverse text-left"><b>Innovation through technology</b></p>
                                </div>
                                <div class="col-md-2">
                                    <img src="assets/images/auth/Logo-small-bottom.png" alt="small-logo.png">
                                </div>
                            </div>
                        </div>
                    </form>
                    <!-- end of form -->
                    <div class="iew-container d-none">
                        <p>Supported Browsers</p>
                        <ul class="list-inline">
                            <li class="mr-3">
                                <a href="http://www.google.com/chrome/" target="_blank" style="color: #fff;">
                                    <i class="fa fa-chrome" style="font-size: 45px; color: #fff;"></i>
                                    <div style="color: #fff; font-family: Roboto;">Chrome</div>
                                </a>
                            </li>
                            <li class="mr-3 ml-3">
                                <a href="https://www.mozilla.org/en-US/firefox/new/" target="_blank">
                                    <i class="fa fa-firefox" style="font-size: 45px; color: #fff;"></i>
                                    <div style="color: #fff; font-family: Roboto;">Firefox</div>
                                </a>
                            </li>
                            <li class="mr-3">
                                <a href="https://www.microsoft.com/en-us/windows/microsoft-edge" target="_blank">
                                    <i class="fa fa-edge" style="font-size: 45px; color: #fff;"></i>
                                    <div style="color: #fff; font-family: Roboto;">Microsoft Edge</div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- Authentication card end -->
            </div>
            <!-- end of col-sm-12 -->
        </div>
        <!-- end of row -->
    </div>
    <!-- end of container-fluid -->
</section>
<!-- Warning Section Starts -->
<!-- Older IE warning message -->
<!--[if lt IE 9]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers
        to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
<!-- Warning Section Ends -->
<!-- Required Jquery -->
<script type="text/javascript" src="<c:url value="/assets/bower/jquery/js/jquery.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/jquery-ui/js/jquery-ui.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/popper/js/popper.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/bootstrap/js/bootstrap.min.js" />"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="<c:url value="/assets/bower/jquery-slimscroll/js/jquery.slimscroll.js" />"></script>
<!-- modernizr js -->
<script type="text/javascript" src="<c:url value="/assets/bower/modernizr/js/modernizr.js"/> "></script>
<script type="text/javascript" src="<c:url value="/assets/bower/modernizr/js/css-scrollbars.js"/> "></script>
<!-- i18next.min.js -->
<script type="text/javascript" src="<c:url value="/assets/bower/i18next/js/i18next.min.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/bower/i18next-xhr-backend/js/i18nextXHRBackend.min.js" />"></script>
<script type="text/javascript"
        src="<c:url value="/assets/bower/i18next-browser-languagedetector/js/i18nextBrowserLanguageDetector.min.js" /> "></script>
<script type="text/javascript" src="<c:url value="/assets/bower/jquery-i18next/js/jquery-i18next.min.js" />"></script>
<script type="text/javascript" src="<c:url value="/assets/bower/sweetalert/js/sweetalert.min.js"/>"></script>
<!-- Custom js -->
<script type="text/javascript" src="<c:url value="/assets/js/security/registerUser.js" />"></script>
<!---- color js --->
<script type="text/javascript" src="assets/js/common-pages.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#showPassword').on('click', function (e) {
            var elem = $('i', '#showPassword');
            if ($(elem).hasClass('icofont-eye')) {
                $(elem).removeClass('icofont-eye');
                $(elem).addClass('icofont-eye-blocked').attr('title', 'Hide Password');
                $('[name="password"]').attr('type', 'text');
            } else {
                $(elem).removeClass('icofont-eye-blocked');
                $(elem).addClass('icofont-eye').attr('title', 'Show Password');
                $('[name="password"]').attr('type', 'password');
            }
        });
    });
</script>
</body>

</html>
