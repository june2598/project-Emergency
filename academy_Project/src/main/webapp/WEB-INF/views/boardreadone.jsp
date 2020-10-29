<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<html>
<head>
<title>상세보기</title>
</head>
<body>

<%@include file="include/header.jsp"%>
<script>

$(document).ready(function(){
	console.log("ready");
	//댓글목록 불러오기
	replylist();
	
	//댓글추가
	$(document).on('click','#btnReplySave',function(){
		var rememo=$("#rememo").val();
		var rewriter=$("#rewriter").val();
		
		var url = "${pageContext.request.contextPath}/board/reply"; //아작스 수정
		var paramData ={
			"rewriter" : '${user.memId}',
			"rememo" : rememo,
			"bno":'${board.bno}'
		};
		
		$.ajax({
			type :"POST",
			url : url,
			data : paramData,
			dataType : 'json',
			success : function(result){
				console.log(result);
				replylist();
				$("#rememo").val("");
				
			},
			error : function(data){
				alert("댓글추가에러");
			}
		});
	})
	
}) // 댓글 추가 끝

	//댓글 목록 아작스
	function replylist(){
	
	var url = "${pageContext.request.contextPath}/board/replylist";
	var paramData = {"bno" : "${board.bno}"};
	$.ajax({
		url : url,
		data : paramData,
		dataType :'json',
		type :'POST',
		success: function(result){
			var htmls ="";
			if(result.length<1){
				htmls=htmls +"<h3>등록된 댓글이 없습니다.</h3>";
			}
			else{
	               $(result).each(function(){
	            	  htmls += '<c:set var="rewriter" value="'+this.rewriter+'"/>';
	                  htmls += '<div class="media text-muted pt-3" id="reno' + this.reno + '">';
	                     htmls += '<span class="d-block">';
	                        htmls += this.reno + ' - ';
	                        htmls += '<strong class="text-gray-dark">' + this.rewriter + '</strong>';
	                        htmls += '<span style="padding-left: 7px; font-size: 9pt">';
	                      	htmls += '<c:if test="${user.memId == rewriter}">';
	                        htmls += '<a href="javascript:void(0)" onclick="fn_editReply(' + this.reno + ', \'' + this.rewriter + '\', \'' + this.rememo + '\' )" style="padding-right:5px">수정</a>';
	                        htmls += '<a href="javascript:void(0)" onclick="fn_deleteReply(' + this.reno + ')" >삭제</a>';
	                        htmls += '</c:if>';
	                        htmls += '<c:if test="${user.memId == board.id}">';
	                        htmls += '<a href="javascript:void(0)" onclick="fn_deleteReply(' + this.reno + ')" >삭제</a>';
	                        htmls += '</c:if>';
	                        htmls += '</span>';
	                        htmls += '</span><br>';
	                        htmls += this.rememo;
	                        htmls += '</p>';
	                        htmls += '</div>';    
	             
	               }); //each end
	          
			}
			
			$("#replyList").html(htmls);
		}	,
		error : function(data){
			alert("데이터 에러"+data);
		}
	});
	
	}//댓글 불러오기 끝
	
	function fn_editReply(reno,rewriter,rememo){
		var htmls="";
		htmls = htmls + '<div class="" id="reno'+reno+'">';
		
		htmls += '<span class="d-block">';
		htmls += reno + ' - ';
		htmls += '<strong class="text-gray-dark">' + rewriter + '</strong>';
		htmls += '<span style="padding-left: 7px; font-size: 9pt">';
		htmls += '<a href="javascript:void(0)" onclick="fn_updateReply(' +reno + ', \'' + rewriter + '\' )"
		style="padding-right:5px">저장</a>';
		
		htmls += '<a href="javascript:void(0)" onclick="replyList()">취소</a>';
		htmls += '</span>';
		htmls += '</span><br>';
		htmls +='<textarea name="editmemo" id="editmemo" class="form-control" rows="3">'
		htmls += rememo;
		htmls +='</textarea>'
		htmls += '</p>';
		htmls += '</div>';    
		
		$('#reno'+reno).replaceWith(htmls);
		$('#reno'+reno+'#editmemo').focus();
		
		
	}
	
	
	//리플 업데이트 
	function fn_updateReply(reno,rewriter){
		var editmemo = $("#editmemo").val();
		var url = "${pageContext.request.contextPath}/board/replyupdate";
		var paramData = {
				"reno" : reno,
				"rewriter" : rewriter,
				"rememo" : editmemo
		};// 수정할 데이터
		
		$.ajax({
			type : "POST",
			url : url,
			data : paramData,
			dataType : 'json',
			success : function(result){
				console.log(result);
				replylist();
			},
			error : function(data){
				alert("업데이트 에러");
			}
		});
	} //업데이트 끝
	
	function fn_deleteReply(reno){
		var url="${pageContext.request.contextPath}/board/replyDelete";
		var paramData = {
				"reno" : reno
		};
		
		$.ajax({
			type : "POST",
			url : url,
			data : paramData,
			dataType : 'json',
			success : function(result){
				console.log(result);
				replylist();
				
			},
			error : function(data){
				alert("삭제 에러");
			}
		});
	} //댓글 삭제 끝
	
</script>
<div class="col-sm-2"></div>
<div class="col-sm-8">
<section class="content">
		<div class="box">
			<div class="box-header">
				<h3 class="box-title">상세보기</h3>
			</div>
			<div class="box-body">
				<div class="form-group">
					<label>제목</label> <input type="text" name="btitle"
						class="form-control" value="${board.btitle}" readonly="readonly" />
				</div>

				<div class="form-group">
					<label>내용</label>
					<textarea name="bcontent" rows="5" readonly="readonly"
						class="form-control">${board.bcontent}</textarea>
				</div>

				<div class="form-group">
					<label>작성자</label> <input type="text" name="id"
						class="form-control" value="${board.id}" readonly="readonly" />
				</div>
			</div>

		</div>
		<div class="box-footer">
			<button class="btn btn-primary" type="button" 
			onclick="location.href='${contextPath}/'">메인으로</button>
			<button class="btn btn-primary" type="button"
			onclick="location.href='${contextPath}/board/list?bs=${board.bselect}'">글목록</button>
			<c:if test="${user.memId==board.id}">
			<button class="btn btn-warning" type="button"
			onclick="location.href='boarddelete?bno=${board.bno}&&bs=${board.bselect}'">글삭제</button>
			<button class="btn btn-danger" type="button"
			onclick="location.href='${contextPath}/board/boardupdate?bno= + ${board.bno}'">수정</button>
			</c:if>
		</div>
	</section>
	
	<div class="box-body">
	<c:if test="${user != null}">
	<table>
		<tr>
		<td rowspan="2" width="70%"><input class="form-control" name="rememo" id="rememo" placeholder="댓글을 입력하세요"></td>
		<td><input type="hidden" name="rewriter" class="form-control" value="${user.memId}" readonly></td>
		</tr>
		
		<tr>
			<td><button type="button" id="btnReplySave">저장</button></td>
		</tr>
	</table>
	</c:if>
	<div id="replyList">
	</div>
	
	</div>
	
	</div>
	
	<script>
	</script>
	
	
	<hr><P></P><p></p>
	
	
	<div class="col-sm-2"></div>
<%@include file="include/footer.jsp"%>

</body>
</html>
