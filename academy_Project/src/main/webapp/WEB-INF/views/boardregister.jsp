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
		<form role="form" method="post">
		<div class="box-body">
			<div class="form-group">
			<label>제목</label> 
				<input type="text" name='btitle' class="form-control" placeholder="제목">
			</div>
		
		<div class="form-group">
			<label>내용</label>
			<textarea class="form-control" name="bcontent" rows="3" placeholder="내용"></textarea>
		</div>
		
		<div class="form-group">
			<input type="hidden" name="id" class="form-control" value="${user.memId}" readonly>
			<input type="hidden" name="bselect" class="form-control" value="0">
		</div>
		</div>
		
		<div class="box-footer" align="right">
			<button type="submit" class="btn btn-primary">작성</button>
		</div>
	</form>
	</section>
	</div>
	<div class="col-sm-2"></div>

<%@include file="include/footer.jsp"%>

</body>
</html>
