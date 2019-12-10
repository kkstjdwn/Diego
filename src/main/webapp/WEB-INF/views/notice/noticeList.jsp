<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/noticeList.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Notice List</title>
</head>
<body>
	<c:import url="../layout/header.jsp" />

	<div id="listcontentWrap2">
		<c:import url="../layout/leftList.jsp" />

		<div id="listcontent2">
			<div class=" board_listpackage xans-board-1002 ">
				<div class="">
					<div class="titleArea">
						<h2>
							<font color="#555555">Notice</font>
						</h2>
					</div>
				</div>
				<div class="boardSort">
					<span class=""></span>
				</div>
				<div class="base_table typeList gBorder">
					<table border="1" summary="">
						<caption>게시판 목록</caption>
						<colgroup class="">
							<col style="width: 70px;" />
							<col style="width: auto;" />
							<col style="width: 84px;" />
							<col style="width: 77px;" class="" />
						</colgroup>
						<thead class="">
							<tr style="">
								<th scope="col">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col" class="">작성일</th>
							</tr>
						</thead>
						<tbody class="center">
						<c:forEach items="${list}" var="dto" varStatus="st">
							<tr style="background-color: #FFFFFF; color: #555555;" class="">
								<td>${dto.not_num}</td>
								<td class="subject left txtBreak"><strong> <a
										href="" style="color: #555555;">${dto.title}</a> <span
										class="txtEm"></span></strong></td>
								<td>${dto.admin_name}</td>
								<td class=""><span class="txtNum">${dto.not_date}</span></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
					<p class=""></p>
				</div>
				<div style="text-align: right; float: right; margin-top: 30px"
					class="">
					<a href="" class="displaynone photoreview-bt size4 bt-font13"><b>글쓰기</b></a>
				</div>
			</div> 

			<div>
			<ul class="pagination">
				<c:if test="${pager.curBlock > 1}">
					<li><span id="${pager.startNum-1}" class="list"><img alt="뒤로" src="../resources/images/page_prev.gif"></span></li>
				</c:if>
				<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
					<li><span id="${i}" class="list">${i}</span></li>
				</c:forEach>
				<c:if test="${pager.curBlock < pager.totalBlock}">
					<li><span id="${pager.lastNum+1}" class="list"><img alt="다음" src="../resources/images/page_next.gif"></span></li>
				</c:if>
			</ul>

		</div>

			<form id="frm" action="./noticeList">
			<input type="hidden" value="1" id="curPage" name="curPage">
			<div class="form-group col-xs-2">
				<select name="kind" class="form-control ">
					<option id="kt" value="kt">Title</option>
					<option id="kw" value="kw">Writer</option>
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
		</div>
	</div>

	<c:import url="../layout/footer.jsp" />
</body>
</html>