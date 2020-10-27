<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>상세정보</title>
</head>
<body>
	<%@include file="include/header.jsp"%>
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
		<section class="content">
			<div class="box">
				<div class="container-header">
					<h3 class="container-title">학생상세정보</h3>
				</div>
				<br>
				<div class="container">
					<div class="form-group">
						<label>교육과정명</label> <input type="text" name='ssub'
							class="form-control" placeholder="교육과정명" value="${manage.ssub}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label>아이디</label> <input type="text" name='sid'
							class="form-control" placeholder="아이디" value="${manage.sid}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label>이름</label> <input type="text" name='sname'
							class="form-control" placeholder="이름" value="${manage.sname}"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label>전화번호</label> <input type="text" name='sphone'
							class="form-control" value="${manage.sphone}" placeholder="전화번호"
							readonly="readonly">
					</div>
					<div class="form-group">
						<label>이메일</label> <input type="text" name='semail'
							class="form-control" value="${manage.semail}" placeholder="email"
							readonly="readonly">
					</div>
				</div>

			</div>
			<div class="box-footer" align="right">
				<button class="btn btn-primary" type="button"
					onclick="location.href='${contextPath}/manage/manageupdate?smid=${manage.smid}'">수정</button>
				<button class="btn btn-danger" type="button" data-toggle="modal"
					data-target="#deleteModal">삭제</button>
				<button type="button" class="btn btn-secondary"
					onclick="location.href='${contextPath}/manage/getBoardList' ">목록</button>

			</div>
			<!-- 모달 -->
			<div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">학생정보 삭제</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">학생정보를 정말 삭제하시겠습니까?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
							onclick="location.href='${contextPath}/manage/managedelete?smid= + ${manage.smid}'">삭제하기</button>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소하기</button>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<div class="col-sm-2"></div>
	<script>
		
	</script>

	<%@include file="include/footer.jsp"%>

</body>
</html>
