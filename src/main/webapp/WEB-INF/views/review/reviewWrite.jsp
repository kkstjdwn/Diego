<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/bootStrap.jsp" />
</head>
<body>
<c:import url="../layout/nav.jsp" />
	
		<div class="container">
		
		<div class="jumbotron page-header">
			<h1>REVIEW WRITE PAGE</h1>
		</div>
		
		<form action="./qnaWrite" method="post" onsubmit="true">
			
					
			<div class="form-group">
			<label for="pro_num">Product Number:</label>
				<input type="text" class="form-control" id="pro_num" name="pro_num" readonly="readonly" value="${param.pro_num}">
			</div>
			
			<div class="form-group">
				<label for="title">제목 : </label> 
				<select name="title">
					<option value="상품 문의드립니다">상품 문의 드립니다</option>
					<option value="배송 문의드립니다">배송 문의 드립니다</option>
					<option value="기타 문의드립니다">기타 문의 드립니다</option>
				</select>
			</div>
			

			<div class="form-group">
				<label for="witer">Writer : </label> 
				<input type="text" class="form-control" id="writer" name="writer" readonly="readonly" value="${admin.admin_id}">
			</div>

			
			<div class="form-group">
				<label for="contents">Contents:</label>
				<textarea class="form-control" rows="30" id="contents" name="contents"></textarea>
			</div>

			<button  class="btn btn-primary">등록</button>
			<a href="./qnaList" class="btn btn-default">List</a>
		
		</form>
	</div>


</body>
</html>