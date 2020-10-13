<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>boardupdate</title>
</head>
<body>
	<%@include file="include/header.jsp"%>
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
		<section class="content">
			<div class="box">
				<div class="box-header">
					<h3 class="box-title">수정하기</h3>
				</div>
				<form role="form" method="post">
				<div class="box-body">
					<div class="form-group">
						<label>제목</label> <input type="text" name="btitle"
							class="form-control" value="${board.btitle}"/>
					</div>

					<div class="form-group">
						<label>내용</label>
						<textarea name="bcontent" rows="5" 
							class="form-control">${board.bcontent}</textarea>
					</div>

					<div class="form-group">
						<label>작성자</label> <input type="text" name="id"
							class="form-control" value="${board.id}" readonly="readonly" />
					</div>
					<!-- 수정 번호 -->
					<input type="hidden" name="bno" value="${board.bno}"/>
				</div>
				<div class="box-footer">
					<button type="submit" class="btn btn-primary">수정</button>
				</div>
				</form>
			</div>
		</section>
	</div>
	<div class="col-sm-2"></div>


	<%@include file="include/footer.jsp"%>

</body>
</html>
