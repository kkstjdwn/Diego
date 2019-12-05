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
		<form action="productInsert" method="post" id="frm">
			<div class="form-group">
				<label for="cat_ref">Category Choice</label>
			</div>



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





			<!--한칸 띄우기 -->
			<br>

			<div class="form-group">
				<label for="pro_name">Product Name:</label> <input type="text"
					class="form-control" id="pro_name" name="pro_name"
					placeholder="Product Name Enter">
			</div>

			<div class="form-group">
				<label for="pro_price">Product Price:</label> <input type="number"
					class="form-control" id="pro_price" name="pro_price"
					placeholder="Product Price Enter">
			</div>

			<div class="form-group">
				<label for="pro_count">Product Count:</label> <input type="text"
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



			<input type="button" class="btn btn-default" id="btnOp"
				value="Add Option">

			<div id="options">
				<div class="form-group" title="parent">
					<div class="op">
						<select name="opt1" id="opt1" class="optSelect">
							<option value="size">size</option>
							<option value="color">color</option>
							<option value="vital">필수옵션</option>
						</select>
					</div>

					<div id="opt1_val">
						<select name="opt1_val" id="opt1_vals" class="valSelect">
							<option value="Small">S</option>
							<option value="Medium">M</option>
							<option value="Large">L</option>
							<option value="XLarge">XL</option>
						</select>
					</div>

					<button class="btn btn-danger" id="od">option delete</button>
				</div>

			</div>

			<button class="btn btn-primary px-3">상품 추가</button>

		</form>
	</div>



	<script type="text/javascript">
	<!------------------------------ AJAX 자바스크립트방식 ----------------------- -->
			var options=$('#options').html();
			$('options').empty();
			var count=0;
			var index=1;
	
			//카테고리 ajax
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

		
		
		//color는 기본적으로 null값이 없기 때문에 input 컬러타입을 text로바꿔주자. 그럼 null이 가겟지? 빈칸이면
		
		//필수옵션 추가
		$('#btnOp').click(function() {
			var index=2;
			if(count<2){
				$('#options').append(options);
				
				count++;
				
			}else{
				alert("3개이상금지");
			}
			
		});		
		
		//필수옵션 삭제
		$('#options').on("click","#od",function(){
			
			$(this).parents(".form-group").remove();
			count--;
			
		});
		
		
		//필수옵션 ajax
		$('#opt1').change(function() {
			
			
			if($('#opt1').val()=="size"){
			$.ajax({
				type : "GET",
				url : "selectSize",
				data:{
					opt1 : $('#opt1').val()
					
				},
				success : function(data) {
					
					$('#opt1_val').html(data);
					
					
				}
				
			});
			}
			else if($('#opt1').val()=="color"){
			
			$.ajax({
				type : "GET",
				url : "selectColor",
				data:{
					opt1 : $('#opt1').val()
					
				},
				success : function(data) {
					
					$('#opt1_val').html(data);
					
					
				}
				
			});
			
			}
			else {
			$.ajax({
				type : "GET",
				url : "selectVital",
				data:{
					opt1 : $('#opt1').val()
					
				},
				success : function(data) {
					
					$('#opt1_val').html(data);
					
					
				}
				
			});
			}
		});
		
		
		
		
		
		
		
		
		
		
		
// 	$('#opt1').change(function() {

// 		var opt1 = $('#opt1').val();
		
// 		$.post("selectSize", {opt1: opt1} , function(data) {
			
// 			$('#')
			
// 		});
		
		
		
// 		$.ajax({
// 			type : "get",
// 			url   : "selectSize",
// 			data : {
// 				title : $('#opt1').prop('title'),
// 				opt1 : $('#opt1').val()
// 			}, 
// 			success:function(data){
// 				$('#opt1_val').html(data);
				
// 			}	

//		});
		
		
		
		
		
		
	</script>

</body>
</html>