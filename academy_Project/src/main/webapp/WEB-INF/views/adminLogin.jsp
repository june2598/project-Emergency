<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin login</title>
</head>
<body>
	<%@include file="include/header.jsp"%>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form method="post">
					<h3 style="text-align: center;">관리자 로그인</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디"
							name="memId" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호"
							name="memPw" maxlength="20">
					</div>
					<input type="hidden" name="${ _csrf.parameterName}" value="${_csrf.token}">
					<input type="submit" class="btn btn-primary form-control"
						value="로그인">
				</form>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<%@include file="include/footer.jsp"%>
</html>