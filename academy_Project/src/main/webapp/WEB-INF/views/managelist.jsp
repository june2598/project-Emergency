<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<%@include file="include/header.jsp"%>
<body>
	<div class="panel panel-default">
		<div class="panel-heading">학생회원리스트</div>
		<div class="panel-body">
			<%--테이블 태그 --%>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>번호</th>
						<th>교육과정</th>
						<th>아이디</th>
						<th>이름</th>
						<th>전화번호</th>
						<th>이메일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="manage" items="${managelist}">
						<tr>
							<td>${manage.smid}</td>
							<td>${manage.ssub}</td>
							<td>${manage.sid}</td>
							<td><a href="managereadlist?smid=${manage.smid}">${manage.sname}</a></td>
							<td>${manage.sphone}</td>
							<td>${manage.semail}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="box-header with-border" align="right">
					<button class="btn btn-primary" type="button"
						onclick="location.href='${contextPath}/manage/manageregister'">학생등록</button>
			</div>
		</div>
		<div class="col-sm-2"></div>

	</div>
	<%@include file="include/footer.jsp"%>
</body>
</html>