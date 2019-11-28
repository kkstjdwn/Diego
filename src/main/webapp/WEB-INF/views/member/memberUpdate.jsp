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
<form class="form-horizontal" action="memberUpdate" method="post">
  <div class="form-group">
    <label class="control-label col-sm-2" for="ID">ID</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="id" value="${member.id }" readonly="readonly" name="id">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="pw">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="pw" placeholder="Enter password" name="pw">
    </div>
  </div>
    <div class="form-group">
    <label class="control-label col-sm-2" for="name">Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="name" value="${member.name }" readonly="readonly" name="name">
    </div>
  </div>
      <div class="form-group">
    <label class="control-label col-sm-2" for="address_pn">우편번호</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="address_pn" name="address_pn" >
    </div>
  </div>
      <div class="form-group">
    <label class="control-label col-sm-2" for="address_ba">기본주소</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="address_ba" name="address_ba" >
    </div>
  </div>
        <div class="form-group">
    <label class="control-label col-sm-2" for="address_da">상세주소</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="address_da" name="address_da" >
    </div>
  </div>
        <div class="form-group">
    <label class="control-label col-sm-2" for="phone">연락처</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="phone" name="phone" >
    </div>
  </div>
        <div class="form-group">
    <label class="control-label col-sm-2" for="email">이메일</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="email" name="email" >
    </div>
  </div>
        <div class="form-group">
    <label class="control-label col-sm-2" for="ad_birth">생년월일</label>
    <div class="col-sm-10">
      <input type="date" class="form-control" id="ad_birth" name="ad_birth" >
    </div>
  </div>
        <div class="form-group">
    <label class="control-label col-sm-2" for="ad_local">거주지역</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="ad_local" name="ad_local" >
    </div>
  </div>
<!--   <div class="form-group"> -->
<!--    	<label class="control-label col-sm-2" for="@@@@@@">@@@@@@</label> -->
<!--   		<div class="col-sm-10"> -->
<!--       		<input type="text" class="form-control" id="" name="" > -->
<!--     </div> -->
<!--   </div> -->
    
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success" id="insert">수정</button>
    </div>
  </div>
</form>
</body>
</html>