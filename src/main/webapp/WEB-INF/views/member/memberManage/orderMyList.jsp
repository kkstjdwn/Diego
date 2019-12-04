<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 주문 목록</title>
<style type="text/css">
	.table-hover{
		text-align: center;
	}
	#cen > th{
		text-align: center;
	}
	.container{
		text-align: center;
	}
</style>
</head>
<body>
<c:import url="../../layout/bootStrap.jsp"/>
<div class="container">
  <h2>My Orders</h2>            
  <table class="table table-hover">
    <thead>
      <tr id="cen">
        <th>주문번호</th>
        <th>주문날짜</th>
        <th>이미지</th>
        <th>상품정보</th>
        <th>수량</th>
        <th>상품구매금액</th>
        <th>주문처리상태</th>
        <th>취소/교환/반품</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${orderList }" var="order" varStatus="i">
      <tr>
        <td>${order.order_num }
        <br>
        <button type="button" class="btn btn-danger orderDel" value="${order.order_num }">취소</button>
        <a href="/mid/member/memberManage/orderUpdate?order_num=${order.order_num }" id="orderUpdate" class="btn btn-warning">수정</a></td>
        <td>${order.order_date }</td>
        <td><a href="/mid/member/memberManage/orderSelect?order_num=${order.order_num }">
        <img src="/mid/resources/product/orders/${order.image }" width="35px" height="35px">
        </a>
        </td>
        <td>${order.pro_info }</td>
        <td>${order.pro_count }</td>
        <td>${order.price }</td>
        <td> - </td>
        <td> - </td>
      </tr>
      </c:forEach>
      <tr>
      	<td>총 금액</td>
      	<td></td>
      	<td></td>
      	<td></td>
      	<td></td>
      	<td></td>
      	<td></td>
      	<td>${sum }원</td>
      </tr>
    </tbody>
  </table>
</div>
<script type="text/javascript">
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

</script>
</body>
</html>