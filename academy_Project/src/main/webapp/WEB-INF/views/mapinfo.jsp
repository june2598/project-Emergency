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
	<div class ="container">
	<div id="overlay" class="map">
	<iframe id ="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d793.5384827400161!2d127.01201382923232!3d37.29148546567475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b5ccaffffffff%3A0x29ace24c91cee862!2z7Jew7IS47KeB7JeF7KCE66y47ZWZ6rWQ!5e0!3m2!1sko!2skr!4v1603782764928!5m2!1sko!2skr"
	width="100%" height="600" frameborder="0" class="scrolloff">
	</iframe>
	</div>
</div>
<%@include file="include/footer.jsp"%>
</body>
</html>