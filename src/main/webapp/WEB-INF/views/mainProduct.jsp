<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
	text-align: center;
	}
	a{	
		font-size: 30px;
		text-decoration: none;
	}
	a:hover{
		text-decoration: underline;
	}

</style>

</head>
<body>
	<h1>PRODUCT</h1>
	<a href="${pageContext.request.contextPath}/product/productInsert">상품추가</a>
	<br>
	<a href="">상품리스트</a>
	<br>
	<a href="">상품삭제</a>
	<br>
	<a href="">상품수정</a>
	
	<h1>QNA</h1>
	<a href="">QNA리스트</a>
	<br>
	<a href="">QNA작성</a>
	<br>
	<a href="">QNA삭제</a>
	<br>
	<a href="">QNA수정</a>

	<h1>REVIEW</h1>
	<a href="">리뷰리스트</a>
	<br>
	<a href="">리뷰작성</a>
	<br>
	<a href="">리뷰삭제</a>
	<br>
	<a href="">리뷰수정</a>
	<br>
	
	<h1>COMMENT</h1>
	<a href="">리뷰코멘트리스트</a>
	<br>
	<a href="">리뷰코멘트작성</a>
	<br>
	<a href="">리뷰코멘트삭제</a>
	<br>
	<a href="">리뷰코멘트수정</a>
	
	<h1>IMAGES</h1>
	<a href="">이미지등록 리스트</a>
	<br>
	<a href="">이미지등록 </a>
	<br>
	<a href="">이미지삭제</a>
	<br>
	<a href="">이미지수정</a>
	<br>
	
</body>
</html>