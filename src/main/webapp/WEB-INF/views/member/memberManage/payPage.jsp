<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 추가하기</title>
<link href="../../resources/css/member.css" rel="stylesheet">
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<body>
<c:import url="../../layout/header.jsp"/>
<section>
<div class="main" style="min-height: 1325px;">
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
<div class="left">
	<div class="left-menu">
		<ul class="left-list">
			<li style="height: 30px; font-size: 13px; font-weight: bold; color: black;">Community</li>
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
			<li ><a href="pointList">Mileage</a></li>
			<li ><a href="#">My board</a></li>
			<li ><a href="#">Delivery</a></li>
		</ul>
	</div>
</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
<div class="right">
	<h1 class="right-h1" style="color: #353535;">주문서 작성</h1>
		<div class="cart-mem-info">
		<div class="cart-info-h1">
			<p style="color: #404040; font-size: 12px; line-height: 71px; font-weight: bold;">혜택정보</p>
		</div>
		<div class="cart-info-mem">
			<p><strong>${member.name }</strong>님은, [${member.mem_rank }] 회원이십니다. </p>
			<p style="margin-bottom: 10px;">
				<strong><fmt:formatNumber type="number">${up }</fmt:formatNumber></strong>원 이상 구매시 <strong>${x }</strong>% 추가적립 받으실수 있습니다. </p>
			<hr>
			<p style="margin-top: 10px;">
				<span style="margin-right: 30px;">가용 적립금 : <strong><fmt:formatNumber type="number">${point.total_point }</fmt:formatNumber></strong>원 &nbsp;</span>
				<span>쿠폰 : <strong id="cart-coupon-ajax" onmousedown="viewCoup(this)" onmouseup="viewCount(this)">${coupon.size() }</strong>&nbsp;개</span> </p>
				<span id="cart-coupon-view">
				<c:forEach items="${coupon }" var="coup" varStatus="c">
					${c.count }. ${coup.coup_name } (${coup.discount }%)<br>
				</c:forEach>
				</span>
			<br>
		</div>
		</div>
	<div class="cart-ajax">
		<div class="cart-ajax-bar">
			<ul style="border-bottom:1px solid #cbcdce; width: 100%; height: 42px;">
			<li><button id="all-list" class="btn-list-sel">국내배송상품(${cartList.size()})</button></li>
			</ul>
		</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
		<div class="cart-ajax-table">
			<div class="cart-table-title">
				<p>일반상품(${cartList.size()})</p>
			</div>
			<div class="cart-table-div" style="width: 100%; text-align: center;">
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
							<th class="cart-btn-group" style="border-right: 0;">선택</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${cartList }" var="cart" varStatus="i">
							<tr>
								<td class="cart-checkBox" style="border-left:0;">
									<input type="checkbox" class="cartCheck cart${i.index }" value="${cart.cart_num }" title="${i.index }" name="${cart.pro_num }">
								</td>
								<td class="cart-image">
									<img alt="장바구니 사진" src="../../resources/product/images/${cart.pro_image }" height="116px" width="80px">
								</td>
								<td class="cart-pro_info" style="text-align: left;">
									<a href="#" style="font-weight: bold; color: black; text-decoration: none; margin-left: 10px;">${cart.pro_info } </a>
								</td>
								<td class="cart-price">
									<input type="hidden" class="cart-pro_price${i.index }" value="${cart.pro_price }">
									<strong><fmt:formatNumber value="${cart.pro_price }" type="number"></fmt:formatNumber>원</strong>
								</td>
								<td class="cart-count">
									<p style="position: relative;">
									<input type="number" min="1" class="cart-pro_count${i.index } count-check" value="1" style="height: 21px; width: 29px; border-radius: 3px; line-height: 21px; border: 1px solid #eaeaea;">
									</p>
								</td>
								<td class="cart-point" >
									<span style="background: #b88cc5; color: white; border: 0; border-radius: 3px; font-size: 8px; height: 12px;">적</span>
									<fmt:formatNumber value="${ps * 0.01 * cart.pro_price}" type="number"></fmt:formatNumber>원
								</td>
								<td class="cart-deli">${cart.delivery }</td>
								<td class="cart-deli-cost">${cart.delivery_cost }</td>
								<td class="cart-sum">
									<strong><fmt:formatNumber value="${cart.pro_price }" type="number"></fmt:formatNumber>원</strong>
								</td>
								<td class="cart-btn-group" style="border-right: 0;">
									<button type="button" class="cart-btn cart-order-btn" value="${cart.pro_num }" title="X">주문하기</button><br>
									<button type="button" class="cart-btn cart-wish-btn" value="${cart.pro_num }">관심상품등록</button><br>
									<button type="button" class="cart-btn cart-del-btn" value="${cart.cart_num }">삭제</button><br>
								</td>
							
							
							</tr>
						
						</c:forEach>
					</tbody>
				</table>
				<h1 style="margin:20px 20px 0; text-align: center; font-size: 13px; color: #555555;">상품구매금액 <span class="cart-sum-sp" style="color: black;"></span>원 + 배송비 0 (무료) = 합계 : <strong style="font-size: 17px; color: black;"><span class="cart-sum-sp" ></span></strong>원 </h1>
				<div class="cart-warning">
					<p style="margin-left: 33px; padding: 8px 0; color: #f76560">
					<span style="border: 1px solid #eaeaea; color: red; padding: 1px 4px; font-size: 11px; border-radius: 3px;">!</span>&nbsp;상품의 옵션 및 수량 변경은 상품상세 또는 장바구니에서 가능합니다.</p>
				</div>
				
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
			<br><p style="color: black; font-size: 12px; margin-left: 20px; font-weight: bold; text-align: left;">배송정보</p><br>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
				<div>
					<table class="info-table">
						<tr>
							<th>받으시는분<img alt="필수" src="../../resources/images/ico_required.gif"></th>
							<td><input type="text" name="name" placeholder="Enter name" value="${member.name }"></td>
						</tr>
						<tr>
							<th>주소</th>
							<td><input id="pn" name="address_pn" readonly="readonly" style="width: 50px;" value="${member.address_pn }"> <img alt="우편" src="../../resources/images/btn_zipcode.gif" style="vertical-align: middle; cursor: pointer;" onclick="postNum()">
							<br><input id="ba" name="address_ba" readonly="readonly" style="margin-top: 5px; width: 280px;" value="${member.address_ba }"><span> 기본주소</span>
							<br><input id="da" name="address_da" style="margin-top: 5px; width: 280px;" value="${member.address_da }"><span> 상세주소</span>
							</td>
						</tr>
						<tr>
							<th>휴대전화<img alt="필수" src="../../resources/images/ico_required.gif"></th>
							<td>
							<select class="phone" style="height: 24px; width: 60px; vertical-align: middle; border: 1px solid #eaeaea;">
										   	<option class="opt">010</option>
									      	<option class="opt">011</option>
									      	<option class="opt">016</option>
									      	<option class="opt">017</option>
									      	<option class="opt">018</option>
									      	<option class="opt">019</option>
									      </select>
									      <span class="phone">-</span>
									      <input id="phone" class="phone" type="text" maxlength="4" value="${p2 }" required="required">
									      <span class="phone">-</span>
									      <input id="phone" class="phone" type="text" maxlength="4" value="${p3 }" required="required">
									      <input type="hidden" name="phone" id="ph-number">
							</td>
						</tr>
						<tr>
							<th>이메일<img alt="필수" src="../../resources/images/ico_required.gif"></th>
							<td><input type="text" name="email" value="${member.email }" required="required"></td>
						</tr>
						<tr>
							<th>배송 메시지</th>
							<td>
								<select style="vertical-align: middle; border: 1px solid #eaeaea; height: 24px; width: 280px;">
									<option>부재시 경비실에 맡겨주세요.</option>
									<option>도착 10분전에 연락해주세요.</option>
									<option>문앞에 놔두고 가주세요.</option>
									<option>배송 출발 전 연락해주세요.</option>
								</select>
							</td>
						</tr>
					</table>
				</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->			
			<br><p style="color: black; font-size: 12px; margin-left: 20px; font-weight: bold; text-align: left;">결제 예정 금액</p>
				<div class="cart-check-view" style="display: block;">
					<table class="cart-view-table">
						<thead>
							<tr>
								<th class="cart-view-pro" style="border-left: 0;">총 상품금액</th>
								<th class="cart-view-deli">총 할인금액</th>
								<th class="cart-view-price" style="border-right: 0;">총 결제예정금액</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="cart-view-pro" style="border-left: 0;"><span class="cart-view-sp">0</span>원</td>
								<td class="cart-view-deli">+ 0원</td>
								<td class="cart-view-price" style="border-right: 0;"><span class="cart-view-sp2">0</span>원</td>
							</tr>
						</tbody>
					</table>
					<table class="info-table">
						<tr>
							<th>적립금</th>
							<td> <input type="number" min="0" width="200px" style="text-align: right;">원 <span>(총 사용가능 적립금 : <span style="color: #f76560">${point.total_point }</span>원)</span><br>
								<p>- 적립금은 최소 1,000 이상일 때 결제가 가능합니다.</p>
								<p>- 최대 사용금액은 제한이 없습니다.</p>
								<p>- 적립금으로만 결제할 경우, 결제금액이 0으로 보여지는 것은 정상이며 [결제하기] 버튼을 누르면 주문이 완료됩니다.</p>
							</td>
						</tr>
					</table>
				</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
			</div>
		</div>
	<div class="cart-using-info">
		<table class="cart-using-table">
			<thead>
				<tr>
					<th>무이자 할부 이용안내</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="height: 60px;">
						<p>- 무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체 주문 상품 금액에 대해 무이자할부가 적용되지 않습니다.</p>
						<p>- 무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기 바랍니다.</p>
					</td>
				</tr>
			</tbody>
		</table>
		<br>
	</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div class="kakao-pay-div">
	<br><p style="color: black; font-size: 12px; margin-left: 20px; font-weight: bold; text-align: left;">결제 수단</p>
	<table class="cart-view-table">
		<thead>
			<tr>
				<th>
					<input type="radio" checked="checked">&nbsp;카카오페이
				</th>
				<th>
					카카오페이(간편결제) 최종결제 금액
				</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<p style="margin-left: 33px; padding: 8px 0; font-size: 12px;">
						<span style="border: 1px solid #eaeaea; color: red; padding: 1px 4px; font-size: 11px; border-radius: 3px;">!</span>
						&nbsp;휴대폰에 설치된 카카오톡 앱에서 비밀번호 입력만으로 빠르고 안전하게 결제가 가능한 서비스 입니다.</p>
					<p style="margin-left: 33px; padding: 8px 0; font-size: 12px;">
						<span style="border: 1px solid #eaeaea; color: red; padding: 1px 4px; font-size: 11px; border-radius: 3px;">!</span>
						&nbsp;안드로이드의 경우 구글 플레이, 아이폰의 경우 앱 스토어에서 카카오톡 앱을 설치 한 후, 최초 1회 카드 및 계좌 정보를 등록하셔야 사용 가능합니다.</p>
					<p style="margin-left: 33px; padding: 8px 0; font-size: 12px;">
						<span style="border: 1px solid #eaeaea; color: red; padding: 1px 4px; font-size: 11px; border-radius: 3px;">!</span>
						&nbsp;인터넷 익스플로러의 경우 8 이상에서만 결제 가능합니다.</p>
					<p style="margin-left: 33px; padding: 8px 0; font-size: 12px;">
						<span style="border: 1px solid #eaeaea; color: red; padding: 1px 4px; font-size: 11px; border-radius: 3px;">!</span>
						&nbsp;BC카드 중 신한, 하나, 국민카드는 결제가 불가능합니다.</p>
				</td>
				<td style="font-size: 12px;">
					<p style="text-align: right; font-size: 20px; font-weight: bold; color: black;">총결제금액 : 00000원</p>
					<button id="kakao-pay-btn">결제하기</button><br>
					총 적립예정 금액 00000원<br>
				</td>
			</tr>
		</tbody>
	</table>
	</div>

<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div class="cart-using-info">
		<table class="cart-using-table">
			<thead>
				<tr>
					<th>이용안내</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<br>
						<h4>WindowXP 서비스팩2를 설치하신후 결제가 정상적인 단계로 처리되지 않는경우, 아래의 절차에 따라 해결하시기 바랍니다.내</h4>
						<br>
						<p><span class="cart-using-sp">1</span>&nbsp;안심클릭 결제모듈이 설치되지 않은 경우 ActiveX 수동설치</p>
						<p><span class="cart-using-sp">2</span>&nbsp;Service Pack 2에 대한 Microsoft사의 상세안내</p>
						<br>
						<h4>아래의 쇼핑몰일 경우에는 모든 브라우저 사용이 가능합니다.</h4>
						<br>
						<p><span class="cart-using-sp">1</span>&nbsp;KG이니시스, KCP, LG U+를 사용하는 쇼핑몰일 경우</p>
						<p><span class="cart-using-sp">2</span>&nbsp;결제가능브라우저 : 크롬,파이어폭스,사파리,오페라 브라우저에서 결제 가능</p>
						<p style="margin-left: 20px;">(단, window os 사용자에 한하며 리눅스/mac os 사용자는 사용불가)</p>
						<p><span class="cart-using-sp">3</span>&nbsp;최초 결제 시도시에는 플러그인을 추가 설치 후 반드시 브라우저 종료 후 재시작해야만 결제가 가능합니다.</p>
						<p style="margin-left: 20px;">(무통장, 휴대폰결제 포함)</p>
						<br>
						<h4>세금계산서 발행 안내</h4>
						<br>
						<p><span class="cart-using-sp">1</span>&nbsp;부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달 10일까지만 요청하실 수 있습니다.</p>
						<p><span class="cart-using-sp">2</span>&nbsp;세금계산서는 사업자만 신청하실 수 있습니다.</p>
						<p><span class="cart-using-sp">3</span>&nbsp;배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</p>
						<p><span class="cart-using-sp">4</span>&nbsp;[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로 사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</p>
						<p><span class="cart-using-sp">5</span>&nbsp;[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수 있습니다.</p>
						<br>
						<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경안내</h4>
						<br>
						<p><span class="cart-using-sp">1</span>&nbsp;변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신 주문에 대해서는 세금계산서 발행이 불가하며</p>
						<p><span class="cart-using-sp">2</span>&nbsp;신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법 시행령 57조)</p>
						<p><span class="cart-using-sp">3</span>&nbsp;상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만 세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</p>
						<br>
						<h4>현금영수증 이용안내</h4>
						<br>
						<p><span class="cart-using-sp">1</span>&nbsp;현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체, 에스크로, 예치금)에 대해 발행이 됩니다.</p>
						<p><span class="cart-using-sp">2</span>&nbsp;현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지 않습니다.</p>
						<p><span class="cart-using-sp">3</span>&nbsp;발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을 해야 합니다.</p>
						<p><span class="cart-using-sp">4</span>&nbsp;현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에 따라 변경 될 수 있습니다.)</p>
						<p><span class="cart-using-sp">5</span>&nbsp;현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</p>
					</td>
				</tr>
			</tbody>
			
		
		</table>
	</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	</div>
</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
</div>


</section>	
<c:import url="../../layout/footer.jsp"/>	
<script type="text/javascript">
	
	var orderPass = true;

	
	function getSum() {
		var price = ${proVO.pro_price}*1;
		var total = ${point.total_point}*1;
		var point = $("#point_value").val()*1;
		if (total < point) {
			orderPass = false;
			alert("안통해!");
			$("#point_value").prop("value","0");
			point = 0;
			var sum = price * $("#pro_count").val() * $("#coupon").val() - point;
			$("#order_sum").text(sum);
			$("#point_value").focus();
		}else{
			orderPass = true;
		var sum = price * $("#pro_count").val() * $("#coupon").val() - point;
		$("#order_sum").text(sum);
		}
	}
	
$(".value-div").change(function() {
	getSum();
});

$("#count-up").click(function() {
	$("#pro_count").prop("value",$("#pro_count").val()*1+1);
	getSum();
});

$("#count-down").click(function() {
	if ($("#pro_count").val() == 1) {
		alert("최소 주문수량은 1개 입니다.");
	}else{
	$("#pro_count").prop("value",$("#pro_count").val()*1-1);
	getSum();		
	}
	
});

$("#coupon").change(function() {
	$(".opt").each(function() {
		if ($(this).prop("selected")) {
			$("#param").prop("value",$(this).prop("title"));
		}
	});
});

$("#order-insert").click(function() {
	if (orderPass) {
		var id = "${member.id}";
		var pro_num	= ${proVO.pro_num};
		var pro_info = "${proVO.pro_name}";
		var price = ${proVO.pro_price};
		var coup_num = $("#param").val();
		var total_point = ${point.total_point};
		$.ajax({
			type	: "POST",
			url		: "orderInsertAjax",
			data	: {
				id : id,
				pro_num		: pro_num,
				pro_info 	: pro_info,
				pro_count	: $("#pro_count").val(),
				price		: price,
				point_value	: $("#point_value").val(),
				coup_num	: coup_num,
				total_point : total_point
				
			},
			success	: function(data) {
				data = data.trim();
				if (data == "1") {
					$(".wish-order-btn",opener.document).prop("title","O");
					alert("주문 성공");
					self.close();
				}else{
					$(".wish-order-btn",opener.document).prop("title","X");
					alert("주문 실패");
					self.close();
				}
			}
		});
	}else{
		alert("주문 금액을 다시 확인해 주세요");
	}
});
	
	$("#point_value").change(function() {
		if ($(this).val()==0) {
			$(this).prop("value",0);
		}
	});
  
	
</script>
</body>
</html>
