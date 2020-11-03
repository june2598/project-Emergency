<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<html>
<head>
<title>Home</title>
<style>

a{text-decoration:none; color:white}
.main_popup{width:350px; height:400px; border:0;background-color: white;}
.popup_bottom{
    background-color: black;
    color: white;
    height: 25px;
    padding: 2px 10px 3px 10px;
    width:350px;
}

a{text-decoration:none; color:white}
.main_popup1{width:350px; height:500px; border:0;background-color: white;}
.popup_bottom1{
    background-color: black;
    color: white;
    height: 25px;
    padding: 2px 10px 3px 10px;
    width:350px;
}
a{text-decoration:none; color:white}
.main_popup2{width:350px; height:400px; border:0;background-color: white;}
.popup_bottom2{
    background-color: black;
    color: white;
    height: 25px;
    padding: 2px 10px 3px 10px;
    width:350px;
}
</style>
</head>
<body>
	<%@include file="include/header.jsp"%>
	<!-- 팝업창 -->
	<form name="notice_form">

		<div id="main_popup" class="main_popup" style="position: absolute; z-index:10000; top:750px; left:0; display: none;">
			<img src="${contextPath }/resources/imgs/pop.jpg"
				alt="pop" width="350px" height="400px">
		<div class="popup_bottom">
			<a href="javascript:closePopupNotToday()" class="white">오늘하루 그만보기</a>
			<a class="pull-right white" href="javascript:closeMainPopup();">닫기</a>
			</div>
		</div>
		<div id="main_popup1" class="main_popup1" style="position: absolute; z-index:10000; top:750px; right:0; display: none;">
				<a href="http://ncov.mohw.go.kr/" style="color:black"><img src="${contextPath }/resources/imgs/pop2.jpg"
					alt="pop" width="350px" height="650px"></a>
		<div class="popup_bottom1">
				<a href="javascript:closePopupNotToday1()" class="white1">오늘하루 그만보기</a>
				<a class="pull-right white1" href="javascript:closeMainPopup1();">닫기</a>
			</div>
		</div>
		
		<div id="main_popup2" class="main_popup2" style="position: absolute; z-index:10000; top:1200px; left:0; display: none;">
			<a href="https://www.work.go.kr/pkg/succ/content01/busiInfo.do" style="color:black"><img src="${contextPath }/resources/imgs/pop3.jpg"
				alt="pop" width="350px" height="400px"></a>
		<div class="popup_bottom2">
			<a href="javascript:closePopupNotToday2()" class="white2">오늘하루 그만보기</a>
			<a class="pull-right white2" href="javascript:closeMainPopup2();">닫기</a>
			</div>
		</div>
	</form>

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
							alt="book1" width="200" height="300"></a>
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
							alt="book2" width="200" height="300"></a>
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
							alt="book2" width="200" height="300"></a>
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
							alt="book2" width="200" height="300"></a>
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
							alt="talk" width="200" height="300"></a>
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
							alt="talk2" width="200" height="300"></a>
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
							alt="talk3" width="200" height="300"></a>
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
							alt="talk4" width="200" height="300"></a>
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
		//채팅방
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
		
		//즐겨찾기 추가
		function bookmarksite(title,url) {
			//internet explorer
			if(document.all){
				widdow.external.AddFavorite(url,title);
			}
			//google chrome
			else if(window.chrome){
				alert("Ctrl+D키를 누르시면 즐겨찾기에 추가하실 수 있습니다.");
			}		
		}

	//팝업 창(main_popup)
	if(getCookie("notToday")!="Y"){
			$("#main_popup").show('fade');
	}

	function closePopupNotToday(){	             
			setCookie('notToday','Y', 1);
			$("#main_popup").hide('fade');
	}
	function setCookie(name, value, expiredays) {
		var today = new Date();
		    today.setDate(today.getDate() + expiredays);

		    document.cookie = name + '=' + escape(value) + '; path=/; expires=' + today.toGMTString() + ';'
	}

	function getCookie(name) 
	{ 
	    var cName = name + "="; 
	    var x = 0; 
	    while ( x <= document.cookie.length ) 
	    { 
	        var y = (x+cName.length); 
	        if ( document.cookie.substring( x, y ) == cName ) 
	        { 
	            if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) 
	                endOfCookie = document.cookie.length;
	            return unescape( document.cookie.substring( y, endOfCookie ) ); 
	        } 
	        x = document.cookie.indexOf( " ", x ) + 1; 
	        if ( x == 0 ) 
	            break; 
	    } 
	    return ""; 
	}
	function closeMainPopup(){
		$("#main_popup").hide('fade');
	}
	
	
	
	
	
	//팝업창2(main_popup1)
	if(getCookie("notToday1")!="Y"){
			$("#main_popup1").show('fade');
	}

	function closePopupNotToday1(){	             
			setCookie('notToday1','Y', 1);
			$("#main_popup1").hide('fade');
	}
	function setCookie(name, value, expiredays) {
		var today = new Date();
		    today.setDate(today.getDate() + expiredays);

		    document.cookie = name + '=' + escape(value) + '; path=/; expires=' + today.toGMTString() + ';'
	}

	function getCookie(name) 
	{ 
	    var cName = name + "="; 
	    var x = 0; 
	    while ( x <= document.cookie.length ) 
	    { 
	        var y = (x+cName.length); 
	        if ( document.cookie.substring( x, y ) == cName ) 
	        { 
	            if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) 
	                endOfCookie = document.cookie.length;
	            return unescape( document.cookie.substring( y, endOfCookie ) ); 
	        } 
	        x = document.cookie.indexOf( " ", x ) + 1; 
	        if ( x == 0 ) 
	            break; 
	    } 
	    return ""; 
	}
	function closeMainPopup1(){
		$("#main_popup1").hide('fade');
	}
	
	//팝업창3(main_popup2)
	if(getCookie("notToday2")!="Y"){
			$("#main_popup2").show('fade');
	}

	function closePopupNotToday2(){	             
			setCookie('notToday2','Y', 1);
			$("#main_popup2").hide('fade');
	}
	function setCookie(name, value, expiredays) {
		var today = new Date();
		    today.setDate(today.getDate() + expiredays);

		    document.cookie = name + '=' + escape(value) + '; path=/; expires=' + today.toGMTString() + ';'
	}

	function getCookie(name) 
	{ 
	    var cName = name + "="; 
	    var x = 0; 
	    while ( x <= document.cookie.length ) 
	    { 
	        var y = (x+cName.length); 
	        if ( document.cookie.substring( x, y ) == cName ) 
	        { 
	            if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 ) 
	                endOfCookie = document.cookie.length;
	            return unescape( document.cookie.substring( y, endOfCookie ) ); 
	        } 
	        x = document.cookie.indexOf( " ", x ) + 1; 
	        if ( x == 0 ) 
	            break; 
	    } 
	    return ""; 
	}
	function closeMainPopup2(){
		$("#main_popup2").hide('fade');
	}
	</script>
	<!--End of Tawk.to Script-->

	<%@include file="include/footer.jsp"%>

</body>
</html>
