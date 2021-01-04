<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8"> 
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>PROJECT GS</title>

  <!-- Bootstrap core CSS -->
  
    <!-- <title>Home</title> -->
    
    <link rel="stylesheet" href="/resources/vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/vendor/bootstrap/css/signUp.css">
</head>
<body>
	
  <%@include file ="header.jsp" %>

  <!-- Page Content
  <div class="container">
		<a>정송은씨 로그인 기능 구현 부탁드립니다.</a>
  </div>-->
  
  
	<div class="text-center" style="padding:50px 0">
		<div class="logo"><spring:message code="member.register"/></div>
		<!-- Main Form -->
		<div class="login-form-1">
			<form id="register-form" class="text-left">
				<div class="login-form-main-message"></div>
				<div class="main-login-form">
					<div class="login-group">
						<div class="form-group">
							<label for="reg_username" class="sr-only"><spring:message code="member.id"/></label>
							<input type="text" class="form-control" id="reg_id" name="reg_id" placeholder=<spring:message code="member.id"/>>
						</div>
						<div class="form-group">
							<label for="reg_password" class="sr-only"><spring:message code="member.password"/></label>
							<input type="password" class="form-control" id="reg_password" name="reg_password" placeholder=<spring:message code="member.password"/>>
						</div>
						<div class="form-group">
							<label for="reg_password_confirm" class="sr-only"><spring:message code="member.password.comfirm"/></label>
							<input type="password" class="form-control" id="reg_password_confirm" name="reg_password_confirm" placeholder=<spring:message code="member.password.comfirm"/>>
						</div>
						
						<div class="form-group">
							<label for="reg_email" class="sr-only"><spring:message code="member.email"/></label>
							<input type="text" class="form-control" id="reg_email" name="reg_email" placeholder=<spring:message code="member.email"/>>
						</div>
						<div class="form-group">
							<label for="reg_fullname" class="sr-only"><spring:message code="member.name"/></label>
							<input type="text" class="form-control" id="reg_fullname" name="reg_fullname" placeholder=<spring:message code="member.name"/>>
						</div>
						
						<div class="form-group login-group-checkbox">
							<input type="radio" class="" name="reg_gender" id="male" placeholder=<spring:message code="member.male"/>>
							<label for="male"><spring:message code="member.male"/></label>
							
							<input type="radio" class="" name="reg_gender" id="female" placeholder=<spring:message code="member.female"/>>
							<label for="female"><spring:message code="member.female"/></label>
						</div>
						
						<div class="form-group login-group-checkbox">
							<input type="checkbox" class="" id="reg_agree" name="reg_agree">
							<!-- <label for="reg_agree">i agree with <a href="#">terms</a></label> -->
							<label for="reg_agree"><spring:message code='term.agree'/></label>
						</div>
					</div>
					<button type="submit" class="login-button"><i class="fa fa-chevron-right"></i><spring:message code="register.agreeBtn" /></button>
				</div>
				<div class="etc-login-form">
					<p><spring:message code="register.agree" /> <a href="/login"><spring:message code="member.login"/></a></p>
				</div>
			</form>
		</div>
	<!-- end:Main Form -->
	</div>

  <!-- Bootstrap core JavaScript -->
  <script src="/resources/vendor/jquery/jquery.slim.min.js"></script>
  <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
