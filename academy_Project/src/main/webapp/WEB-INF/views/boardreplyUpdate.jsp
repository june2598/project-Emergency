<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%@include file="include/header.jsp"%>
	
	<section class="content">
		<div class="box-header">
			<h3 class="box-header">댓글 수정</h3>
		</div>
		<form role="form" method="post">
			<div class="box-body">
			<div class="form-group">
				<label>작성자</label> <input type="text" name='rewriter'
					class="form-control" value="${board_reply.rewriter}">
			</div>
				<div class="form-group">
					<label>댓글내용</label>
					<textarea class = "form-control" name="rememo" rows="3" 
					value="${board_reply.rememo}"></textarea>
				</div>
				<div class="form-group">
				<label>작성일자</label>
				<input type="text" name="redate" class="form-control"
				readonly="readonly" value="${boardreply_redate}">
				
				</div>
				<!-- 글번호 -->
				<input type="hidden" name="bno" value="${board_reply.bno}"/>
			</div>
			<div class="box-footer">
				<button type="submit" class="btn btn-primary">수정</button>
			</div>
		</form>
	</section>
	<%@include file="include/footer.jsp" %>

