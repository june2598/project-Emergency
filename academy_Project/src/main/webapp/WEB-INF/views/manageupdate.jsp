<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>정보수정</title>
</head>
<body>
	<%@include file="include/header.jsp"%>
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
		<section class="content">
			<form role="form" method="post">
				<div class="box">
					<div class="box-header">
						<h3 class="box-title">수정하기</h3>
					</div>
					<br>
					<div class="container">
						<div class="form-group">
							<label>교육과정명</label> <input type="text" name='ssub'
								class="form-control" value="${manage.ssub}" >
						</div>
						<div class="form-group">
							<label>아이디</label> <input type="text" name='sid'
								class="form-control" value="${manage.sid}" >
						</div>
						<div class="form-group">
							<label>이름</label> <input type="text" name='sname'
								class="form-control" value="${manage.sname}" >
						</div>
						<div class="form-group">
							<label>전화번호</label> <input type="text" name='sphone'
								class="form-control" value="${manage.sphone}" >
						</div>
						<div class="form-group">
							<label>이메일</label> <input type="text" name='semail'
								class="form-control" value="${manage.semail}" >
						</div>
					</div>
				</div>
				<div class="box-footer" align="center">
					<button type="submit" class="btn btn-primary">수정</button>
				</div>
			</form>
		</section>
	</div>
	<div class="col-sm-2"></div>


	<%@include file="include/footer.jsp"%>

</body>
</html>
