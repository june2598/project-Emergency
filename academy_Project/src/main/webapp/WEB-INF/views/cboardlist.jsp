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
		<div class="col-sm-2"></div>
		<div class="col-sm-8">
		<div class="panel-body">
			<%--테이블 태그 --%>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>회사번호</th>
						<th>회사이름</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cmanage" items="${cboardlist}">
						<tr>
							<td>${cmanage.cNo}</td>
							<td><a href="cboarddetail?cNo=${cmanage.cNo}">${cmanage.cName}</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		</div>
		<div class="col-sm-2"></div>
	<%@include file="include/footer.jsp"%>
</body>
</html>