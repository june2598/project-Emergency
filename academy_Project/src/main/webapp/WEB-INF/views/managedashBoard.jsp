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
<div class="col-md-1"></div>
    <div class="col-md-10"> 
		<div id="content-wrapper">
			<div class="container-fluid">
				<!-- Breadcrumbs-->
				<ol class="breadcrumb">
					<h4 class="title">로그 수정 수정</h4>
				</ol>
				<div class="content">
					<div class="row">
						<label class="col-md-2">로고이미지:</label>
						<div class="col-md-3">
							<div class="form-group">
								<input type="file" name="Image" class="form-control">
							</div>
						</div>
					</div>
		
					<br><br>
					<ol class="breadcrumb">
						<h4 class="title">하단 정보수정</h4>
					</ol>
		
					<div class="content">
						<div class="row">
							<label class="col-md-2">회사명:</label>
							<div class="col-md-3">
								<div class="form-group">
									<input type="text" class="form-control border-input"
										placeholder="Company" value="응급아카데미">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-md-2">대표이름:</label>
							<div class="col-md-3">
								<div class="form-group">
									<input type="text" class="form-control border-input"
										placeholder="name" value="홍준희">
								</div>
							</div>
						</div>
						<div class="row">
							<label class="col-md-2">이메일:</label>
							<div class="col-md-4">
								<div class="form-group">
									<input type="email" name="mail1" maxlength="20"
										class="form-control border-input" placeholder="email"
										value="asdasd">@<select name="mail2"
										class="form-control border-input">
										<option>naver.com</option>
										<option>daum.net</option>
										<option>gmail.com</option>
										<option>nate.com</option>
									</select>
								</div>
							</div>
						</div>
					</div>
		
					<div class="row">
						<label class="col-md-2">전화번호:</label>
						<div class="col-md-3">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="tel."
									value="000-0000-0000">
							</div>
						</div>
					</div>
					<div class="row">
						<label class="col-md-2">팩스번호:</label>
						<div class="col-md-3">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="tel."
									value="000-000-0000">
							</div>
						</div>
					</div>
					<div class="row">
						<label class="col-md-2">사업자등록번호:</label>
						<div class="col-md-3">
							<div class="form-group">
								<input type="text" class="form-control"
									placeholder="등록번호를 입력해주세요." value="0000-0000-0000">
							</div>
						</div>
					</div>
		
					<div class="row">
						<label class="col-md-2">주소:</label>
						<div class="col-md-3">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="주소를 입력해주세요"
									value="서울특별시 xx구 xx동 13xx-8 KI타워 x층~x층">
							</div>
						</div>
					</div>
					<br><br><br>
					<div class="text-center">
						<button type="submit" class="btn btn-info btn-fill btn-wd">Update
							Profile</button>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>	  
    </div>
    <div class="col-md-1"></div>
</div>



<%@include file="include/footer.jsp"%>

</body>
</html>