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
			<label for="pro_num">Product Number:</label> 
			<b>${product.pro_num} </b>
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
		
		<div  class="form-group">
			<h2>${totalCount}개 리뷰 평점 : ${product.totalStar}</h2>	
		</div>

		<div>
			<c:forEach items="${product.images}" var="image">
				<div>
					<label for="pro_main">Product Main Image:</label> <br> 
					<a href="../resources/product/images/${image.pro_main}">${image.pro_main}</a>

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

			<!-- 리뷰작성폼 -->
			<div class="container">
				<form action="./productReview" method="post" enctype="multipart/form-data"> 
					
					<div class="form-group">
						<input type="text" value="${admin.admin_id}" name="id" readonly="readonly" id="review_id">
						<input type="hidden" value="${product.pro_num}" name="pro_num" id="review_pronum">
						<input type="hidden" value="${admin.admin_name}" name="name" id="review_name">
						<input type="hidden" value="0" name="help" id="review_help"> 
						<label
							for="contents">Review</label> 
							<a href="../review/reviewList" class="btn btn-info">후기게시판</a>
						<textarea class="form-control" rows="10" id="rev_contents"name="rev_contents" ></textarea>
						<br>
						
						<div id="filebox">
							<div class="form-group" title="parent" >
									<label for="reviewImages">+ 사진추가</label> 
									<div class="col-sm-9">
										<input type="file" id="reviewImages" name="file"> 
									</div>
									<div class="col-sm-1">
										<input type="button" class="form-control btn btn-danger del_file" value="삭제">
									</div>
							</div>						
						</div>
						
						<input type="button" value="add file" class="btn btn-primary" id="add_file">
						
						<div class="container">
							<select name="star" id="review_star">
								<option value="5">★★★★★  아주 좋아요</option>
								<option value="4">★★★★☆  맘에 들어요</option>
								<option value="3">★★★☆☆  보통이에요</option>
								<option value="2">★★☆☆☆  그냥 그래요</option>
								<option value="1">★☆☆☆☆  별로에요</option>
							</select>
						</div>
							<div>
								<button class="btn btn-primary rwrite" id="review_write">ⓥ 리뷰 등록하기</button>
							</div>
					</div>
				
		</form>


			</div>
			
			<br>
			<hr>
			
		<!--선택된상품의 리뷰리스트 -->
		<div class="reviewList">
					<h1><b>추천순 리뷰(<span style="color: red">${totalCount}</span>)</b></h1>
					<hr>
					<br>
					
					
		
				<c:forEach items="${reviewList}" var="rev">
					<input type="hidden" id="rev_num" value="${rev.rev_num }" >
							
					<p style="color: blue">${rev.name}</p>
					<p>${rev.rev_num }</p>
					<p><c:forEach begin="0" end="${rev.star-1}">★</c:forEach>
					<c:choose>
						<c:when test="${rev.star eq 5}">아주 좋아요</c:when> 
						<c:when test="${rev.star eq 4}">맘에 들어요</c:when> 
						<c:when test="${rev.star eq 3}">보통이에요</c:when>
						<c:when test="${rev.star eq 2}">그냥 그래요</c:when>
						<c:when test="${rev.star eq 1}">별로에요</c:when>   
					</c:choose>
					</p>
					<p>${rev.rev_date }</p>
					<p>${rev.rev_contents}</p>
				<c:forEach items="${rev.files }" var="ref">
					<p><img src="../resources/product/photoReview/${ref.fname }" style="width: 100px; height: 100px;"></p>
					
				</c:forEach>
					
				
<%-- 					<p>리뷰도움: ${rev.help}</p> --%>
<!-- 					<input type="button" class="btn-primary" value="좋아요" > -->
<!-- 					<input type="button" class="btn-danger" value="싫어요" > -->
					
					<button type="button"  class="btn btn-warning rdel">삭제</button>
					
				<a href="./reviewUpdate?rev_num=${rev.rev_num}" class="btn btn-info rupdate">수정</a>
				<hr>
				</c:forEach>
			
						
			
			<div >
				<ul class="pagination">
					<c:if test="${pager.curBlock gt 1}">
							<li><span id="${pager.startNum-1}" class="list">이전</span></li>
					</c:if>
					<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
							<li><span id="${i}" class="list">${i}</span></li>
					</c:forEach>
					<c:if test="${pager.curBlock lt pager.totalBlock}">
							<li><span id="${pager.lastNum+1}" class="list">다음</span></li>
					</c:if>
				</ul>
			</div>
	
		</div>
					
	</div>
		<a href="../qna/qnaWrite?pro_num=${product.pro_num}"
			class="btn btn-primary">QNA WRITE</a>
		<a
			href="./productUpdate?pro_num=${product.pro_num}"
			class="btn btn-primary">Update</a>
		 <a
			href="./productList?pro_num=${product.pro_num}"
			class="btn btn-default">List</a>
	</div>

	<script type="text/javascript">
			
		var filebox= $('#filebox').html();
		$('#filebox').empty();
		var count =0;
		var index=0;
		
		$('#add_file').click(function() {
			if(count<4){
			$('#filebox').append(filebox);
			count++;
			}else{
				alert("리뷰 사진은 최대  4장까지 첨부가능합니다 ");
				
			}
			
		});
		
		$("#filebox").on("click", ".del_file",function(){
			
			$(this).parent().parent().remove();
			count--;
		});
		
		//페이징리스트
		$(".list").click(function() {
			$("#curPage").val($(this).attr("id"));
			$("#frm").submit();
		});

//----------------------------------------------------------------------------------------------------------------------------------		
		//리뷰삭제
		$(".rdel").click(function() {
			if(confirm("삭제하시겠습니까?")){
			$.ajax({
				type : "GET",
				url   :"reviewDelete",
				data : {
					
				rev_num : $("#rev_num").val()
					
				},
				success : function(data) {
					data= data.trim();
					if (data==1) {
						alert("저장된 리뷰가 완벽히 삭제되었습니다.")
						location.reload();
					}else{
						alert("저장된 리뷰가 삭제되지 않았습니다.")
						
					}
						
				}
				
				
			});
			}
		});
	
//----------------------------------------------------------------------------------------------------------------------------------
		//리뷰작성
// 		$(".rwrite").click(function() {
	
// 			if(confirm("리뷰를 저장하시겠습니까?")){
				
// 				$.ajax({
// 					type: "POST", 
// 					url: "productReview", 
// 					data: { 
// 						id : $("#review_id").val(),
// 						pro_num: $("#review_pronum").val(),
// 						star : $("#review_star").val(),
// 						name: $("#review_name").val(),
// 						help : $("#review_help").val(),
// 						rev_contents : $("#rev_contents").val()
// 					},  		
				
// 					success : function(data) {
// 						data= data.trim();
// 						if (data==1) {
// 							alert("저장된 리뷰가 완벽히 삭제되었습니다.")
// 							location.reload();
// 						}else{
// 							alert("저장된 리뷰가 삭제되지 않았습니다.")
							
// 						}
							
// 					}
					
					
					
// 				});
				
// 			}
			
// 		});
		
		
//----------------------------------------------------------------------------------------------------------------------------------	



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