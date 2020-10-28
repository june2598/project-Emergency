<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
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
					<h3 style="text-align: center;">로그인 화면</h3>
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
				<br>
				<!-- 네이버 로그인 화면으로 이동 시키는 URL -->
				<!-- 네이버 로그인 화면에서 ID, PW를 올바르게 입력하면 callback 메소드 실행 요청 -->
				<div id="naver_id_login" style="text-align: center">
				<form method="post">
					<a href="${url}"><img width="223"
						src="${pageContext.request.contextPath}/resources/imgs/naverlogin.PNG" /></a>
						</form>
				</div>
				<br>
			</div>
		</div>
		<div class="col-lg-4"></div>
	</div>
	<%@include file="include/footer.jsp"%>

</body>
</html>
