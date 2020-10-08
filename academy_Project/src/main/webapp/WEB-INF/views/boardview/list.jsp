<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>Home</title></head><body>
<%@include file="../include/header.jsp"%>
	<div class ="table-responsive">
		<table class="table">
		<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>작성일</td>
			<td>작성자</td>
			<td>조회수</td>
		<tr>
		
		<c:forEach var="board" items="${list}">
		<tr>
		<td>${board.bno}</td>
		<td><a href="readOne?bno=${board.bno}"> ${board.title}</a></td>
		<td>${board.regdate}</td>
		<td>${board.id}</td>
		<td><span class="badge">${board.breadcnt}</span></td>
		<tr>
		
		
		</c:forEach>
		<tr>
		<td colspan="5" align="center">
		</table>
	</div>


<%@include file="../include/footer.jsp"%>

</body>
</html>
