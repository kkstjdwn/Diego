<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../../layout/bootStrap.jsp" />
</head>
<body>
<c:import url="../../layout/nav.jsp" />
<div class="container">
		<h1 class="title_n">Delivery LIST</h1>

	<form id="frm" action="./deliveryList">
			<input type="hidden" value="1" id="curPage" name="curPage">
			<div class="form-group col-xs-2">
				<select name="kind" class="form-control ">
					<option id="kt" value="kt">주문번호</option>
					<option id="kw" value="kw">송장번호</option>
					<option id="kc" value="kc">주소</option>
					<option id="kd" value="kd">배송상태</option>
				</select>
			</div>
			<div class="input-group col-xs-3">
				<input type="text" class="form-control" placeholder="Search"
					name="search" value="${pager.search}">
				<div class="input-group-btn">
					<button class="btn btn-primary" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
		</form>

		<table class="table ">
			<thead>
				<tr>
					<th class="th1">번호</th>
					<th class="th1">주문번호</th>
					<th class="th1">송장번호</th>
					<th class="th1">배송상태</th>
					<th class="th1">주소</th>
					<th class="th1">배송비 결제 여부(Y/N)</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="dto" varStatus="st">
					<!-- for문과 같은 효과  -->
					<tr>
						<td class="th1">${dto.num}</td>
						<td class="th1">${dto.order_num}</td>
						<td class="th1">${dto.del_num}</td>
						<td class="th1">${dto.del_status}</td>
						<td class="th1">${dto.del_address}</td>
						<td class="th1">${dto.del_costpay}</td>
						<td class="th1"><a href="./deliveryUpdate?num=${dto.num}"><input type="button" value="정보 수정"></a></td>
						<td class="th1"><a href="./deliveryDelete?num=${dto.num}"><input type="button" value="정보 삭제"></a></td>
					</tr>
				</c:forEach>
			</tbody>
			


		</table>
			<a href="./deliveryInsert"><input type="button" value="배송 추가"></a>
		<div>
			<ul class="pagination">
				<c:if test="${pager.curBlock > 1}">
					<li><span id="${pager.startNum-1}" class="list"><</span></li>
				</c:if>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li><span id="${i}" class="list">${i}</span></li>
				</c:forEach>
				<c:if test="${pager.curBlock < pager.totalBlock}">
					<li><span id="${pager.lastNum+1}" class="list">></span></li>
				</c:if>
			</ul>

		</div>
	</div>

	<script type="text/javascript">
		var kind = '${pager.kind}';
		if (kind == '') {
			kind = "kt";
		}
		$("#" + kind).prop("selected", true);
		$(".list").click(function() {
			$("#curPage").val($(this).attr("id"));
			$("#frm").submit();
		});
	</script>


</body>
</html>