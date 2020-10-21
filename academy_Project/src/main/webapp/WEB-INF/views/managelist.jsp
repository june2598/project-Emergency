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
</head>


<body>
	<%@include file="include/header.jsp"%>
	<c:url var="getBoardListURL" value="/manage/getBoardList">
		<c:param name="page" value="${pagination.page}" />
		<c:param name="range" value="${pagination.range}" />
	</c:url>
	<script>
		//이전 버튼 이벤트

		function fn_prev(page, range, rangeSize) {

			var page = ((range - 2) * rangeSize) + 1;
			var range = range - 1;

			var url = "${getBoardList}";
			url = url + "?page=" + page;
			url = url + "&range=" + range;

			location.href = url;

		}

		//페이지 번호 클릭

		function fn_pagination(page, range, rangeSize, searchType, keyword) {

			var url = "${getBoardList}";
			url = url + "?page=" + page;
			url = url + "&range=" + range;

			location.href = url;

		}

		//다음 버튼 이벤트

		function fn_next(page, range, rangeSize) {

			var page = parseInt((range * rangeSize)) + 1;
			var range = parseInt(range) + 1;

			var url = "${getBoardList}";
			url = url + "?page=" + page;
			url = url + "&range=" + range;

			location.href = url;

		}
	</script>
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

			<!-- 페이지 정보처리 읽기 시작  -->
			<div id="paginationBox" class="pagination">
				<ul class="pagination">
					<!-- 이전 페이지  -->
					<c:if test="${pagination.prev}">
						<li class="page-item"><a class="page-link" href="#"
							onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}','${pagination.listSize}')">이전</a></li>
					</c:if>
					<!-- 시작 페이지  -->
					<c:forEach begin="${pagination.startPage}"
						end="${pagination.endPage}" var="idx">
						<li
							class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
							<a class="page-link" href="#"
							onClick="fn_pagination('${idx}', '${pagination.range}','${pagination.rangeSize}' ,'${pagination.listSize}' )">
								${idx} </a>
						</li>
					</c:forEach>
					<!-- 다음 페이지  -->
					<c:if test="${pagination.next}">
						<li class="page-item"><a class="page-link" href="#"
							onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}','${pagination.listSize}')">다음</a></li>
					</c:if>
				</ul>
			</div>
			<!-- 페이지 정보처리 읽기 끝 -->

			<!-- search{s} -->

			<div class="container">

				<div class="w100" style="padding-right: 10px">
					<select class="form-control form-control-sm" name="searchType"
						id="searchType">
						<option value="testTitle">제목</option>
						<option value="testContent">본문</option>
						<option value="testName">작성자</option>
					</select>
				</div>

				<div class="w300" style="padding-right: 10px">
					<input type="text"
						<%-- value="${pagination.keyword}" --%> class="form-control form-control-sm"
						name="keyword" id="keyword">
				</div>

				<div>
					<button class="btn btn-sm btn-primary" name="btnSearch"
						id="btnSearch">검색</button>
				</div>

			</div>

			<!-- search{e} -->

			<!-- 페이지 목록 갯수   -->
			<div class="container">
				<p>게시판 목록 갯수</p>
				<div class="w100" style="padding-right: 10px">
					<select class="form-control form-control-sm" name="searchType"
						id="listSize" onchange="page(1)">
						<option value="10"
							<c:if test="${pagination.getListSize() == 10 }">selected="selected"</c:if>>10개</option>
						<option value="15"
							<c:if test="${pagination.getListSize() == 15 }">selected="selected"</c:if>>15개</option>
						<option value="20"
							<c:if test="${pagination.getListSize() == 20 }">selected="selected"</c:if>>20개</option>
					</select>
				</div>

			</div>
			
			
		</div>
		<div class="col-sm-2"></div>
	</div>
	<%@include file="include/footer.jsp"%>
</body>
<script type="text/javascript">

	//이전 버튼 이벤트
	//5개의 인자값을 가지고 이동 testList.do
	//무조건 이전페이지 범위의 가장 앞 페이지로 이동
	function fn_prev(page, range, rangeSize, listSize, searchType, keyword) {
			
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
			
		var url = "/mangelist";
		url = url + "?page=" + page;
		url = url + "&range=" + range;
		url = url + "&listSize=" + listSize;
		url = url + "&searchType=" + searchType;
		url = url + "&keyword=" + keyword;
		location.href = url;
		}

	  //페이지 번호 클릭

	function fn_pagination(page, range, rangeSize, listSize, searchType, keyword) {

		var url = "/mangelist";
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			url = url + "&listSize=" + listSize;
			url = url + "&searchType=" + searchType;
			url = url + "&keyword=" + keyword; 

			location.href = url;	
		}

		//다음 버튼 이벤트
		//다음 페이지 범위의 가장 앞 페이지로 이동
	function fn_next(page, range, rangeSize, listSize, searchType, keyword) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;			
		var url = "/mangelist";
			url = url + "?page=" + page;
			url = url + "&range=" + range;
			url = url + "&listSize=" + listSize;
			url = url + "&searchType=" + searchType;
			url = url + "&keyword=" + keyword;
			location.href = url;
		}
		
		
	/* $는 jQuery를 시작하는 명령어로
	$(DOM요소) 와 같은 명령어로 각 요소에 접근 할 수 있다.
	e.preventDefault(); 는 버튼 고유의 기능을 막는 명령어 */ 
		
		// 검색
	$(document).on('click', '#btnSearch', function(e){
		e.preventDefault();
		var url = "/mangelist";
		url = url + "?searchType=" + $('#searchType').val();
		url = url + "&keyword=" + $('#keyword').val();
		url = url + "&listSize=" + $('#listSize').val();
		location.href = url;
		console.log(url);

	});	

	/*한페이지당 게시물 */
	function page(testId){
	  var startPage = testId;
	  var listSize = $("#listSize option:selected").val();
		
	  if(listSize == 10){
		  var url="/managelist?startPage="+startPage+"&listSize="+listSize
	  }else if(listSize == 15){
		  var url ="/managelist?startPage="+startPage+"&listSize="+listSize
	  }else if(listSize == 20){
	      var url="/managelist?startPage="+startPage+"&listSize="+listSize
	 
	  }
	  location.href = url;
	}
</script>
</html>