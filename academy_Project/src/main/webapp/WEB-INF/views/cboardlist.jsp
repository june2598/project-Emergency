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
  <form class="form-horizontal">
    <div class="form-group">
      <label class="control-label col-sm-2" for="cName">회사명 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cName" name="cName" value="${cmanage.cName}" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cAddress">주소 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cAddress" name="cAddress" value="${cmanage.cAddress}" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cCeo">대표자 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cCeo" name="cCeo" value="${cmanage.cCeo}" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cNumber">사업자번호 :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cNumber" name="cNumber" value="${cmanage.cNumber}" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cTel">TEL :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="cTel" name="cTel" value="${cmanage.cTel}" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cEmail">Email :</label>
      <div class="col-sm-10">
        <input type="Email" class="form-control" id="cEmail" name="cEmail" value="${cmanage.cEmail}" readonly="readonly">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cLogo">Logo :</label>
      <div class="col-sm-10">          
        <input type="file" class="form-control" id="cLogo" name="cLogo" value="${cmanage.cLogo}" readonly="readonly">
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
	      <c:if test ="${user.memPosition==2}">
	      	<button class="btn btn-info btn-fill btn-wd" type="button"
			onclick="location.href='${contextPath}/cmanage/cboardupdate?cNo= + ${cmanage.cNo}'">수정하기</button>
		  </c:if>
      </div>
    </div>
  </form>
</div>

<%@include file="include/footer.jsp"%>

</body>

</html>