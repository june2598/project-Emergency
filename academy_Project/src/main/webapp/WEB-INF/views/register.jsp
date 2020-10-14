<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="${contextPath}/resources/bootstrap/css/bootstrap.css">

</head>
<body>
<%@include file="include/header.jsp"%>
	<script>
	$(document).ready(function(e){		
		var idx = false; 	// 아이디 중복 체크 했는지 검사할 때 씀
		
		// 회원 가입 버튼을 눌렀을 때 동작
		$('#signUp').click(function(){
			// [ 아이디 ] 중복 체크를 진행했는지 검사
			if(idx == false) {
				$('#id_check_msg').html("아이디 중복 체크를 해주세요.");
				$('#memId').focus();
				$('button#signUp').attr("disabled", "true");
			} 
			
			// [ 비밀번호 확인 ] 위에 입력한 값과 일치 하는지 검사
			if($('#memPw').val() != $('#memPwChk').val()) {
				$('#pw_check_msg').html("패스워드가 다릅니다.");
				$('#memPw').focus();
				$('button#signUp').attr("disabled", "true");
			}
			
		});
		
		// [ 아이디 ] 중복 검사 (ajax)
		$('#memId').blur(function(){
			$.ajax({
				url : "${pageContext.request.contextPath}/member/idChk",
				type : "GET",
				dataType : "json",
				data : { "memId" : $('#memId').val() },
				success : function(data) {
					if(data == 0 && $.trim($('#memId').val()) != '') {
						idx = true;
						$('#id_check_msg').empty();
						$('#id_check_msg').html("사용 가능한 아이디입니다.");
					} else {
						$('#id_check_msg').empty();
						$('#id_check_msg').html("이미 사용 중인 아이디입니다.");
					}
		   		},
				error : function() {
					alert("서버 에러");
				}
			});
		});
		
		// [비밀번호] 일치 확인
		$('#memPwChk').change(function(){
			if($('#memPw').val() != $('#memPwChk').val()) {
				$('#memPwChk').focus();
				$('#pw_check_msg').empty();
				$('#pw_check_msg').html("비밀번호가 일치하지 않습니다");
			} else{
				$('#pw_check_msg').empty();
				$('#pw_check_msg').html("비밀번호 확인 완료");
			}
		});
		
	});
	
	</script>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px;">
				<form:form 
		         modelAttribute="memberDTO"
		         method="POST"
		         action="${contextPath}/member/register">
					<h3 style="text-align:center;">회원가입</h3>
					<div class="form-group">
						<form:input path="memId" type="text" class="form-control" placeholder="아이디" id="memId" name="memId" oninput="checkId()" maxlength="45"/>
						 <div id="id_check_msg"></div>
						 <form:errors path="memId" />
					</div>
					<div class="form-group">
						<form:input path="memPw" type="password" class="form-control" placeholder="비밀번호" id="memPw" name="memPw" maxlength="45"/>
						 <form:errors path="memPw" />
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호 확인" id="memPwChk" name="memPwChk" maxlength="45"/>
						<div id="pw_check_msg"></div>
					</div>
					<div class="form-group">
						<form:input path="memName" type="text" class="form-control" placeholder="이름" name="memName" maxlength="20"/>
						<form:errors path="memName" />
					</div>
					<div class="form-group">
						<form:input path="memTel" type="text" class="form-control" placeholder="전화번호 (ex)01012345678)" name="memTel" maxlength="11"/>
						<form:errors path="memTel" />
					</div>
					<div class="form-group">
						<form:input path="memAddress" type="text" class="form-control" placeholder="주소" name="memAddress" maxlength="20"/>
						<form:errors path="memAddress" />
					</div>
					<div class="form-group">
						<form:input path="memEmail" type="email" class="form-control" placeholder="이메일" name="memEmail" maxlength="20"/>
						<form:errors path="memEmail" />
					</div>
					<div class="form-group">
						<form:input path="memBirth" type="text" class="form-control" placeholder="생년원일 (ex)19900101)" name="memBirth" maxlength="20"/>
						<form:errors path="memBirth" />
					</div>
					<div>
						<input type="submit" id="signUp" class="btn btn-primary form-control" value="회원가입">
					</div>
				</form:form>
			</div>
		</div>		
		<div class="col-lg-4"></div>	
	</div>
	<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="${contextPath}/resources/bootstrap/js/bootstrap.js"></script>
<%@include file="include/footer.jsp"%>

</body>
</html>
