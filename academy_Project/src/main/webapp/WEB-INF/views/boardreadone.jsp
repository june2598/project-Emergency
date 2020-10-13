<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>Home</title></head><body>
<%@include file="include/header.jsp"%>
<div class="col-sm-2"></div>
<div class="col-sm-8">
<section class="content">
		<div class="box">
			<div class="box-header">
				<h3 class="box-title">상세보기</h3>
			</div>
			<div class="box-body">
				<div class="form-group">
					<label>제목</label> <input type="text" name="btitle"
						class="form-control" value="${board.btitle}" readonly="readonly" />
				</div>

				<div class="form-group">
					<label>내용</label>
					<textarea name="bcontent" rows="5" readonly="readonly"
						class="form-control">${board.bcontent}</textarea>
				</div>

				<div class="form-group">
					<label>작성자</label> <input type="text" name="id"
						class="form-control" value="${board.id}" readonly="readonly" />
				</div>
			</div>

		</div>
		<div class="box-footer">
			<button class="btn btn-primary" type="button" 
			onclick="location.href='${contextPath}/'">메인으로</button>
			<button class="btn btn-primary" type="button"
			onclick="location.href='${contextPath}/board/boardlist'">글목록</button>
			<c:if test="${user.memId==board.id}">
			<button class="btn btn-warning" type="button"
			onclick="location.href='boarddelete?bno= + ${board.bno}'">글삭제</button>
			<button class="btn btn-danger" type="button"
			onclick="location.href='${contextPath}/board/boardupdate?bno= + ${board.bno}'">수정</button>
			</c:if>
		</div>
	</section>
	</div>
	<div class="col-sm-2"></div>
	<script>
	
	</script>
	
<%@include file="include/footer.jsp"%>

</body>
</html>
