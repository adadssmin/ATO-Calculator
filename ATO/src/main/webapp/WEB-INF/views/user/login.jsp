<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String errMsg = (String) session.getAttribute("errMsg");
	if (errMsg == null) {
		errMsg = "";
	}
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport"
	content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link href="https://fonts.googleapis.com/css2?family=KoHo&Nanum+Gothic&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/login.css"/>"/>
</head>
<body>
	<!-- nav -->
	<div class="container">
		<%@ include file="../home_header.jsp"%>
	</div>
	
	<!-- main -->
	<main>
		<div id="login_form">
			<form action="${ pageContext.request.contextPath }/user/login" method="post">
				<div class="login-box">
					<h1>ATO-Calculator</h1>
					<div class="textbox">
						<i class="fas fa-user"></i> <input type="text" name="id"
							placeholder="아이디" maxlength="20" autofocus required>
					</div>
					<div class="textbox">
						<i class="fas fa-lock"></i> <input type="password"
							name="password" placeholder="비밀번호" maxlength="20" required>
					</div>
					<div id="errMsg"><%= errMsg %></div>
					<input class="btn" type="submit" value="로그인">
					<ul class="signIn">
						<li></li>
						<li><a href="">아이디 찾기</a></li>
						<li>|</li>
						<li><a href="">비밀번호 찾기</a></li>
						<li>|</li>
						<li><a href="${ pageContext.request.contextPath }/user/sign">회원가입</a></li>
						<li></li>
					</ul>
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