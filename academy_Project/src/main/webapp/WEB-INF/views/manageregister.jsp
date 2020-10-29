<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%@ page session="true"%>
<html>
<head>
<title>정보등록</title>
</head>
<body>
	<%@include file="include/header.jsp"%>
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
		<section class="content">
			<form role="form" method="post">
				<div class="box">
					<div class="container-header">
						<h3 class="container-title">학생정보입력</h3>
					</div>
					<br>
					<div class="container">
						<div class="form-group">
							<label>교육과정명</label> <input type="text" name='ssub'
								class="form-control" placeholder="교육과정명" required="required">
						</div>
						<div class="form-group">
							<label>아이디</label> <input type="text" name='sid'
								class="form-control" placeholder="아이디" required="required">
						</div>
						<div class="form-group">
							<label>이름</label> <input type="text" name='sname'
								class="form-control" placeholder="이름" required="required">
						</div>
						<div class="form-group">
							<label>전화번호</label> <input type="text" name='sphone'
								class="form-control" placeholder="전화번호" required="required">
						</div>
						<div class="form-group">
							<label>이메일</label> <input type="text" name='semail'
								class="form-control" placeholder="email" required="required">
						</div>
						</div>
					</div>

					<div class="box-footer" align="center">
						<button type="submit" class="btn btn-primary">등록</button>
						<button type="button" class="btn btn-secondary"
							onclick="location.href='${contextPath}/manage/getBoardList' ">목록</button>
					</div>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			</form>


		</section>
	</div>
	<div class="col-sm-2"></div>

	<%@include file="include/footer.jsp"%>

</body>
</html>
