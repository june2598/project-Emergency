<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mapinfo</title>
</head>
<body>

	<%@include file="include/header.jsp"%>
	<header class="main-header no-margin-bottom">
		<div class="container">
			<h1 class="page-title hidden-xs">찾아오시는 길</h1>
		</div>
	</header>
	<br>
	<div class="container">
		<div id="overlay" class="map">
			<iframe id="map"
				src="https://map.kakao.com/?urlX=502777.0&amp;urlY=1053415.0&amp;itemId=27419215&amp;q=%EC%97%B0%EC%84%B8%EC%9D%B8%EC%9E%AC%EA%B0%9C%EB%B0%9C%EC%9B%90%20%EC%97%B0%EC%84%B8%EC%A7%81%EC%97%85%EC%A0%84%EB%AC%B8%ED%95%99%EA%B5%90%20%EB%B3%B8%EA%B5%90&amp;srcid=27419215&amp;map_type=TYPE_MAP&amp;from=roughmap"
				target="_blank" width="100%" height="600" frameborder="0"
				class="scrolloff"> </iframe>
			<div class="col-sm-4">
				<h3>주소</h3>
				<hr>
				<p>경기 수원시 장안구 정조로 940-1</p>
			</div>
			<div class="col-sm-4">
				<h3>연락처</h3>
				<hr>
				<p>Tel : 1533-1234</p>
			</div>
			<div class="col-sm-4">
				<h3>운영시간</h3>
				<hr>
				<p>월~금 : 9시~19시</p>
			</div>
			<div style="margin-top: 20px;">
				<div class="col-sm-4">
					<h3>버스노선</h3>
					<hr>
					<p>1002번/ 82-1번 / 98번 / 2001번</p>
				</div>
				<div class="col-sm-4">
					<h3>주변정류장</h3>
					<hr>
					<p>장안문 / 동성아울렛  / KT 수원지사</p>
				</div>
			</div>
		</div>



	</div>
	<%@include file="include/footer.jsp"%>
</body>
</html>