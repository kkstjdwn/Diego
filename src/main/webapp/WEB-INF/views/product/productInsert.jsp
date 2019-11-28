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

	<div class="container">
		<h1>상품 등록 페이지</h1>
		<form>
			<div class="form-group">
				<label for="cat_ref">cat_ref</label>
			</div>

			<div class="form-group">

				<select id="cloth">
					<option value="100">Leather</option>
					<option value="200">Cosmetic</option>
					<option value="300">Cloth</option>
					<option value="400">UnderWear</option>

				</select>

				<div id="kind">
					<select>
						<option value="101">wallet</option>
						<option value="102">bag</option>
					</select>
				</div>



			</div>



			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password"
					class="form-control" id="pwd" placeholder="Enter password">
			</div>
			<div class="checkbox">
				<label><input type="checkbox"> Remember me</label>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>

	<script type="text/javascript">
	<!------------------------------ AJAX 자바스크립트방식 ----------------------- -->
	$("#cloth").change(function() {
		
		//1. XMLHttpRequest 객체 생성
		var xmlhttp;
		
		if(window.XMLHttpRequest){
			xmlhttp = new XMLHttpRequest();
		}else {
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP")
		}
		
		//2. 요청 정보 작성	
		xmlhttp.open("GET", "./selectCloth?kind="+$("#cloth").val());
		
		//3. 요청 전송
		xmlhttp.send();
		
		//4. 결과 처리
		xmlhttp.onreadystatechange= function() {
				
				if(this.readyState == 4 && this.status == 200){
				$('#kind').html(this.responseText);
			}
			
		}
		
	});
	
	
	
	</script>

</body>
</html>