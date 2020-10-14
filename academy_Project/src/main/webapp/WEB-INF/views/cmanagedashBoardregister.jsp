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
  <form class="form-horizontal" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="cName">회사명 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cName" name="cName" placeholder="회사 이름" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cAddress">주소 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cAddress" placeholder="회사 주소" name="cAddress">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cCeo">대표자 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cCeo" placeholder="대표자" name="cCeo">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cNumber">사업자번호 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cNumber" placeholder="사업자번호" name="cNumber">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cTel">TEL :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cTel" placeholder="전화번호" name="cTel">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cEmail">Email :</label>
      <div class="col-sm-10">
        <input type="Email" class="form-control" id="cEmail" placeholder="Email" name="cEmail">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cLogo">Logo :</label>
      <div class="col-sm-10">          
        <input type="file" class="form-control" id="cLogo" placeholder="Logo" name="cLogo">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-info btn-fill btn-wd">등록 완료</button>
      </div>
    </div>
  </form>
</div>

<%@include file="include/footer.jsp"%>

</body>
</html>