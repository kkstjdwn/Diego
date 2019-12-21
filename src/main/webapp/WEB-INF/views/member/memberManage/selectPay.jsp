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
</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
</div>
<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->

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
