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
  <form class="form-horizontal" method="POST">
    <div class="form-group">
      <label class="control-label col-sm-2" for="cName">회사명 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cName" name="cName" value="${cmanage.cName}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cAddress">주소 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cAddress" name="cAddress" value="${cmanage.cAddress}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cCeo">대표자 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cCeo" name="cCeo" value="${cmanage.cCeo}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cNumber">사업자번호 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cNumber" name="cNumber" value="${cmanage.cNumber}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cTel">TEL :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cTel" name="cTel" value="${cmanage.cTel}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cEmail">Email :</label>
      <div class="col-sm-10">
        <input type="Email" class="form-control" id="cEmail" name="cEmail" value="${cmanage.cEmail}">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-info btn-fill btn-wd">수정완료</button>
      </div>
    </div>
  </form>
</div>

<%@include file="include/footer.jsp"%>

</body>
</html>