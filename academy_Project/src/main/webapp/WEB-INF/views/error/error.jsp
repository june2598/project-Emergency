<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>Home</title></head><body>

<%@include file="../include/header.jsp"%>
<section class="content">
	<h1> 404 Error Code</h1>
	Error	: 페이지가 없습니다.<br>
	경로 설정을 명확하게 이해하세요.<br>
	1. 컨트롤러에 매핑이 되지 않았습니다.<br>
	2. 경로에 페이지가 없습니다.<br>
	3. 서버를 먼저 구동해서 오류가 있는지 확인하세요.<br>
	(매퍼 이상 시 서버시작 직후 오류 발생)	<br><br>
</section>
<%@include file="../include/footer.jsp"%>

</body>
</html>
