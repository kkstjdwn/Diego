<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/faqCss/faqList.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>FAQ List</title>
</head>
<body>
	<c:import url="../layout/header.jsp" />

	<div id="listcontentWrap2">
		<c:import url="../layout/leftList.jsp" />
		<div id="listcontent2">
			<div class="listpackage">
				<div class="">
					<div class="title">
						<h2>
							<font color="#555555">FAQ</font>
						</h2>
					</div>
				</div>
				<div class="faqMenu">
					<ul id="nav">
						<li><a href="./faqList">전체보기</a></li>
						<li><a href="">주문/결제/배송</a></li>
						<li><a href="">취소/환불/교환</a></li>
					</ul>
					<!-- 찾기 -->
					<div class="outsearch">
						<input type="hidden" value="1" id="curPage" name="curPage">
						<div class="form-group col-xs-2">
							<select name="kind" class="form-control searchop">
								<option id="kt" value="kt">Title</option>
								<option id="kw" value="kw">Writer</option>
								<option id="kc" value="kc">Contents</option>
							</select> 
							<span class="inputbox">
								<input type="text" class="form-control searchinp"
									placeholder="Search" name="search" value="${pager.search}">
								<button class="btn" type="submit">
									<img alt="찾기버튼" src="../resources/images/button/board_search_btn.png">
								</button>
							</span>
						</div>
					</div>
				</div>
				<div class="base_table typeList gBorder faqList">
					<table border="1" summary="">
						<!-- faq 게시판 -->
						<colgroup
							class="">
							<col style="width: 70px;" />
							<col style="width: 135px;" class="" />
							<col style="width: auto;" />
							<col style="width: 100px;" />
							<col style="width: 100px;" class="" />
							<col style="width: 55px;" class="displaynone" />
							<col style="width: 80px;" class="displaynone" />
						</colgroup>
						<tbody class="center">
							<tr style="">
								<td colspan="5">
									<div class="subjectList">
										<ul class="navMenu2">
											<c:forEach items="${list}" var="dto" varStatus="st">
												<li class="main ani3">
													<p class="cate">${dto.faqCategoryVO.fcat_name}</p> <a>${dto.faq_title}</a>
													<div class="subMenu" style="display: none;">
														<ul>
															<li>
																<div class="answerTxt">
																	${dto.faq_contents}
																</div>
															</li>
														</ul>
													</div>
												</li>
											</c:forEach>
										</ul>
									</div>
								</td>
							</tr>
						</tbody>
				</div>
				<div class="typeBG displaynone ">
					<span class="gRight"> 
						<a href="" class="displaynone blackBtn ani3">글쓰기</a>
					</span>
				</div>
			</div>

			<div
				class="xans-element- xans-board xans-board-paging-1002 xans-board-paging xans-board-1002 ec-base-paginate">
				<!--    <a href="?board_no=3&page=1"><img src="/web/upload/images/small_num_paging_prev.png" alt="이전 페이지" /></a>-->
				<ol>
					<li class="xans-record-"><a href="?board_no=3&page=1"
						class="this">1</a></li>
					<li class="xans-record-"><a href="?board_no=3&page=2"
						class="other">2</a></li>
					<li class="xans-record-"><a href="?board_no=3&page=3"
						class="other">3</a></li>
				</ol>
				<!--    <a href="?board_no=3&page=2"><img src="/web/upload/images/small_num_paging_next.png" alt="다음 페이지" /></a>-->
			</div>

		</div>


	</div>
	<script>
	$(".subjectList a").click(function(){
		$(".subMenu").slideUp();
        $(".subjectList .main").removeClass("activeA");
		if(!$(this).next().is(":visible"))
		{
			$(this).next().slideDown();
            $(this).parent().addClass("activeA");
		}
	})
	</script>

	<c:import url="../layout/footer.jsp" />
</body>
</html>