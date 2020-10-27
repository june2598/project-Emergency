<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="memPosition" value="${user.memPosition }"/>
<html>
<head>
<title>boardlist</title></head><body>
<%@include file="include/header.jsp"%>
<script>
	//이전 버튼 이벤트
	function fn_prev(page, range, rangeSize,searchType, keyword) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
	//var url = "${pageContext.request.contextPath}/manage/getBoardList";
		var url = "${getBoardList}";  
		
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		
		location.href = url;
	}
	//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, searchType, keyword) {
	
	//var url = "${pageContext.request.contextPath}/manage/getBoardList";
		var url = "${getBoardList}";  
		url = url + "?page=" + page;
		url = url + "&range=" + range;
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
		
		location.href = url;
	}
</script>
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
	<div class ="table-responsive">
		<table class="table">
		<tr>
			<td>글번호</td>
			<td>제목</td>
			<td>작성일</td>
			<td>작성자</td>
			<td>조회수</td>
		<tr>
		<c:set var="i" value="0"/>
		<c:forEach var="board" items="${boardlist}">
			<tr>
			<c:set var="res" value="${fn:length(boardlist)}"></c:set>
			<c:set var="rum" value="${res-i}"></c:set>
			<td><c:out value="${rum}"></c:out> </td>
			<c:set var="i" value="${i+1}"/>
			<td><a href="boardreadOne?bno=${board.bno}"> ${board.btitle}</a></td>
			<td>${board.regdate}</td>
			<td>${board.id}</td>
			<td><span class="badge">${board.breadcnt}</span></td>
			<tr>
		</c:forEach>
		<tr>
		<td colspan="5" align="center">
		</table>
		
	</div>
	<!-- 페이징 처리 -->
		<div id="paginationBox" align="center">
			<ul class="pagination">
				<c:if test="${pagination.prev}">
					<li class="page-item"><a class="page-link" href="#"
						onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">이전</a></li>
				</c:if>
				<c:forEach begin="${pagination.startPage}"
					end="${pagination.endPage}" var="idx">
					<li
						class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
						<a class="page-link" href="#"
						onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}'">
							${idx} </a></li>
				</c:forEach>
				<c:if test="${pagination.next}">
					<li class="page-item"><a class="page-link" href="#"
						onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')">다음</a></li>
				</c:if>
			</ul>
		</div>
		<!-- 페이징 처리 -->
	<div class="box-header with-border" align="right">
			<% String bs = request.getParameter("bs");
			if(bs.equals("0")){
			%>
			<c:if test="${user.memPosition==2}">
			<button class="btn btn-primary" type="button" 
			onclick="location.href='${contextPath}/board/boardregister?bs=0'" >글쓰기</button>
			</c:if>
			<%} else if (bs.equals("1")){%>
			<c:if test="${user.memPosition<=1}">
			<button class="btn btn-primary" type="button"
			onclick="location.href='${contextPath}/board/boardregister?bs=1'" >글쓰기</button>
			</c:if>
			<%} %>			
	</div>
	</div>
	<div class="col-sm-2"></div>
<%@include file="include/footer.jsp"%>

</body>
</html>
