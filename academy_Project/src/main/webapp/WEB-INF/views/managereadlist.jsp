<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<c:set var="cs" value="${cs}"/>
<html>
<head>
<title>정보등록</title></head><body>
<%@include file="include/header.jsp"%>
	<div class="col-sm-2"></div>
	<div class="col-sm-8">
	<section class="content">
		<form role="form" method="post" enctype="multipart/form-data">
			<div class="form-group">
			<label></label> 
				<input type="text" name='smid' class="form-control" placeholder="">
			</div>
			<div class="form-group">
			<label>교육과정명</label> 
				<input type="text" name='ssub' class="form-control" placeholder="교육과정명">
			</div>
			<div class="form-group">
			<label>아이디</label> 
				<input type="text" name='sid' class="form-control" placeholder="아이디">
			</div>
			<div class="form-group">
			<label>이름</label> 
				<input type="text" name='sid' class="form-control" placeholder="아이디">
			</div>
			<div class="form-group">
			<label>전화번호</label> 
				<input type="text" name='sphone' class="form-control" placeholder="전화번호">
			</div>
			<div class="form-group">
			<label>이메일</label> 
				<input type="text" name='semail' class="form-control" placeholder="email">
		
		</div>
         <div class="box-footer" align="right">
			<button type="submit" class="btn btn-primary">학생등록</button>
		</div>
		</form>
		
	
	</section>
	</div>
	<div class="col-sm-2"></div>

<%@include file="include/footer.jsp"%>

</body>
</html>
