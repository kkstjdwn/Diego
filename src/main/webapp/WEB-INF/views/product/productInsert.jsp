<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/bootStrap.jsp" />
<c:import url="../layout/summerNote.jsp"></c:import>
</head>
<body>

	<div class="container">
		<h1>상품 등록 페이지</h1>
		<form action="./productInsert" method="post" id="frm">
			<div class="form-group">
				<label for="cat_ref">Category Choice</label>
			</div>

			<div id="options">

				<div class="form-grop" title="parent">

					<div class="form-group">

						<select id="cloth">
							<option value="100">Leather</option>
							<option value="200">Cosmetic</option>
							<option value="300">Cloth</option>
							<option value="400">UnderWear</option>

						</select>
					</div>

					<div id="kind">
						<select name="cat_ref" id="kinds">
							<option value="101">wallet</option>
							<option value="102">bag</option>
						</select>
					</div>

				</div>

			</div>

			<!--한칸 띄우기 -->
			<br>

			<div class="form-group">
				<label for="pro_name">Product Name:</label> 
				<input type="text"
					class="form-control" id="pro_name" name="pro_name"
					placeholder="Product Name Enter">
			</div>

			<div class="form-group">
				<label for="pro_price">Product Price:</label> 
				<input type="text"
					class="form-control" id="pro_price" name="pro_price"
					placeholder="Product Price Enter">
			</div>

			<div class="form-group">
				<label for="pro_count">Product Count:</label> 
				<input type="text"
					class="form-control" id="pro_count" name="pro_count"
					placeholder="Product Count Enter">
			</div>

			<div class="form-group">
				<label for="pro_contents">Product Cotents:</label>
				<textarea type="text" id="pro_contents" name="pro_contents"
					placeholder="Product Contents Enter">입력하시오.</textarea>
			</div>

			<div class="form-group">
				<label for="pro_warning">Product Warning:</label>
				<textarea type="text" id="pro_warning" name="pro_warning"
					placeholder="Product Warning Enter">입력하시오.</textarea>
			</div>


			<div class="form-group color" style="display: block">
				<label for="color">Product Color:</label> 
				<input type="color" id="color" name="color" placeholder="Product Color Enter" >

			</div>


			<div class="form-group size" style="display: none">
				<label for="pro_size">Product Size:</label> <select name="pro_size">
					<option value="">사이즈를 선택하세요</option>
					<option value="Small">Small</option>
					<option value="Medium">Medium</option>
					<option value="Large">Large</option>
					<option value="X-Large">X-Large</option>
					<option value="XX-Large">XX-Large</option>
				</select>

			</div>
			
			<div class="form-group bag">
				<label for="pro_warning">Product Warning:</label>
				<textarea type="text" id="pro_warning" name="pro_warning"
					placeholder="Product Warning Enter">입력하시오.</textarea>
			</div>




			<button class="btn btn-primary px-3">상품 추가</button>

		</form>
	</div>



	<script type="text/javascript">
	<!------------------------------ AJAX 자바스크립트방식 ----------------------- -->
		$("#cloth").change(function() {

			//1. XMLHttpRequest 객체 생성
			var xmlhttp;

			if (window.XMLHttpRequest) {
				xmlhttp = new XMLHttpRequest();
			} else {
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP")
			}

			//2. 요청 정보 작성	
			xmlhttp.open("GET", "./selectCloth?kind=" + $("#cloth").val());

			//3. 요청 전송
			xmlhttp.send();

			//4. 결과 처리
			xmlhttp.onreadystatechange = function() {

				if (this.readyState == 4 && this.status == 200) {
					$('#kind').html(this.responseText);
				}

			}

			

		});

		//섬머노트
		$("#pro_contents").summernote({
			height : 120,

		});

		$("#pro_warning").summernote({
			height : 120,

		});

	


		
		//color는 기본적으로 null값이 없기 때문에 input 컬러타입을 text로바꿔주자. 그럼 null가겟지? 빈칸이면
				
		
	</script>

</body>
</html>