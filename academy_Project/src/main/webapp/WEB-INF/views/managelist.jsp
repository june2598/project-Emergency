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
		<br>
		<div class="box-header with-border" align="left">
			<button class="btn btn-primary" type="button"
				onclick="location.href='${contextPath}/manage/manageregister'">학생등록</button>
		</div>
		<div class="panel-body">
			<%--테이블 태그 --%>
			<table class="table table-striped">
				<thead>
					<tr>
						<th>학생번호</th>
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
			<script>
					//이전 버튼 이벤트

					function fn_prev(page, range, rangeSize) {

						var page = ((range - 2) * rangeSize) + 1;

						var range = range - 1;

						var url = "${pageContext.request.contextPath}/manage/getBoardList";

						url = url + "?page=" + page;

						url = url + "&range=" + range;

						location.href = url;

					}

					//페이지 번호 클릭

					function fn_pagination(page, range, rangeSize, searchType,
							keyword) {

						var url = "${pageContext.request.contextPath}/manage/getBoardList";

						url = url + "?page=" + page;

						url = url + "&range=" + range;

						location.href = url;

					}

					//다음 버튼 이벤트

					function fn_next(page, range, rangeSize) {

						var page = parseInt((range * rangeSize)) + 1;

						var range = parseInt(range) + 1;

						var url = "${pageContext.request.contextPath}/manage/getBoardList";

						url = url + "?page=" + page;

						url = url + "&range=" + range;

						location.href = url;

					}
				</script>
			<!-- pagination{s} -->
			<div id="paginationBox">
				<ul class="pagination">
					<c:if test="${pagination.prev}">
						<li class="page-item"><a class="page-link" href="#"
							onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a></li>
					</c:if>
					<c:forEach begin="${pagination.startPage}"
						end="${pagination.endPage}" var="idx">
						<li
							class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> "><a
							class="page-link" href="#"
							onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')">
								${idx} </a></li>
					</c:forEach>
					<c:if test="${pagination.next}">
						<li class="page-item"><a class="page-link" href="#"
							onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')">Next</a></li>
					</c:if>
				</ul>
			</div>
			<!-- pagination{e} -->

			<div class="box-header with-border" align="right">
				<table>
					<tr>
						<td width="100%" align="left">&nbsp;&nbsp; <select
							name="items" class="txt">
								<option value="subject">제목에서</option>
								<option value="content">본문에서</option>
								<option value="name">글쓴이에서</option>
						</select> <input name="text" type="text" /> <input type="submit"
							id="btnAdd" class="btn btn-primary " value="검색 " />
						</td>

					</tr>
				</table>
			</div>
		</div>
		<div class="col-sm-2"></div>

	</div>
	<%@include file="include/footer.jsp"%>
</body>
</html>