<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="/mid/resources/css/adminCss/deliveryList.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>배송관리 페이지</title>
</head>
<body>
	<c:import url="../../layout/header.jsp" />
	<div id="listcontentWrap2">
		<c:import url="../../admin/adminLeftList.jsp" />
		<div id="listcontent2">
			<div class=" board_listpackage">
				<div class="">
					<div class="titleArea">
						<h2>
							<font color="#555555">Delivery List</font>
						</h2>
					</div>
				</div>
				<div class="boardSort">
					<span class=""></span>
				</div>
				<div class="base_table typeList gBorder">
					<table border="1" summary="">
						<caption></caption>
						<colgroup class="">
							<col style="width: 100px;"/>
							<col style="width: 100px;"/>
							<col style="width: 150px;" />
							<col style="width: 100px;"/>
							<col style="width: auto;" />
							<col style="width: 100px;" />
							<col style="width: 100px;" />
							<col style="width: 100px;" />
						</colgroup>
						<thead class="">
							<tr style="">
								<th scope="col">번호</th>
								<th scope="col">주문번호</th>
								<th scope="col">송장번호</th>
								<th scope="col">배송상태</th>
								<th scope="col">주소</th>
								<th scope="col">배송비 결제 여부(Y/N)</th>
								<th scope="col">수정</th>
								<th scope="col">삭제</th>
							</tr>
						</thead>
						<tbody class="center">
							<c:forEach items="${list}" var="dto" varStatus="st">
								<tr>
									<td class="th1">${dto.num}</td>
									<td class="th1">${dto.order_num}</td>
									<td class="th1">${dto.del_num}</td>
									<td class="th1">${dto.del_status}</td>
									<td class="th1">${dto.del_address}</td>
									<td class="th1">${dto.del_costpay}</td>
									<td class="th1"><a href="./deliveryUpdate?num=${dto.num}">정보 수정</a></td>
									<td class="th1"><a href="./deliveryDelete?num=${dto.num}">정보 삭제</a></td>
								</tr> 
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>

			<ul class="pagination paging">

				<li><span id="${pager.startNum-1}" style="cursor: pointer"
					class="list listimg"><img alt="뒤로"
						src="/mid/resources/images/page_prev.gif"></span></li>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li><span id="${i}" class="list listnum"
						style="cursor: pointer">${i}</span></li>
				</c:forEach>
				<c:if test="${pager.curBlock < pager.totalBlock}">
					<li><span id="${pager.lastNum+1}" style="cursor: pointer"
						class="list"><img alt="다음"
							src="/mid/resources/images/page_next.gif"></span></li>
				</c:if>
				<li><span id="${pager.lastNum}" style="cursor: pointer"
					class="list"><img alt="다음"
						src="/mid/resources/images/page_next.gif"></span></li>
			</ul>

			<form id="frm" action="./deliveryList">
				<div class="outsearch">
					<input type="hidden" value="1" id="curPage" name="curPage">
					<div class="form-group col-xs-2">
						<select name="kind" class="form-control searchop">
							<option id="kt" value="kt">ID</option>
							<option id="kw" value="kw">NAME</option>
							<option id="kc" value="kc">RANK</option>
						</select> 
						<input type="text" class="form-control searchinp"
							placeholder="Search" name="search" value="${pager.search}">
						<button class="btn btn-primary" style="cursor: pointer"
							type="submit">
							<img alt="찾기버튼" src="/mid/resources/images/button/btn_find.gif">
						</button>
					</div>
				</div>
			</form>
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
	<c:import url="../../layout/footer.jsp" />
</body>


</html>