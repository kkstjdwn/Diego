<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<p>작성자: ${selectReview.name}</p> 
		<p>리뷰넘버:${selectReview.rev_num}</p>
		<p>도움: ${selectReview.help}</p>
		<p>평점:${selectReview.star}</p>
		<p>리뷰콘텐츠: ${selectReview.rev_contents}</p>
		<c:forEach items="${selectReview.files }" var="sf">
		<p>${sf.fname}</p>
		</c:forEach>
	
</body>
</html>