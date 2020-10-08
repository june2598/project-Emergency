<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	var left = {
		pageSubmitFn : function(menu) {
			if(menu === "DashBoard") {
				$("#frm").attr("action", "/");
				$("#pageName").val(menu);
			}else if(menu === "Charts") {
				$("#frm").attr("action", "charts");
				$("#pageName").val(menu);
			}else if(menu === "Tables"){
				$("#frm").attr("action", "tables");
				$("#pageName").val(menu);
			}
			$("#frm").submit();	
		} 
	}
	
	$(function(){
		$(".menu").removeClass("active");
		var pageName = "<c:out value = '${param.pageName}' />";
		$("#"+pageName).addClass("active");
		
		$(".menu").click(function(){
			var menu = $(this).attr("id");
			left.pageSubmitFn(menu);
		})
	})
</script>


<ul class="sidebar navbar-nav">
	<li id="DashBoard" class="menu nav-item active">
		<a class="nav-link" href=<c:url value="dashBoard"/>>
			<i class="fas fa-fw fa-table"></i>
			<span>홈페이지 로고 수정</span>
		</a>
	</li>
	<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			<i class="fas fa-fw fa-folder"></i>
			<span>학생 관리</span>
		</a>
		<div class="dropdown-menu" aria-labelledby="pagesDropdown">
			<h6 class="dropdown-header">학생정보</h6>
			<a class="dropdown-item" href=<c:url value="charts"/> onclick="pageSubmitFn()">학생현황</a>
			<a class="dropdown-item" href="#" onclick="pageSubmitFn()">학생정보등록</a>
			<a class="dropdown-item" href="#" onclick="pageSubmitFn()">학생정보수정</a>
	</li>
	<li id="Charts" class="menu nav-item">
		<a class="nav-link" href="#">
			<i class="fas fa-fw fa-chart-area"></i>
			<span>접속 로그</span></a>
	</li>
	
</ul>
<form id="frm" method="post" action="">
	<input type="hidden" id="pageName" name="pageName">
</form>