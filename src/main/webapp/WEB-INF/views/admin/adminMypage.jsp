<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootStrap.jsp" />
<title>MyPage</title>
</head>
<body>
	<c:import url="../layout/nav.jsp" />
<h1>회원정보</h1>
	<p>아이디 : ${dto.admin_id}</p>
	<p>이름 : ${dto.admin_name}</p>
	<p>레벨 : ${dto.lev}</p>
	
	<a href="./adminUpdate" class="btn btn-primary">회원정보 수정</a>
	<a href="./adminDelete" class="btn btn-danger">회원 탈퇴</a>

</body>


</html>