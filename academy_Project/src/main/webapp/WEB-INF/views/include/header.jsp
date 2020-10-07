﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<head>
  <title>header</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron text-center">
      <h1>응급 아카데미</h1>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/academy/">응급 아카데미</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#">아카데미 소개</a></li>
        <li><a href="#">공지사항</a></li>
        <li><a href="#">교육과정</a></li>
        <li><a href="#">고객상담센터</a></li>
      </ul>
        <ul class="nav navbar-nav navbar-right">
        <li><a href="${contextPath}/member/register"><span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
        <c:if test="${user==null }">
        <li><a href="${contextPath}/member/login"><span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
		<c:if test="${user!=null }">
		${user.name }님 환영합니다. <br />
        <li><a href="${contextPath}/member/logout"><span class="glyphicon glyphicon-log-in"></span> 로그아웃</a></li>
		</c:if>
		</c:if>
      </ul>
      <div class="box-header with-border">
		

		
		
	</div>
    </div>
  </div>
</nav>
