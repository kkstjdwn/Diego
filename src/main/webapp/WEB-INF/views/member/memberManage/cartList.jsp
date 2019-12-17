<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<link href="../../resources/css/member.css" rel="stylesheet">
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<header></header>
<section>
<div class="main" style="background: purple; min-height: 1325px;">
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
			<li ><a href="wishListSelectList">Wish list</a></li>
			<li ><a href="#">Mileage</a></li>
			<li ><a href="#">My board</a></li>
			<li ><a href="#">Delivery</a></li>
		</ul>
	</div>
</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
<div class="right" style="background: orange;">
	<h1 class="right-h1" style="color: #353535;">장바구니</h1>
	<div class="cart-mem-info" style="background: orange;">
		<div class="cart-info-h1">
			<p style="color: #404040; font-size: 12px; line-height: 71px; font-weight: bold;">혜택정보</p>
		</div>
		<div class="cart-info-mem">
			<p><strong>${member.name }</strong>님은, [${member.mem_rank }] 회원이십니다. </p>
			<p style="margin-bottom: 10px;"><strong><fmt:formatNumber type="number">${up }</fmt:formatNumber></strong>원 이상 구매시 <strong>${x }</strong>% 추가적립 받으실수 있습니다. </p>
			<hr>
			<p style="margin-top: 10px;"><span style="margin-right: 30px;">가용 적립금 : <strong><fmt:formatNumber type="number">${point.total_point }</fmt:formatNumber></strong>원</span> <span>쿠폰 : <strong>${coupon.size() }</strong>&nbsp;개 </span> </p>
		</div>
	</div>
	<div class="cart-ajax" style="background: maroon;">
		<div class="cart-ajax-bar">
			<ul style="border-bottom:1px solid #cbcdce; width: 100%; height: 42px;">
			<li><button id="all-list" class="btn-list-sel">국내배송상품(${cartList.size()})</button></li>
			</ul>
		</div>
		<div class="cart-ajax-table">
			<div class="cart-table-title">
				<p>일반상품(${cartList.size()})</p>
			</div>
			<div style="width: 100%; text-align: center;">
				<table class="cart-table">
					<thead>
						<tr>
							<th class="cart-checkBox" style="border-left: 0;"><input type="checkbox" id="checkAll" size="13px"></th>
							<th class="cart-image">이미지</th>
							<th class="cart-pro_info">상품정보</th>
							<th class="cart-price">판매가</th>
							<th class="cart-count">수량</th>
							<th class="cart-point">적립금</th>
							<th class="cart-deli">배송구분</th>
							<th class="cart-deli-cost">배송비</th>
							<th class="cart-sum">합계</th>
							<th class="cart-btn" style="border-right: 0;">선택</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cartList }" var="cart" varStatus="c">
							<tr>
								<td class="cart-checkBox">
									<input type="checkbox" class="cartCheck cart${i.index }" value="${cart.cart_num }">
								</td>
								<td>
									<img alt="장바구니 사진" src="../../resources/cart/${cart.pro_image }">
								</td>
								<td>
								</td>
							
							
							</tr>
						
						</c:forEach>
					
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
</div>
</section>
<footer></footer>
</body>
</html>