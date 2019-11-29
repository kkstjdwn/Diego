<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가족이 되시는것을 환영합니다~</title>
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
    <label class="control-label col-sm-2" for="name">Name:</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" placeholder="Enter name">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="button" class="btn btn-success" id="insert">가입</button>
    </div>
  </div>
</form>
<script type="text/javascript">
	
	$("#insert").click(function() {
		$.ajax({
			type : "POST",
			url : "memberInsert",
			data : {
				id : $("#id").val(),
				pw : $("#pw").val(),
				name : $("#name").val()
			},
			success : function(data) {
				data = data.trim();
				alert("가입을 축하드립니다!");
				location.href="/mid/";
				}
			});
		});
		
	});

</script>

</body>
</html>