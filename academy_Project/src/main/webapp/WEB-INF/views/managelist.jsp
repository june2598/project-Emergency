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
<c:url var="getBoardList" value="/manage/getBoardList"></c:url>
<script>
	//이전 버튼 이벤트

	function fn_prev(page, range, rangeSize,searchType, keyword) {

		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;

	//var url = "${pageContext.request.contextPath}/manage/getBoardList";
		var url = "${getBoardList}";  
		
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&searchType=" + $('#searchType').val();
		url = url + "&keyword=" + keyword;
		
		location.href = url;

	}

	//페이지 번호 클릭

	function fn_pagination(page, range, rangeSize, searchType, keyword) {
	
	//var url = "${pageContext.request.contextPath}/manage/getBoardList";
		var url = "${getBoardList}";  
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&searchType=" + searchType;
		url = url + "&keyword=" + keyword;


		location.href = url;

	}

	//다음 버튼 이벤트

	function fn_next(page, range, rangeSize,searchType, keyword) {

		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		
	//var url = "${pageContext.request.contextPath}/manage/getBoardList";
		var url = "${getBoardList}";  
		
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&searchType=" + $('#searchType').val();
		url = url + "&keyword=" + keyword;
		
		location.href = url;

	}
	$(document).on('click', '#btnSearch', function(e) {

		e.preventDefault();

	//var url = "${pageContext.request.contextPath}/manage/getBoardList";
		var url = "${getBoardList}";  
		url = url + "?searchType=" + $('#searchType').val();
		url = url + "&keyword=" + $('#keyword').val();

		location.href = encodeURI( url);
		console.log(url);

	});
</script>
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
					<c:forEach var="manage" items="${managelist2}">
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

			<!-- 페이징 처리 -->
			<div id="paginationBox" align="center">
				<ul class="pagination">
					<c:if test="${pagination.prev}">
						<li class="page-item"><a class="page-link" href="#"
							onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}',
							'${search.searchType}', '${search.keyword}')">이전</a></li>
					</c:if>
					<c:forEach begin="${pagination.startPage}"
						end="${pagination.endPage}" var="idx">
						<li
							class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
							<a class="page-link" href="#"
							onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}', '${search.searchType}', '${search.keyword}')">
								${idx} </a></li>
					</c:forEach>
					<c:if test="${pagination.next}">
						<li class="page-item"><a class="page-link" href="#"
							onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}',
							'${search.searchType}', '${search.keyword}')">다음</a></li>
					</c:if>
				</ul>
			</div>
			<!-- 페이징 처리 -->
			<!-- 검색  -->

			<div class="box-header with-border" align="right">
				<table>
					<tr>
						<td width="100%" align="left">&nbsp;&nbsp; <select
							name="searchType" id="searchType" class="txt">
								<option value="title">교육과정</option>
								<option value="content">이름</option>
								<option value="reg_id">아이디</option>
						</select> <input name="keyword" id="keyword" type="text" />
							<button class="btn btn-sm btn-primary" name="btnSearch"
								id="btnSearch">검색</button>
						</td>
					</tr>
				</table>
			</div>
			<!-- 끝 -->
		</div>
		<div class="col-sm-2"></div>

	</div>
	<%@include file="include/footer.jsp"%>
</body>
</html>