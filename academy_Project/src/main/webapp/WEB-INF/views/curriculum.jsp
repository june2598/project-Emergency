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
	  <img src="${pageContext.request.contextPath }/resources/imgs/center1.jpg" class="mx-auto d-block" style="width:100%; height: 50%;">
    </div>
    <div class="col-sm-1"></div>
</div>
<h3 style="text-align: center; color:#333333"><strong>교육과정상담</strong></h3>
<br>
	  <p style="text-align: center;">관심있는 교육과정 및 개강일, 수강료 등을 안내 받으실 수있습니다.</p>
<div class="container">
<div class="col-md-1"></div>
    <div class="col-md-10"> 
	  <img src="${pageContext.request.contextPath }/resources/imgs/center2.jpg" class="mx-auto d-block" style="width:100%; height: 50%;">
    </div>
    <div class="col-md-1"></div>
</div>
<div class="container">
<div class="col-md-1"></div>
    <div class="col-md-10"> 
	  <img src="${pageContext.request.contextPath }/resources/imgs/center3.jpg" class="mx-auto d-block" style="width:100%; height: 50%;">
    </div>
    <div class="col-md-1"></div>
</div>
<%@include file="include/footer.jsp"%>

</body>
</html>
