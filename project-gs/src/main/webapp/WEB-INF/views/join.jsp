<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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

<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type = "text/javascript">
	$(document).ready(function(){
		alert('aaaaaa');
	
		//회원가입 버튼 눌렀을 때
		$(".login-button").on("click",function(){
			var idVal = $("#userId").val();
			var passVal = $("#password").val();
			var passConVal = $("#password_con").val();
			var agreeChk = $("#chk").checked;
			
			//아이디체크
			if(idVal == "" || idVal == null){
				alert("ID 값 입력해주세여");
				return false;
			}
			
			//비밀번호 null 체크
			if(passVal == "" || passVal == null){
				alert("password 값 입력해주세여");
				return false;
			}
			
		
			//비밀번호체크
			if(passVal != passConVal){
				alert("password 값 확인해주세여.");
				return false;
			}
			
			if(!agreeChk){
				alert("회원가입 동의해주세요");
				return false;
			}
			
		});	
	});
</script>
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
			<form id="register-form" class="text-left" action="/join" method="post">
				<div class="login-form-main-message"></div>
				<div class="main-login-form">
					<div class="login-group">
						<div class="form-group">
							<label for="reg_username" class="sr-only"><spring:message code="member.id"/></label>
							<input type="text" class="form-control" id="userId" name="userId" placeholder=<spring:message code="member.id"/>>
						</div>
						<div class="form-group">
							<label for="reg_password" class="sr-only"><spring:message code="member.password"/></label>
							<input type="password" class="form-control" id="password" name="password" placeholder=<spring:message code="member.password"/>>
						</div>
						<div class="form-group">
							<label for="reg_password_confirm" class="sr-only"><spring:message code="member.password.comfirm"/></label>
							<input type="password" class="form-control" id="password_con" name="password_con" placeholder=<spring:message code="member.password.comfirm"/>>
						</div>
						
						<div class="form-group">
							<label for="reg_email" class="sr-only"><spring:message code="member.email"/></label>
							<input type="text" class="form-control" id="email" name="email" placeholder=<spring:message code="member.email"/>>
						</div>
						<div class="form-group">
							<label for="reg_fullname" class="sr-only"><spring:message code="member.name"/></label>
							<input type="text" class="form-control" id="userName" name="userName" placeholder=<spring:message code="member.name"/>>
						</div>
						
						<div class="form-group login-group-checkbox">
							<input type="radio" class="" name="gender" id="male" placeholder=<spring:message code="member.male"/>>
							<label for="male"><spring:message code="member.male"/></label>
							
							<input type="radio" class="" name="gender" id="female" placeholder=<spring:message code="member.female"/>>
							<label for="female"><spring:message code="member.female"/></label>
						</div>
						
						<div class="form-group login-group-checkbox">
							<input type="checkbox" class="" id="termChk" name="termChk" value="chk">
							<!-- <label for="reg_agree">i agree with <a href="#">terms</a></label> -->
							<label for="termChk"><spring:message code='term.agree'/></label>
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
