<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<head>
<title>header</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container" style="margin-left: 0px; padding-left: 0px;">
		<div class="col-sm-8">
			<img
				src="${pageContext.request.contextPath }/resources/imgs/logo.jpg"
				alt="logo" style="width: 150px; height: 150px"> <img
				src="${pageContext.request.contextPath }/resources/imgs/logo2.jpg"
				alt="logo2" style="width: 250px; height: 150px">
		</div>
		<div class="col-sm-2"></div>
		<div class="col-sm-2"></div>
	</div>


	<br>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/academy/">응급 아카데미</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="${contextPath}/introduce">아카데미 소개</a></li>

					<li><a href="#">공지사항</a></li>

					<li><a href="${contextPath}/board/list">공지사항</a></li>
					<li><a href="#">교육과정</a></li>
					<li><a href="#">고객상담센터</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:if test="${user==null }">
						<li><a href="${contextPath}/member/register"><span
								class="glyphicon glyphicon-user"></span> 회원가입</a></li>
					</c:if>
					<c:if test="${user.memPosition==2 }">
						<li><a href="${contextPath}/dashBoard"><span
								class="glyphicon glyphicon-log-in"></span> 관리자페이지</a></li>
					</c:if>
					<c:if test="${user==null }">
						<li><a href="${contextPath}/member/login"><span
								class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
					</c:if>
					<c:if test="${user!=null }">
						<li><a href="${contextPath}/member/logout"><span
								class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
						<font style="color: white;">${user.memId }님 환영합니다.</font>
					</c:if>
				</ul>
				<div class="box-header with-border"></div>
			</div>
		</div>
	</nav>