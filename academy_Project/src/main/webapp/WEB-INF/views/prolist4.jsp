<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
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
			<img
				src="${pageContext.request.contextPath }/resources/imgs/home5.jpg"
				class="mx-auto d-block" style="width: 100%; height: 50%;">
		</div>
		<div class="col-sm-1"></div>
	</div>
	<h3 style="text-align: center; color: #333333">
		<strong>풍부한 실무경력을 토대로</strong>
	</h3>
	<h3 style="text-align: center; color: #333333">
		<strong>취업의 꿈을 이루어 드리겠습니다.</strong>
	</h3>
	<br>
	<div class="container">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<p style="text-align: left;">응급아카데미는 실무 교육을 바탕으로 기술적인 교육과 프로젝트
				수업, 그리고 워크숍 프로그램까지 국내·외 디자인, IT산업의 경쟁력 강화와 업계의 Needs에 부합하는 현장 수요중심,
				정보화 시대를 이끌어 나갈 전문인재를 양성하기 위해 강도 높은 교육과 최상의 교육 서비스를 제공하는 교육기관이 되도록
				노력하고 있습니다</p>
		</div>
		<div class="col-sm-1"></div>
	</div>
	<br>
	<div class="container">
	<div class="col-sm-1"></div>
	<div class="col-sm-10">
		<p style="text-align: center;"><img src="${pageContext.request.contextPath }/resources/imgs/배성훈.jpg"
			alt="배성훈" width="200" height="200">
		</p>
		<p style="text-align: center;"><strong><<배성훈>></strong></p>
	</div>
	<div class="col-sm-1"></div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<h3 style="text-align: left; color: #333333">
				<strong>선생님 소개를 해주세요.</strong>
			</h3>
			<p style="text-align: left;">트랜드를 선도하는 패션업계에서 그래픽 디자인일을 시작해, 트랜디한
				디자인으로 넓은 스펙트럼으로 비쥬얼 그래픽을 만들어가고 있습니다.</p>
		</div>
		<div class="col-sm-1"></div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<h3 style="text-align: left; color: #333333">
				<strong>선생님의 수업은 어떤 수업인가요?</strong>
			</h3>
			<p style="text-align: left;">“클래식부터 트랜드까지” 기초가 되는 클래식한 그래픽 스킬들을
				배우면서 기본기를 다지는 수업을 먼저 진행을 하고, 자리 잡힌 기본기를 통해 유연한 작업에 트랜드를 입혀 흥미를 느낄 수
				있는 자신만의 결과물을 만드는 수업으로 진행을 합니다.</p>
		</div>
		<div class="col-sm-1"></div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<h3 style="text-align: left; color: #333333">
				<strong>선생님 수업의 핵심은 무엇인가요?</strong>
			</h3>
			<p style="text-align: left;">“유연한 사고“ 포토샵과 일러스트를 어떠한 컨셉에 맞게끔
				디자인하려면 유연한 사고가 필수적인 역량이 됩니다.</p>
		</div>
		<div class="col-sm-1"></div>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<h3 style="text-align: left; color: #333333">
				<strong>말씀하신 핵심을 어떻게 수업에 접목하고 계신가요?</strong>
			</h3>
			<p style="text-align: left;">클래식한 디자인 스킬과 더불어 힙한 아티스트의 작업물들을 직접
				학생들이 스크랩하여 자유롭게 모작하는 수업을 진행합니다. 모작이지만 학생개개인의 관심사와 소스를 연결 시켜 모작을 했지만
				새로운 결과물이 나오는 방식으로 수업을 진행합니다.</p>
		</div>
		<div class="col-sm-1"></div>
	</div>
	<br>
	<br>
		<div class="container">
		<div class="col-sm-1"></div>
		<div class="col-sm-10">
			<h3 style="text-align: left; color: #333333">
				<strong>미래의 수강생들에게 조언을 해주신다면?</strong>
			</h3>
			<p style="text-align: left;">그림실력은 오로지 끊임없는 연습을 통해 향상됩니다. 학원은 단지 수강생의 원하는 목적을 파악하여 적절한 방향성을 제시해 주는 곳 이라고 생각합니다. 학원에서 배운 스킬을 가지고 꾸준히 연습하신다면 어느새 프로답게 성장한 본인을 발견 할 수 있을 것 입니다.</p>
		</div>
		<div class="col-sm-1"></div>
	</div>
	<%@include file="include/footer.jsp"%>

</body>
</html>
