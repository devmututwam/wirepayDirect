<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		 pageEncoding="ISO-8859-1" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>ZRA | CMS</title>
	<!-- HTML5 Shim and Respond.js IE9 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script type="text/javascript" src="<c:url value="/assets/js/shared/html5shiv.js" />"></script>

	<![endif]-->
	<!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
	<meta name="description" content="Phoenixcoded">
	<meta name="keywords" content="">
	<meta name="author" content="Phoenixcoded">
	<base href="<c:url value="/" />">
	<!-- Favicon icon -->
	<link rel="icon" href="<c:url value="/assets/logo/flavicon.png" />" type="image/x-icon">
	<!-- Google font-->

	<!-- Required Fremwork -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/bootstrap/css/bootstrap.min.css" />">

	<!-- Date-Dropper css -->
	<!-- themify icon -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/icon/themify-icons/themify-icons.css" />">
	<!-- Font Awesome -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/icon/font-awesome/css/font-awesome.min.css"/>">
	<!-- ico font -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/icon/icofont/css/icofont.css" />">
	<!-- flag icon framework css -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/flag-icon/flag-icon.min.css" />">
	<!-- Menu-Search css -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/menu-search/css/component.css" />">
	<!-- List css -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/list-scroll/list.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/stroll/css/stroll.css" />">

	<!-- Horizontal-Timeline css -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/dashboard/horizontal-timeline/css/style.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/select2/css/select2.min.css" />">
	<!-- Multi Select css -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/bootstrap-multiselect/css/bootstrap-multiselect.css"/> "/>
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/multiselect/css/multi-select.css" />"/>


	<!-- Sweet alert -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/bower/sweetalert/css/sweetalert.css"/> ">


	<!-- flag icon framework css -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/pages/flag-icon/flag-icon.min.css" />">
	<!-- Style.css -->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/main.css" />">

	<!--color css-->
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/linearicons.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/simple-line-icons.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/ionicons.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/jquery.mCustomScrollbar.css" />">
	<!-- Simplebar -->
	<!-- notify js Fremwork -->
	<link rel="stylesheet" type="text/css"
		  href="<c:url value="/assets/bower/pnotify/css/pnotify.css" />">
	<link rel="stylesheet" type="text/css"
		  href="<c:url value="/assets/bower/pnotify/css/pnotify.brighttheme.css" />">
	<link rel="stylesheet" type="text/css"
		  href="<c:url value="/assets/bower/pnotify/css/pnotify.buttons.css" />">
	<link rel="stylesheet" type="text/css"
		  href="<c:url value="/assets/bower/pnotify/css/pnotify.history.css" />">
	<link rel="stylesheet" type="text/css"
		  href="<c:url value="/assets/bower/pnotify/css/pnotify.mobile.css" />">
	<link rel="stylesheet" type="text/css"
		  href="<c:url value="/assets/pages/pnotify/notify.css" />">
	<!-- Date picker styling -->
	<style>
		/** Custom styles for enabled days. */
		.day, .month, .year {
			color: #282828 !important;
		}

		.day.disabled, .year.disabled, .month.disabled {
			color: #d7d7d7 !important;
		}

		.day.focused {
			color: #a8a8a8;
		}

		.day.active {
			color: #fff !important;
		}

	.modal-xsm {
	max-width: 200px
	}
		
	</style>
</head>

<body>
<!-- Pre-loader start -->
<div class="theme-loader">
	<div class="text-center loader-block">
		<div class="preloader4">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
</div>
<!-- Pre-loader end -->
<!-- Menu header start -->
<div id="pcoded" class="pcoded">
	<div class="pcoded-overlay-box"></div>
	<div class="pcoded-container navbar-wrapper">



