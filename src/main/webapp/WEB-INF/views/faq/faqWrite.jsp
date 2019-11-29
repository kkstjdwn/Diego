<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ Write</title>
<c:import url="../layout/bootStrap.jsp"/>
</head>
<body>
	<c:import url="../layout/nav.jsp" />
	<div class="container">
		<h2>FAQ Insert Page</h2>
		<form action="./faqWrite" method="post"> 
			<div class="form-group">
				<label for="title">Title : </label> <input type="text"
					class="form-control" id="title" name="faq_title">
			</div>
			<div class="form-group">
				<label for="admin_id">admin_id : </label> <input type="text"
					class="form-control" id="admin_id" name="admin_id" >
			</div>
			<div class="form-group">
				<label for="faq_cat">Category : </label> <input type="text"
					class="form-control" id="faq_cat" name="faq_cat" >
			</div>
			<div class="form-group">
				<label for="contents">Contents:</label>
				<textarea class="form-control" rows="30" id="contents"
					name="faq_contents"></textarea>
			</div>

			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>

</html>