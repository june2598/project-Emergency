<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<%@include file="include/header.jsp"%>
<body>
   <div class="panel panel-default">
      <div class="panel-heading">학생회원리스트</div>
      <div class="panel-body">
         <%--테이블 태그 --%>
         <table class="table table-striped">
            <thead>
               <tr>
                  <th>번호</th>
                  <th>교육과정</th>
                  <th>아이디</th>
                  <th>이름</th>
                  <th>전화번호</th>
                  <th>이메일</th>
               </tr>
            </thead>
            <tbody>

               <c:forEach var="manage" items="${managelist}">
                  <tr>
                     <td>${manage.smid}</td>
                     <td>${manage.ssub}</td>
                     <td>${manage.sid}</td>
                     <td>${manage.sname}</td>
                     <td>${manage.sphone}</td>
                     <td>${manage.semail}</td>
                  </tr>
               </c:forEach>
            </tbody>
         </table>
         <div class="box-header with-border" align="right">
            <c:if test="${user.memPosition==2}">
               <button class="btn btn-primary" type="button"
                  onclick="location.href='${contextPath}/mange/manageregister'">학생등록</button>
            </c:if>
         </div>
      </div>
      <div class="col-sm-2"></div>
      <form method="post" class="form-inline">

         <div class="form-group">
            <button type="button" class="btn btn-default">

               <%-- 문제) EL를 이용한 동적 데이터 출력 --%>
               Count <span class="badge">${count}</span>
            </button>
         </div>

         <div class="form-group">
            <select class="form-control" name="skey" id="skey">
               <option value="all">전체</option>
               <option value="name">이름</option>
               <option value="phone">전화번호</option>
               <option value="email">이메일</option>
            </select>
         </div>

         <div class="form-group">
            <input type="text" class="form-control" id="svalue" name="svalue">
         </div>

         <button type="submit" class="btn btn-default">Search</button>

      </form>
   </div>
   <%@include file="include/footer.jsp"%>
</body>
</html>