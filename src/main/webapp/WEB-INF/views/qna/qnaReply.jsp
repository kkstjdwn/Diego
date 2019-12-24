<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/qnaCss/qnaWrite.css" rel="stylesheet">
<c:import url="../layout/bootStrap.jsp" />
<c:import url="../layout/summerNote.jsp" />
<meta charset="UTF-8">
<title>QNA REPLY PAGE</title>
</head>
<body>
	<c:import url="../layout/header.jsp" />

	<div id="listcontentWrap2">
		<c:import url="../layout/leftList.jsp" />
		<div id="listcontent2">
			<div class="">
				<div class="">
					<div class="titleArea">
						<h2>
							<font color="#555555">QNA REPLY PAGE</font>
						</h2>
					</div>
					<form id="boardWriteForm" name="" action="./qnaReply?qna_num=${qna.qna_num}&pro_num=${qna.pro_num}" method="post" enctype="multipart/form-data">
							<!-- 상품정보 -->
						<div class="review_prd  ">
							<div class="ec-base-box typeProduct">
								<p class="thumbnail">
									<a href="/mid/product/productSelect?pro_num=${qna.pro_num}">
										<img src="../resources/product/images/${images.pro_main}"
										alt=""
										onerror="this.src='//img.echosting.cafe24.com/thumb/75x75.gif'" />
									</a>
								</p>
								<div class="information">
									<h3>
										<a href="/mid/product/productSelect?pro_num=${qna.pro_num}">${product.pro_name}</a>
									</h3>
									<p class="price">${product.pro_price}
										<span id="sPrdTaxText"></span>
									</p>
									<p class="button">
										<a href="/mid/product/productSelect?pro_num=${qna.pro_num}"
											title="새창으로 이동"><img
											src="//img.echosting.cafe24.com/skin/base_ko_KR/board/btn_prd_detail.gif"
											alt="상품상세보기" /></a>
									</p>
								</div>
							</div>
							<!-- 상품정보 -->
							<div class="ec-base-table typeWrite ">
								<table border="1" summary="">
									<colgroup>
										<col style="width: 130px;" />
										<col style="width: auto;" />
									</colgroup>
									<tbody>
										<tr>
											<th scope="row">제목</th>
											<td><input type="text" class="form-control" id="title" name="title" readonly="readonly" value="${qna.title}">td>
										</tr>
										<tr class="" style="display: none;">
											<th scope="row">작성자</th>
											<td><input type="text" class="form-control" id="writer"
												name="writer" readonly="readonly" value="${admin.admin_id}"></td>
										</tr>
										<tr>
											<td colspan="2" class="clear"><textarea
													class="form-control" rows="30" id="contents"
													name="contents"></textarea></td>
										</tr>

									</tbody>


									<tbody>
										<tr class="">
											<th scope="row">비밀번호</th>
											<td><input id="password" name="sec_num"
												fw-filter="isFill" fw-label="비밀번호" fw-msg="" value=""
												type="password" /></td>
										</tr>
										<tr class="">
											<th scope="row">비밀글설정</th>
											<td><input id="secure0" name="secret" fw-filter="isFill"
												fw-label="비밀글설정" fw-msg="" value="N" type="radio"
												checked="checked" /><label for="secure0">공개글</label> <input
												id="secure1" name="secret" fw-filter="isFill"
												fw-label="비밀글설정" fw-msg="" value="Y" type="radio" /><label
												for="secure1">비밀글</label></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="base_button ">
								<span class="gLeft"> <a href="/board/qa/6/"><img
										src="../resources/images/button/btn_list.gif" alt="목록" /></a>
								</span> <span class="gRight"><button type="submit" class="btn">
										<img src="../resources/images/button/btn_register.gif"
											alt="등록" />
									</button> <a href="./faqList"><img
										src="../resources/images/button/btn_cancel.gif" alt="취소" /></a> </span>
							</div>
						</div>
					</form>
				</div>

			</div>
		</div>



	</div>

	<c:import url="../layout/footer.jsp" />
</body>
<script type="text/javascript">
	$("#contents").summernote({
		height : 400,
	});
</script>


</html>