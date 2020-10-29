<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>Home</title>
</head>
<body>
	<%@include file="include/header.jsp"%>
	<div class="container" style="width: 100%"></div>
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
				<img> <img src="${contextPath }/resources/imgs/home1.jpg"
					alt="home1" style="height: 45%; width: 100%;">
			</div>

			<div class="item">
				<img src="${contextPath }/resources/imgs/home2.jpg" alt="home2"
					style="height: 45%; width: 100%;">
			</div>

			<div class="item">
				<img src="${contextPath }/resources/imgs/home3.jpg" alt="home3"
					style="height: 45%; width: 100%;">
			</div>

			<div class="item">
				<img src="${contextPath }/resources/imgs/home4.jpg" alt="home4"
					style="height: 45%; width: 100%;">
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
	<br>
	<br>
	<div class="container">
		<div class="col-md-0"></div>
		<div class="col-md-11">

			<h3>Pro Instructor</h3>
			<h5>강사 소개</h5>
			<hr>
			<div class="container text-center">
				<div class="row">
					<div class="col-sm-3">
						<a href="${contextPath}/prolist"><img
							src="${pageContext.request.contextPath }/resources/imgs/홍준희.jpg"
							alt="홍준희" width="200" height="200"></a>
						<p style="text-align: center;">
							<strong>홍준희</strong>
						</p>
						<br>
					</div>
					<div class="col-sm-3">
						<a href="${contextPath}/prolist2"><img
							src="${pageContext.request.contextPath }/resources/imgs/김성민.jpg"
							alt="김성민" width="200" height="200"></a>
						<p style="text-align: center;">
							<strong>김성민</strong>
						</p>
						<br>
					</div>
					<div class="col-sm-3">
						<a href="${contextPath}/prolist3"><img
							src="${pageContext.request.contextPath }/resources/imgs/김효준.jpg"
							alt="김효준" width="200" height="200"></a>
						<p style="text-align: center;">
							<strong>김효준</strong>
						</p>
						<br>
					</div>
					<div class="col-sm-3">
						<a href="${contextPath}/prolist4"><img
							src="${pageContext.request.contextPath }/resources/imgs/배성훈.jpg"
							alt="배성훈" width="200" height="200"></a>
						<p style="text-align: center;">
							<strong>배성훈</strong>
						</p>
						<br>
					</div>
				</div>
			</div>
			<hr>
			<br>
			<h3>Text Book</h3>
			<h5>노하우가 담긴 최고의 교재!</h5>
			<hr>
			<div class="container text-center">
				<div class="row">
					<div class="col-sm-3">
						<a href="#" data-toggle="modal" data-target="#bookModal"> <img
							src="${pageContext.request.contextPath }/resources/imgs/book1.jpg"
							alt="book1" width="200" height="200"></a>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="bookModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">뇌절금지 자바!</h4>
								</div>
								<div class="modal-body">
									<p>
										<img
											src="${pageContext.request.contextPath }/resources/imgs/book1.jpg"
											class="img-responsive">
									</p>
									<p>......</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<a href="#" data-toggle="modal" data-target="#bookModal2"> <img
							src="${pageContext.request.contextPath }/resources/imgs/book2.jpg"
							alt="book2" width="200" height="200"></a>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="bookModal2" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">디자인이 제일 쉬웠어요.</h4>
								</div>
								<div class="modal-body">
									<p>
										<img
											src="${pageContext.request.contextPath }/resources/imgs/book2.jpg"
											class="img-responsive">
									</p>
									<p>.....</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<a href="#" data-toggle="modal" data-target="#bookModal3"> <img
							src="${pageContext.request.contextPath }/resources/imgs/book3.jpg"
							alt="book2" width="200" height="200"></a>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="bookModal3" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">벼락 토익,플</h4>
								</div>
								<div class="modal-body">
									<p>
										<img
											src="${pageContext.request.contextPath }/resources/imgs/book3.jpg"
											class="img-responsive">
									</p>
									<p>.....</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<a href="#" data-toggle="modal" data-target="#bookModal4"> <img
							src="${pageContext.request.contextPath }/resources/imgs/book4.jpg"
							alt="book2" width="200" height="200"></a>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="bookModal4" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">싸우자 script</h4>
								</div>
								<div class="modal-body">
									<p>
										<img
											src="${pageContext.request.contextPath }/resources/imgs/book4.jpg"
											class="img-responsive">
									</p>
									<p>.....</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<hr>
			<br>
			<h3>Seminar&Lecture</h3>
			<h5>실무자 세미나&특강</h5>
			<hr>
			<div class="container text-center">
				<div class="row">
					<div class="col-sm-3">
						<a href="#" data-toggle="modal" data-target="#talkModal"> <img
							src="${pageContext.request.contextPath }/resources/imgs/talk.jpg"
							alt="talk" width="200" height="200"></a>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="talkModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel"></h4>
								</div>
								<div class="modal-body">
									<p>
										<img
											src="${pageContext.request.contextPath }/resources/imgs/talk.jpg"
											class="img-responsive">
									</p>
									<p>......</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<a href="#" data-toggle="modal" data-target="#talkModal2"> <img
							src="${pageContext.request.contextPath }/resources/imgs/talk2.jpg"
							alt="talk2" width="200" height="200"></a>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="talkModal2" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel"></h4>
								</div>
								<div class="modal-body">
									<p>
										<img
											src="${pageContext.request.contextPath }/resources/imgs/talk2.jpg"
											class="img-responsive">
									</p>
									<p>.....</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<a href="#" data-toggle="modal" data-target="#talkModal3"> <img
							src="${pageContext.request.contextPath }/resources/imgs/talk3.jpg"
							alt="talk3" width="200" height="200"></a>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="talkModal3" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel"></h4>
								</div>
								<div class="modal-body">
									<p>
										<img
											src="${pageContext.request.contextPath }/resources/imgs/talk3.jpg"
											class="img-responsive">
									</p>
									<p>.....</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<a href="#" data-toggle="modal" data-target="#talkModal4"> <img
							src="${pageContext.request.contextPath }/resources/imgs/talk4.jpg"
							alt="talk4" width="200" height="200"></a>
					</div>
					<!-- Modal -->
					<div class="modal fade" id="talkModal4" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel"></h4>
								</div>
								<div class="modal-body">
									<p>
										<img
											src="${pageContext.request.contextPath }/resources/imgs/talk4.jpg"
											class="img-responsive">
									</p>
									<p>.....</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<div class="col-md-1"></div>
	</div>
	<!--Start of Tawk.to Script-->
	<script type="text/javascript">
		var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
		(function() {
			var s1 = document.createElement("script"), s0 = document
					.getElementsByTagName("script")[0];
			s1.async = true;
			s1.src = 'https://embed.tawk.to/5f9a686116ea1756a6de8187/default';
			s1.charset = 'UTF-8';
			s1.setAttribute('crossorigin', '*');
			s0.parentNode.insertBefore(s1, s0);
		})();
	</script>
	<!--End of Tawk.to Script-->

	<%@include file="include/footer.jsp"%>

</body>
</html>
