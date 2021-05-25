<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String errMsg_pwchk = (String) session.getAttribute("errMsg_pwchk");
	if (errMsg_pwchk == null) {
		errMsg_pwchk = "";
	}
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" name="viewport"
	content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link rel="stylesheet" href="<c:url value="/resources/css/sign.css"/>"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$("#user_id").blur(function() {
		var user_id = $('#user_id').val();
		$.ajax({
			url: '${pageContext.request.contextPath}/user/idCheck?userId=' + user_id,
			type: 'get',
			success: function(data) {
				if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					$("#errMsg_id").text("사용중인 아이디입니다.");
					$("#errMsg_id").css("color", "red");
					$("#submit_btn").attr("disabled", true);
				}
			}
		});
	});
	
	$(function(){
		$("#select_domain").change(function() {
			var domain = $(this).val();
			if (domain == "1") {
				$("#email_domain").val("");
			} else if (domain == "2") {
				$("#email_domain").val("");
			} else {
				$("#email_domain").attr("readonly", true);
				$("#email_domain").val(domain);
			}
		});
	});
</script>
</head>
<body>
	<!-- nav -->
	<div class="container">
		<%@ include file="../home_header.jsp"%>
	</div>

	<!-- main -->
	<main>
		<div id="sign_form">
		<h1>회원가입</h1>
			<form action="${ pageContext.request.contextPath }/user/sign" method="post">
				<div class="signIn_box" name="signIn_box">
					<div class="form-group">
						<h4>
							<label for="user_id">아이디</label>
						</h4>
						<input type="text" class="form-control" id="user_id" name="id"
							maxlength="20" required>
						<div>${ errMsg_id }</div>
					</div>
					<div class="form-group">
						<h4>
							<label for="user_pw">비밀번호</label>
						</h4>
						<input type="password" class="form-control" id="user_pw"
							name="password" maxlength="20" required>
						<div id="errMsg_pw"></div>
					</div>
					<div class="form-group">
						<h4>
							<label for="user_pw2">비밀번호 확인</label>
						</h4>
						<input type="password" class="form-control" id="user_pw2"
							name="password_check" maxlength="20" required>
						<div id="errMsg_pwchk"><%= errMsg_pwchk %></div>
					</div>
					<div class="form-group">
						<h4>
							<label for="user_name">이름</label>
						</h4>
						<input type="text" class="form-control" id="user_name" name="name"
							maxlength="10" required>
					</div>
					<div class="form-group required">
						<h4>
							<label for="user_birth">생년월일</label>
						</h4>
						<input type="text" class="form-control" id="user_birth" name="birth"
							maxlength="8" placeholder=" ex) 19911127" required>
							<div id="errMsg_birth"></div>
					</div>
					<div class="form-group">
						<h4>
							<label for="user_email">이메일</label>
						</h4>
						<input type="text" class="form-control" id="user_email"	name="email1" value="" required> @ 
						<input type="text" class="email_domain" id="email_domain" name="email2" required>
						<select id="select_domain">
							<option value="1">이메일 선택</option>
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="daum.net">daum.net</option>
							<option value="2">직접입력</option>
						</select>
						<div id="errMsg_email"></div>
					</div>
					<div class="form-group">
						<h4>
							<label for="user_phone">휴대전화</label>
						</h4>
						<input type="text" class="form-control" id="user_phone" name="phone"
							placeholder=" '-' 없이 번호만 입력해주세요" maxlength="11" required>
						<div id="errMsg_phone"></div>
					</div>
					<br> <br>
					<div class="reg_button">
						<button id="submit_btn">가입하기</button>
					</div>
					<br>
				</div>
			</form>
		</div>
	</main>
	
	<!-- footer -->
	<div class="container">
		<%@ include file="../footer.jsp"%>
	</div>
</body>
</html>
