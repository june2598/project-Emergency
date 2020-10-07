<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<title>Introduce</title>
</head>
<body>
<%@include file="include/header.jsp"%>

<div class="container">
	<div class="col-sm-1"></div>
    <div class="col-sm-10"> 
	  <img src="${pageContext.request.contextPath }/resources/imgs/intro1.jpg" class="mx-auto d-block" style="width:100%; height: 50%;">
    </div>
    <div class="col-sm-1"></div>
</div>
<%@include file="include/footer.jsp"%>

</body>
</html>
