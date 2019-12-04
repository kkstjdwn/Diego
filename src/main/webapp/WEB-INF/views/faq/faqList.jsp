<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="../layout/bootStrap.jsp" />
<style type="text/css">
.title_n {
	text-transform: uppercase;
}
</style>

<title>FAQ List</title>

</head>
<body>
	<c:import url="../layout/nav.jsp" />
	<div class="container">
		<h1 class="title_n">FAQ</h1>
		<form id="frm" action="./faqList">
			<input type="hidden" value="1" id="curPage" name="curPage">
			<div class="form-group col-xs-2">
				<select name="kind" class="form-control ">
					<option id="kt" value="kt">Title</option>
					<option id="kc" value="kc">Contents</option>
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
					<th class="th1">category</th>
					<th class="th1">Date</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="dto" varStatus="st">
					<!-- for문과 같은 효과  -->
					<tr>
						<td class="th1 num">${dto.faqCategoryVO.fcat_name}</td>
						<td> <a href="faqSelect?faq_num=${dto.faq_num}">${dto.faq_title}</a></td>
						<td class="th1 date">${dto.faq_date}</td>
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
			<a class="btn btn-primary" href="./faqWrite">Write</a>
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