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
<c:import url="../../layout/bootStrap.jsp"/>
<form class="form-horizontal">
  <div class="form-group">
    <label class="control-label col-sm-2" for="id">ID</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="id" value="${member.id}" readonly="readonly">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="point_value">point</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" value="가입 축하 point 5000 증정" readonly="readonly">
      <input type="text" class="form-control" id="point_value" value="5000">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="contents">contents</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="contents" placeholder="Enter Point's NAME">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="button" class="btn btn-success" id="pointInsert">INSERT</button>
    </div>
  </div>
</form>

<script type="text/javascript">
	$.ajax({
		type: "POST",
		url: "pointInsert",
		data:{
			id:$("#id").val(),
			point_value : $("#point_value").val(),
			contents: $("#contents").val()
		},
		success: function(data) {
			data = data.trim();
			alert(data);
		}
	});


</script>
</body>
</html>