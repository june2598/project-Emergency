<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<title>홈페이지 관리</title>
</head>
<body>
<%@include file="include/header.jsp"%>

<div class="container">
  <form class="form-horizontal" action="POST">
    <div class="form-group">
      <label class="control-label col-sm-2" for="coName">회사명 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="coName" placeholder="회사 상호" name="coName">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="coAddress">주소 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="coAddress" placeholder="회사 주소" name="coAddress">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="coCeo">대표자 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="coCeo" placeholder="대표자" name="coCeo">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="coNumber">사업자번호 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="coNumber" placeholder="사업자번호" name="coNumber">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="coTel">TEL :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="coTel" placeholder="전화번호" name="coTel">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="coEmail">Email :ㅇㅇㅇ</label>
      <div class="col-sm-10">
        <input type="Email" class="form-control" id="coEmail" placeholder="Email" name="coEmail">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="coLogo">Logo :</label>
      <div class="col-sm-10">          
        <input type="file" class="form-control" id="coLogo" placeholder="Logo" name="coLogo">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-info btn-fill btn-wd">수정하기</button>
      </div>
    </div>
  </form>
</div>

<%@include file="include/footer.jsp"%>

</body>
</html>