<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="order-title">
		<h3 style="height: 16px; font-size: 12px;">${h1 }</h3>
	</div>
	<div style="margin-top: 10px; width: 100%; min-height: 220px;">
		<table class="order-table">
			<thead>
				<tr>
					<th style="border-left: none;">주문일자 <br>[주문번호]</th>
					<th>이미지</th>
					<th>상품정보</th>
					<th>수량</th>
					<th>상품구매금액</th>
					<th>주문처리상태</th>
					<th style="border-right: none;">취소/교환/반품</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${orderList }" var="ord" varStatus="i">
				<tr>
					<td class="or-order_num" style="border-left: none;">
						${ord.order_date }<br>
						[<a href="#">${ord.order_num }</a>]<br>
						<img alt="" src="../../resources/images/btn_order_cancel2.gif" style="cursor: pointer;" class="or-cancel" title="${ord.order_num }">
					</td>
					<td class="or-image">
						<a href="#">
							<img alt="상품사진" src="../../resources/product/orders/c69a7cd57f808fa622d80fd6a2551b2c.jpg" width="80px" height="116px">
						</a>
					</td>
					<td class="or-pro_info" style="text-align: left; padding: 14px 10px 15px; vertical-align: sub;">
						<a href="#" style="font-weight: bold;">${ord.pro_info }</a> <br>
						<p>[ord.pro_option]</p>
					</td>
					<td class="or-pro_count">
						${ord.pro_count }
					</td>
					<td class="or-price">
					<fmt:formatNumber value="${ord.price }" type="number"></fmt:formatNumber>원</td>
					<td class="or-order_status">
						${ord.order_status }
					</td>
					<td class="or-order_result" style="border-right: none;">
					-
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<div class="or-pager">
		<a href="#" id="none-hover"> << </a>
		<a href="#" id="none-hover"> < </a>
		<c:forEach begin="1" end="8" var="p">
		<c:choose>
			<c:when test="${p eq 1 }">
				<a href="#" style="color: black;"> ${p } </a>
			</c:when>
			<c:otherwise>
				<a href="#"> ${p } </a>
			</c:otherwise>
		</c:choose>
		
		</c:forEach>
		<a href="#" id="none-hover"> > </a>
		<a href="#" id="none-hover"> >> </a>
	</div>