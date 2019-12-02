<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="../../layout/bootStrap.jsp"/>
<div class="container">
  <h2>WishList</h2>            
  <table class="table table-hover">
    <thead>
      <tr>
        <th><input type="checkbox" id="checkAll">
        <th>ID</th>
        <th>상품번호</th>
        <th>상품정보</th>
        <th>가격</th>
        <th>적립포인트</th>
        <th>배송구분</th>
        <th>배송비</th>
        <th>총 금액</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${wishList }" var="wish" varStatus="i">
      <tr>
        <td><input type="checkbox" class="wishCheck wish${i.index }" value="${wish.wish_num }"></td>
        <td>${wish.id }</td>
        <td>${wish.pro_num }</td>
        <td>${wish.pro_info }</td>
        <td><input type="hidden" class="del${i.index }" value="${wish.price }">${wish.price }원</td>
        <td>${wish.price_point } 포인트</td>
        <td>${wish.delivery }</td>
        <td>${wish.delivery_cost }원</td>
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
      	<td></td>
      	<td>${sum }원</td>
      </tr>
    </tbody>
  </table>
  <button type="button" id="wishDel" class="btn btn-danger">삭제</button>
</div>
<script type="text/javascript">
var check = 0;
$("#checkAll").click(function() {
	if (check%2 == 0) {
	$(".wishCheck").prop("checked","true");
	check = 1;		
	}else{
		$(".wishCheck").prop("checked","");
		check= 0;
	}
});

$("#wishDel").click(function() {
	for (var i = 0; i < ${wishList.size()}; i++) {
		if ($(".wish"+i).prop("checked") == true) {
			$.ajax({
				type	: "POST",
				url		: "wishListDelete",
				data	: {
					id : "${member.id}",
					wish_num : $(".wish"+i).val(),
					price : $(".del"+i).val()
				},
				success	: function(data) {
					if (data == 1) {
					location.reload();
					}else{
						alert("다시 시도하세요.")
					}
				} 
			});
		}
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
		console.log(all);
		$("#checkAll").prop("checked","true");
	}else{
		$("#checkAll").prop("checked","");
	}
});


</script>
</body>
</html>