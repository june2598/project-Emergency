<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.css">
</head><body>
<%@include file="include/header.jsp"%>
	
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form:form 
		         modelAttribute="memberDTO"
		         method="POST"
		         action="${ pageContext.servletContext.contextPath }/member/register">
					<h3 style="text-align:center;">회원가입</h3>
					<div class="form-group">	
						<input type="text" class="form-control" placeholder="아이디" name="memId" maxlength="45">
						 <form:errors path="memId" />
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="memPw" maxlength="45">
						 <form:errors path="memPw" />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="memName" maxlength="20">
						<form:errors path="memName" />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="전화번호 (ex)01012345678)" name="memTel" maxlength="11">
						<form:errors path="memTel" />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="주소" name="memAddress" maxlength="20">
						<form:errors path="memAddress" />
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="memEmail" maxlength="20">
						<form:errors path="memEmail" />
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="생년원일 (ex)19900101)" name="memBirth" maxlength="20">
						<form:errors path="memBirth" />
					</div>
					<div>
						<input type="submit" class="btn btn-primary form-control" value="회원가입">
					</div>
				</form:form>
			</div>
		</div>		
		<div class="col-lg-4"></div>	
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/bootstrap/js/bootstrap.js"></script>
<%@include file="include/footer.jsp"%>

</body>
</html>
