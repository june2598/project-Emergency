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
<h3 style="text-align: center; color:#333333"><strong>좋은 일자리를 찾는 첫걸음</strong></h3>
<h3 style="text-align: center; color:#333333"><strong>응급아카데미</strong></h3>
<br>
<div class="container">
	<div class="col-sm-1"></div>
    <div class="col-sm-10"> 
	  <p style="text-align: left;">본원의 교육은 최첨단 시설과 실무 중심의 차별화된 교육프로그램으로 기업에 꼭 필요한 핵심인재를 양성합니다.</p>
<p style="text-align: left;">더불어 국가기간 전략산업, 내일배움카드제, 취업성공패키지, 직장인 근로자카드 등 국가에서 지원하는 모든 국비교육이 가능하며, 자체 개발한 학사관리 시스템과 전문적인 취업시스템으로 100% 취업을 목표로 하고 있습니다.</p>
<p style="text-align: left;">응급아카데미는 실무 교육을 바탕으로 기술적인 교육과 프로젝트 수업, 그리고 워크숍 프로그램까지 국내·외 디자인, IT산업의 경쟁력 강화와 업계의 Needs에 부합하는 현장 수요중심, 정보화 시대를 이끌어 나갈 전문인재를 양성하기 위해 강도 높은 교육과 최상의 교육 서비스를 제공하는 교육기관이 되도록 노력하고 있습니다</p>
    </div>
    <div class="col-sm-1"></div>
</div>
<br><br>
	<h3 style="text-align: center; color:#333333"><strong>YOUR DREAM! WE ARE DESIGN!</strong></h3>
	<br>
	  <p style="text-align: center;">응급 아카데미는 고용노동부가 지원하는 우수훈련 기고나으로 실무 중심의 창의적인 커리큘럼과</p>
	  <p style="text-align: center;">체계적인 교육 서비스로 최고의 인재를 양성화는데 주력하고 있습니다.</p>
<br><br>
<div class="container">
<div class="col-md-1"></div>
    <div class="col-md-10"> 
	  <img src="${pageContext.request.contextPath }/resources/imgs/intro2.jpg" class="mx-auto d-block" style="width:100%; height: 50%;">
    </div>
    <div class="col-md-1"></div>
</div>
<%@include file="include/footer.jsp"%>

</body>
</html>
