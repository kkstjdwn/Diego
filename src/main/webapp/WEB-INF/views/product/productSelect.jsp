<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/bootStrap.jsp" />
<style type="text/css">
.filebox label {
	display: inline-block;
	padding: .5em .75em;
	color: #999;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: #fdfdfd;
	cursor: pointer;
	border: 1px solid #ebebeb;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
}

.filebox input[type="file"] { /* 파일 필드 숨기기 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}
</style>


</head>
<body>
	<c:import url="../layout/nav.jsp" />
	<div class="container">
		<div class="jumbotron page-header">
			<h1>Product Info 
			<c:if test="${!empty member }">
			<button id="insert-cart" value="${product.pro_num }">장바구니</button>
			</c:if>
			</h1>
		</div>


		<div class="form-group">
			<label for="pro_date">Product Insert Date:</label> <b>${product.pro_date}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_num">Product Number:</label> <b>${product.pro_num}
			</b>
		</div>


		<div class="form-group">
			<label for="cat_ref">Category Number:</label> <b>${product.cat_ref}
			</b>
		</div>


		<div class="form-group">
			<label for="pro_name">Product Name:</label> <b>${product.pro_name}</b>
		</div>

		<div class="form-group">
			<label for="pro_price">Product Price:</label> <b>${product.pro_price}</b>
		</div>

		<div class="form-group">
			<label for="pro_count">Product Count:</label> <b>${product.pro_count}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_sale">Product Sale:</label> <b>${product.pro_sale}
			</b>
		</div>

		<div class="form-group">

			<label for="contents">Product Cotents:</label>
			<div class="well" id="contents">${product.contents}</div>

		</div>

		<div class="form-group">
			<label for="pro_warning">Product Warning:</label>
			<div class="well" id="contents">${product.pro_warning}</div>
		</div>


		<div class="form-group">
			<label for="pro_size">Product Size:</label> <b>${product.pro_size}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_color">Product Color:</label> <b>${product.pro_color}
			</b>
		</div>

		<div class="form-group">
			<label for="pro_vital">Product Option:</label> <b>${product.pro_vital}
			</b>
		</div>

		<div>
			<c:forEach items="${product.images}" var="image">
				<div>
					<label for="pro_main">Product Main Image:</label> <br> <a
						href="../resources/product/images/${image.pro_main}">${image.pro_main}</a>

				</div>
				<div>
					<label for="pro_sumnale">Product Sumnale Image:</label> <br> <a
						href="../resources/product/images/${image.sumnale}">${image.sumnale}</a>

				</div>
				<div>
					<label for="pro_front">Product Front Image:</label> <br> <a
						href="../resources/product/images/${image.front}">${image.front}</a>

				</div>
				<div>
					<label for="pro_back">Product Back Image:</label> <br> <a
						href="../resources/product/images/${image.back}">${image.back}</a>

				</div>
				<div>
					<label for="pro_model">Product Model Image:</label> <br> <a
						href="../resources/product/images/${image.pro_model}">${image.pro_model}</a>

				</div>

				<div>
					<label for="pro_full">Product Full Image:</label> <br> <a
						href="../resources/product/images/${image.pro_full}">${image.pro_full}</a>

				</div>

				<div>
					<label for="pro_gif">Product Gif Image:</label> <br> <a
						href="../resources/product/images/${image.gif}">${image.gif}</a>

				</div>

				<div>
					<label for="pro_info">Product Info Image:</label> <br> <a
						href="../resources/product/images/${image.pro_info}">${image.pro_info}</a>

				</div>

				<div>
					<label for="pro_sizecut">Product SizeCut Image:</label> <br> <a
						href="../resources/product/images/${image.pro_sizecut}">${image.pro_sizecut}</a>

				</div>


			</c:forEach>

			<br>


			<div class="container">
				<form action="./productReview" method="post">
					<div class="form-group">
						<input type="text" value="${admin.admin_id}" name="id"> <input
							type="hidden" value="${product.pro_num}" name="pro_num">
						<input type="hidden" value="${admin.admin_name}" name="name">
						<input type="hidden" value="0" name="help"> 
						<label
							for="contents">Review</label> <a href="../review/reviewList"
							class="btn btn-info">후기게시판</a>
						<textarea class="form-control" rows="10" id="rev_contents"
							name="rev_contents"></textarea>
						<br>
						<div class="filebox">
							<label for="reviewImages">+ 사진추가</label> <input type="file"
								id="reviewImages"> <select name="star">
								<option value="5">★★★★★ 아주 좋아요</option>
								<option value="4">★★★★☆ 맘에 들어요</option>
								<option value="3">★★★☆☆ 보통이에요</option>
								<option value="2">★★☆☆☆ 그냥 그래요</option>
								<option value="1">★☆☆☆☆ 별로에요</option>
							</select>
							<button class="btn btn-primary" id="review_write">ⓥ 리뷰
								등록하기</button>
						</div>
					</div>
				</form>


			</div>



		</div>
		<a href="../qna/qnaWrite?pro_num=${product.pro_num}"
			class="btn btn-primary">QNA WRITE</a> <a
			href="./productUpdate?pro_num=${product.pro_num}"
			class="btn btn-primary">Update</a> <a
			href="./productList?pro_num=${product.pro_num}"
			class="btn btn-default">List</a>
	</div>

	<script type="text/javascript">
		/* 	$("#review_write").click(function() {
				
				$.post("./reviewList",{},function(data){
						
					});
				
				$.post("./fileDelete",{fnum:1}, function(data) {
				alert(data);

				
			}); */
			
			
			$("#insert-cart").click(function() {
				var id ="${member.id}";
				var pro_num = $(this).val();
				
				if (confirm("장바구니에 담으시겠습니까?")) {
					$.ajax({
						type		: "POST",
						url			: "../member/memberManage/cartAjaxInsert",
						data 		: {
							id		: id,
							pro_num	: pro_num
						},
						success	: function(d) {
							d = d.trim();
							if (d == 1) {
								if (confirm("장바구니에 담겼습니다. 장바구니로 이동하시겠습니까?")) {
									location.href = "../member/memberManage/cartList";
								}
							}else{
								alert("이미 담겨 있습니다.");
							}
						}
						});
					}
				});
	</script>


</body>
</html>