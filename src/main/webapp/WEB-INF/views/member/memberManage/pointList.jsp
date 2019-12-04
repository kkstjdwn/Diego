<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="../../layout/bootStrap.jsp"/>
<div class="container">
  <h2>${page }</h2>        
  <table class="table table-hover">
    <thead>
      <tr>
      	<th>NUM</th>
        <th>DATE</th>
        <th>ID</th>
        <th>POINT</th>
        <th>CONTENTS</th>
        <th>TOTAL</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${pointList }" var="point" varStatus="i">
      <tr>
      	<td>${i.count }</td>
        <td>${point.point_date }</td>
        <td>${point.id }</td>
        <td>${point.point_value }</td>
        <td>${point.contents }</td>
        <td>${point.total_point }</td>
      </tr>
      </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>