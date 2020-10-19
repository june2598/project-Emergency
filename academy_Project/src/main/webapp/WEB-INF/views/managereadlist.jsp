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
		<form role="form" method="post">
			<div class="box">
				<div class="container-header">
					<h3 class="container-title">학생상세정보</h3>
				</div>
				<br>
				<div class="container">
					<div class="form-group">
						<label>교육과정명</label> <input type="text" name='ssub'
							class="form-control" placeholder="교육과정명" value="${manage.ssub}"
							required="required">
					</div>
					<div class="form-group">
						<label>아이디</label> <input type="text" name='sid'
							class="form-control" placeholder="아이디" value="${manage.sid}"
							required="required">
					</div>
					<div class="form-group">
						<label>이름</label> <input type="text" name='sname'
							class="form-control" placeholder="이름" value="${manage.sname}"
							required="required">
					</div>
					<div class="form-group">
						<label>전화번호</label> <input type="text" name='sphone'
							class="form-control" value="${manage.sphone}" placeholder="전화번호">
					</div>
					<div class="form-group">
						<label>이메일</label> <input type="text" name='semail'
							class="form-control" value="${manage.semail}" placeholder="email">
					</div>
				</div>

			</div>
			<div class="box-footer" align="right" >
				<button type="submit" class="btn btn-primary">등록</button>
				<button class="btn btn-primary" type="button"
						onclick="location.href='${contextPath}/manage/manageupdate?smid=${manage.smid}'">정보수정</button>
				<button class="btn btn-danger" type="button"
						onclick="location.href='managedelete?smid= + ${manage.smid}'">정보삭제</button>
			</div>
			</form>
		</section>
	</div>
	<div class="col-sm-2"></div>
	<script>
	
	</script>

	<%@include file="include/footer.jsp"%>

</body>
</html>
