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
		<p>작성자: ${reviewSelect.name}</p> 
		<p>리뷰넘버:${reviewSelect.rev_num}</p>
		<p>도움: ${reviewSelect.help}</p>
		<p>평점:${reviewSelect.star}</p>
		<p>리뷰콘텐츠: ${reviewSelect.rev_contents}</p>
		<c:forEach items="${reviewSelect.files }" var="sf">
		<p>${sf.fname}</p>
		</c:forEach>
	
</body>
</html>