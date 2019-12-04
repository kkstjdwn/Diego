<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../layout/bootStrap.jsp" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:import url="../layout/nav.jsp" />
	<div class="container">
		<h2>admin Login</h2>
		<form action="./adminLogin" method="post">
			<div class="form-group">
				<label for="id">ID:</label> <input type="text"
					class="form-control" id="id" name = "admin_id" placeholder="Enter ID"
					required="required">
			</div>
			<div class="form-group">
				<label for="pw">Password:</label> <input type="password"
					class="form-control" id="pw" placeholder="Enter password"
					required="required" name="admin_pw">
			</div>
			<div class="checkbox">
				<label><input type="checkbox" name="remember">
					Remember me</label>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>

</body>
</html>