<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/bootStrap.jsp" />
</head>
<body>
<c:import url="../layout/nav.jsp" />
<div class="container">
		<h1 class="title_n">MEMBER LIST</h1>

	<form id="frm" action="./memberList">
			<input type="hidden" value="1" id="curPage" name="curPage">
			<div class="form-group col-xs-2">
				<select name="kind" class="form-control ">
					<option id="kt" value="kt">ID</option>
					<option id="kw" value="kw">NAME</option>
					<option id="kc" value="kc">RANK</option>
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
					<th class="th1">ID</th>
					<th class="th1">NAME</th>
					<th class="th1">ADRESS</th>
					<th class="th1">PHONE</th>
					<th class="th1">EMAIL</th>
					<th class="th1">BIRTH</th>
					<th class="th1">LOCAL</th>
					<th class="th1">RANK</th>
					<th class="th1">TOTAL PAY</th>
					<th class="th1">JOIN DATE</th>
					<th class="th1">LEVEL</th>
					<th class="th1">MANAGE</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="dto" varStatus="st">
					<!-- for문과 같은 효과  -->
					<tr>
						<td class="th1">${dto.id}</td>
						<td class="th1">${dto.name}</td>
						<td class="th1">${dto.address_pn} ${dto.address_ba} ${dto.address_da}</td>
						<td class="th1">${dto.phone}</td>
						<td class="th1">${dto.email}</td>
						<td class="th1">
						${dto.ad_birth.toString()} 
						</td>
						<td class="th1">${dto.ad_local}</td>
						<td class="th1">${dto.mem_rank}</td>
						<td class="th1">${dto.total_pay}</td>
						<td class="th1">${dto.join_date}</td>
						<td class="th1">${dto.lev}</td>
						<td class="th1"><a href="./memberUpdate?id=${dto.id}"><input type="button" value="정보 수정"></a></td>
					</tr>
				</c:forEach>
			</tbody>


		</table>

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