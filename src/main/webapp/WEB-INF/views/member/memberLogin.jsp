<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="../layout/bootStrap.jsp"/>
<form class="form-horizontal">
  <div class="form-group">
    <label class="control-label col-sm-2" for="ID">ID:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="id" placeholder="Enter id">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pw">Password:</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="pw" placeholder="Enter password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="button" class="btn btn-success" id="login">로그인</button>
    </div>
  </div>
</form>
<script type="text/javascript">
	$("#login").click(function() {
		$.ajax({
			type : "POST",
			url : "memberLogin",
			data : {
				id : $("#id").val(),
				pw : $("#pw").val()
			},
			success : function(data) {
				data = data.trim();
				if (data == "1") {
					location.href="/mid/diego";
				}else{
					alert("똑바로 치세요");
				}
			}
		});
	});


</script>

</body>
</html>