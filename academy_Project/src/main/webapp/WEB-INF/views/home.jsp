<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>Home</title>
</head><body>
<%@include file="include/header.jsp"%>
<!-- 오류해결용 -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
      	<>
        <img src="${pageContext.request.contextPath }/resources/imgs/home1.jpg" alt="home1" style="width:100%;">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath }/resources/imgs/home2.jpg" alt="home2" style="width:100%;">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath }/resources/imgs/home3.jpg" alt="home3" style="width:100%;">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath }/resources/imgs/home4.jpg" alt="home4" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
<br><br>
<div class="container">
	<div class="col-md-0"></div>
    <div class="col-md-11">

<h3>Pro Instructor</h3>
<h5>강사 소개</h5>
<hr>
<div class="container text-center">
  <div class="row">
    <div class="col-sm-3">
      <img src="${pageContext.request.contextPath }/resources/imgs/홍준희.jpg" alt="홍준희" width="200" height="200">
      <p style="text-align: center;"><strong><<홍준희>></strong></p><br>
      </div>
    <div class="col-sm-3">
      <img src="${pageContext.request.contextPath }/resources/imgs/김성민.jpg" alt="김성민" width="200" height="200">
      <p style="text-align: center;"><strong><<김성민>></strong></p><br>
      </div>
    <div class="col-sm-3">
      <img src="${pageContext.request.contextPath }/resources/imgs/김효준.jpg" alt="김효준" width="200" height="200">
      <p style="text-align: center;"><strong><<김효준>></strong></p><br>
      </div>
    <div class="col-sm-3">
      <img src="${pageContext.request.contextPath }/resources/imgs/배성훈.jpg" alt="배성훈" width="200" height="200">
      <p style="text-align: center;"><strong><<배성훈>></strong></p><br>
      </div>
  </div>
</div>
<hr><br>
<h3>Text Book</h3>
<h5>노하우가 담긴 최고의 교재!</h5>
<hr>
<div class="container text-center">
  <div class="row">
    <div class="col-sm-3">
      <img src="${pageContext.request.contextPath }/resources/imgs/book1.jpg" alt="book1" width="200" height="200">
    </div>
    <div class="col-sm-3">
      <img src="${pageContext.request.contextPath }/resources/imgs/book2.jpg" alt="book2" width="200" height="200">
      </div>
    <div class="col-sm-3">
      <img src="${pageContext.request.contextPath }/resources/imgs/book3.jpg" alt="book3" width="200" height="200">
      </div>
    <div class="col-sm-3">
      <img src="${pageContext.request.contextPath }/resources/imgs/book4.jpg" alt="book4" width="200" height="200">
      </div>
  </div>
</div>
    </div>
    <div class="col-md-1"></div>
</div>


<%@include file="include/footer.jsp"%>

</body>
</html>
