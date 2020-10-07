<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC Board</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>
<!-- Bootstrap 3.3.4 -->
<link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.comrespond/1.4.2respond.min.js"></script>
    <![endif]-->

</head>
<!-- jQuery 3.4.1 -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.5.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.min.js"></script>
<body class="skin-blue sidebar-mini">

	<div class="wrapper">
		<header class="main-header">
			<div class="page-header">
				<h1>spring Framework</h1>
			</div>
		</header>
	</div>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
		<!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar">
			<ul class="nav nav-tabs">
				<li role="presentation" class="active"><a href="#">게시판 List</a></li>
			</ul>
		</section>
		<!-- /.sidebar -->
	</aside>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper">
