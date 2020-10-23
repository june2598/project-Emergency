<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 보기</title>
</head>
<body>
<section>
<div class="table-responsive">
  <table class="table">

	<form>
	<div class="form-group1">
<table>
<c:forEach var="boardreply" items="${list}">
<tr>
<td>작성자 : ${board_reply.rewriter}    작성일자 : ${board_reply.redate} </td>
</tr>
<tr>
<td><textarea name="rememo" rows="5" cols="40"
		readonly="readonly" class="form-control1">
${boardreply.rememo}</textarea></td>
<td><a href="replyupdate?reno=${board_reply.reno}">댓글수정</a></td>

</tr>
</c:forEach>
</table>
</div>

	<script>
	$(function(){
		//댓글수정 버튼을 눌렀을 때 처리
		$(".btn-default").click(function(){
			location.href="boardreplyUpdate?bno=" + ${board_reply.bno} + "&reno=" + ${board_reply.reno}; 
		});
	})
	</script>
</form>	
<%@ include file="include/footer.jsp"%>
</section>		

</body>
</html>