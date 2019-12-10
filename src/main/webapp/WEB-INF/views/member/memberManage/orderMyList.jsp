<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 주문 목록</title>
<link href="../../resources/css/member.css" rel="stylesheet">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<c:import url="../../common/calendar.jsp"/>
<link>
</head>
<body>
<header></header>
<section style="width: 100%; height: 1200px;">
<div class="main" style="background-color: orange;">
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
<div class="left" style="height: 985px;">
	<div class="left-menu">
		<ul class="left-list">
			<li style="height: 30px; font-size: 13px;">Community</li>
			<li ><a href="#">Notice</a></li> 
			<li ><a href="#">FAQ</a></li> 
			<li ><a href="#">Q&amp;A</a></li> 
			<li ><a href="#">Photo review</a></li> 
			<li ><a href="#">Review</a></li> 
		</ul>
		<ul class="left-list">
			<li style="height: 30px;"><a href="#" style="color: black; font-size: 13px;">Event</a></li>
		</ul>
		<ul class="left-list">
			<li style="height: 30px;"><a href="#" style="color: black; font-size: 13px;">My page</a></li>
			<c:if test="${!empty member }">
			<li ><a href="#">My info</a></li></c:if>
			<li ><a href="#">Order</a></li>
			<li ><a href="#">Wish list</a></li>
			<li ><a href="#">Mileage</a></li>
			<li ><a href="#">My board</a></li>
			<li ><a href="#">Delivery</a></li>
		</ul>
	</div>
</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
<div class="right" style="height: 985px; background-color: purple;">
	<h1 class="right-h1" style="color: white;">주문 조회</h1>
	<div class="ajax-bar">
	<button class="btn-list-sel">주문내역조회</button>
	<button class="btn-list">취소/반품/교환 내역</button>
	</div>
	<div class="cal-bar">
	<div class="search-div">
	<form action="" method="get" class="search-form">
		<div>
			<select id="order_status" name="order_status">
				<option value="AL" selected="selected">전체 주문처리상태</option>
				<option value="WP">입금전</option>
				<option value="WD">배송준비중</option>
				<option value="DV">배송중</option>
				<option value="DC">배송완료</option>
				<option value="OC">취소</option>
				<option value="OX">교환</option>
				<option value="OR">반품</option>
			</select>
		</div>
		<div style="margin: 0 10px 0 0;">
			<button type="button" class="btn-search" value="0">오늘</button>
			<button type="button" class="btn-search" value="604800000">1주일</button>
			<button type="button" class="btn-search" value="3592000‬000‬">1개월</button>
			<button type="button" class="btn-search" value="7776000000">3개월</button>
			<button type="button" class="btn-search" value="15552000000">6개월</button>
		</div>
		<div>
			<input type="text" class="ip-cal" id="cal-left" readonly="readonly"> <span>&nbsp;~&nbsp;</span>
			<input type="text" class="ip-cal" id="cal-right" readonly="readonly">
		</div>
		<div>
			<button>조회</button>
		</div>
	</form>
	</div>
	<div style="height: 36px; margin-top: 10px; width: 100%; font-size: 11px; color: #939393; line-height: 1.5;">
	<ul>
		<li>&nbsp;기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</li>
		<li>&nbsp;주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
	</ul>
	</div>
	</div>



</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
</section>


<footer></footer>
<script type="text/javascript">
	$(document).ready(function() {
	var today = new Date().toISOString().substr(0, 10).replace('T', ' ');
 	$("#cal-right").prop("value", today);
 	today = new Date();
	var day = 1000*60*60*24*10;
	day = today.getTime() - day;
	today.setTime(day);
	today = new Date(today).toISOString().substr(0, 10).replace('T', ' ');
 	$("#cal-left").prop("value", today);
	});
	
	
 	$(".btn-search").on("click", function() {
 		today = new Date();
 		
 		var tm = $(this).val();
 		
 		tm = today.getTime()-(tm);
 		alert(today.getTime());
 		alert(tm);
 		today.setTime(tm);
 		
 		today = new Date(today).toISOString().substr(0, 10).replace('T', ' ');
 		;
 	 	$("#cal-left").prop("value", today);
	});
	
	$(".orderDel").click(function() {
		if (confirm("취소하시겠습니까?")) {
			$.ajax({
				type	: "POST",
				url 	: "orderCancel",
				data	: {
					order_num	: $(this).val(),
					id 			: "${member.id}"
				},
				success : function(data) {
					data = data.trim();
					if (data == 1) {
						alert("성공적으로 취소됐습니다");
						location.reload();
					}else{
						alert("다시 시도해 주세요");
					}
				}
			});
		}
	});
	
	$("#cal-left").click(function() {
		$(function() {
		    $("#cal-left").datepicker({
		    	dateFormat : "yy-mm-dd"
		    });
		});
	});
	
	$("#cal-right").click(function() {		
		$(function() {
		    $("#cal-right").datepicker({
		    	dateFormat : "yy-mm-dd"
		    });
		});
	});
</script>
</body>
</html>