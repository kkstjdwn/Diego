<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	font-size: 12px;
	color: #555555;
}

.opt-div p {
	margin-left: 16px;
	margin-bottom: 7px;
	height: 18px;
	line-height: 18px;
}

.value-div p {
	
}
</style>
</head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<body>
	<div class="open-main-div"
		style="background: #2e2e2e; height: 45px; width: 100%; text-align: left;">
		<h3
			style="color: white; font-weight: bold; line-height: 45px; font-size: 14px; margin-left: 20px;">옵션
			선택</h3>
	</div>
	<div
		style="width: 550px; min-height: 400px; overflow: hidden; margin: 20px 25px 0 25px;">
		<h3 style="color: #555555;">${proVO.pro_name }</h3>
		<br>
		<hr>
		<br>
		<div
			style="width: 20%; float: left;height: 200px;">
			<img
				src="../../resources/product/wishList/592309708dc1472cb3d6d0dfedc0fb9d.gif"
				height="82px" width="82px" style="margin: 20px 0 0 20px;">
		</div>
		<div class="opt-div"
			style="width: 80%; float: right; height: 200px;">
			<div style="width: 30%; float: left; margin-top: 20px;">
				<p>OPTION</p>
				<p>가격</p>
				<p>주문수량</p>
				<p>사용가능 포인트</p>
				<p>사용 예정 포인트</p>
				<p>보유 쿠폰 목록</p>
			</div>

			<div class="value-div"
				style="width: 70%; float: left; margin-top: 20px;">
				<p>
					<select style="width: 85%;">
						<option>A TYPE</option>
						<option>B TYPE</option>
					</select>
				</p>
				<p>${proVO.pro_price }원</p>
				<p>
					<select style="width: 85%;">
						<c:forEach begin="1" end="10" varStatus="i">
							<option>${i.count }</option>
						</c:forEach>
					</select>
				</p>
				<p>${point.total_point }</p>
				<p>
					<input type="text" style="width: 245px;">
				</p>
				<p>
					<select style="width: 85%;">
						<option value="1">사용할 쿠폰을 선택하세요</option>
						<c:forEach items="${couponList }" var="coupon" varStatus="i">
							<option value="${coupon.sales_value}" title="${coupon.coup_num }"
								class="opt">${coupon.coup_name }(${coupon.discount }%)</option>
						</c:forEach>
					</select>
				</p>
			</div>
		</div>
		
		<div
			style="width: 100%; margin: 10px 0; clear:both; height:24px; border-top: 1px solid #eaeaea; border-bottom: 1px solid #eaeaea;">
			<p style="font-size: 11px; margin-left: 18px;">
				총 주문 금액<span style="font-size: 9px;"> (수량)</span> : <span
					style="color: #008bcc; font-size: 14px; font-weight: bold;">${proVO.pro_price }원</span><span
					style="color: #008bcc; font-size: 9px;">(수량)</span>
			</p>
		</div>
		<div
			style="width: 100%; clear: both; min-height: 100px; overflow: hidden; text-align: center; margin-top: 10px;">

			<button
				style="width: 100px; height: 30px; background: #555555; color: white; border: 1px solid #555555; margin-top: 20px;">주문하기</button>
			<button
				style="width: 100px; height: 30px; color: #555555; border: 1px solid #555555; margin-top: 20px; background: white;">장바구니담기</button>
		</div>
	</div>
</body>
</html>