<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관심 상품</title>
<link href="../../resources/css/member.css" rel="stylesheet">
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<header></header>
<section style="background: purple;">
<div class="main">
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
<div class="left">
	<div class="left-menu">
		<ul class="left-list">
			<li style="height: 30px; font-size: 13px; font-weight: bold;">Community</li>
			<li ><a href="#">Notice</a></li> 
			<li ><a href="#">FAQ</a></li> 
			<li ><a href="#">Q&amp;A</a></li> 
			<li ><a href="#">Photo review</a></li> 
			<li ><a href="#">Review</a></li> 
		</ul>
		<ul class="left-list">
			<li style="height: 30px;"><a href="#" style="color: black; font-size: 13px; font-weight: bold;">Event</a></li>
		</ul>
		<ul class="left-list">
			<li style="height: 30px;"><a href="#" style="color: black; font-size: 13px; font-weight: bold;">My page</a></li>
			<c:if test="${!empty member }">
			<li ><a href="../memberUpdate">My info</a></li></c:if>
			<li ><a href="orderMyList">Order</a></li>
			<li ><a href="#" style="color: black;">Wish list</a></li>
			<li ><a href="#">Mileage</a></li>
			<li ><a href="#">My board</a></li>
			<li ><a href="#">Delivery</a></li>
		</ul>
	</div>
</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
<div class="right">
	<h1 class="right-h1" style="color: orange; font-weight: bold;">관심상품</h1>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div style="background: orange; width: 100%; min-height: 300px;">
		<table class="or-table">
			<thead>
				<tr>
					<th class="ws-checkBox">
						<input type="checkbox" size="13px">
					</th>
					<th class="or-image">이미지
<!-- 						<img alt="위시리스트 사진" src="../../resources/product/orders/c69a7cd57f808fa622d80fd6a2551b2c.jpg" height="116px" width="80px"> -->
					</th>
					<th class="">상품정보</th>
					<th>판매가</th>
					<th>적립금</th>
					<th>배송구분</th>
					<th>배송비</th>
					<th>합계</th>
					<th>선택</th>
				</tr>
			</thead>
		</table>
		
	</div>
</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
</div>
</section>
<footer></footer>
<script type="text/javascript">
var check = false;
$("#checkAll").click(function() {
	if (check == false) {
	$(".wishCheck").prop("checked","true");
	check = true;
	}else{
		$(".wishCheck").prop("checked","");
		check= false;
	}
});

$(".wishCheck").click(function() {
	var all = 0;
	for (var i = 0; i < ${wishList.size()}; i++) {
		if ($(".wish"+i).prop("checked") == true) {
			all++;
		}
	}
	if (all == ${wishList.size()}) {
		$("#checkAll").prop("checked","true");
		check = true;
	}else{
		
		$("#checkAll").prop("checked","");
		check = false;
		console.log(check);
	}
});

$("#wishDel").click(function() {
	
jQuery.ajaxSettings.traditional = true;
	
		for (var i = 0; i < ${wishList.size()}; i++) {
			
			var num = new Array();
			var index = 0;
			for (var i = 0; i < ${wishList.size()}; i++) {
				if ($(".wish"+i).prop("checked") == true) {
				num[index] = $(".wish"+i).val();
				index++;
					}
				} 
			
			}
		
		$.ajax({
			type	: "POST",
			url		: "wishListDelete",
			data	: {
				id : "${member.id}",
				num : num
				
			},
			success	: function(data) {
				if (data == 1) {
					location.reload();
					}else{
						alert("다시 시도하세요.")
					}
			}
		});
	
});
</script>
</body>
</html>