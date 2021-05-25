<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
<link rel="stylesheet" href="<c:url value="/resources/css/info.css"/>"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body>
	<!-- nav -->
	<div class="container">
		<%@ include file="../home_header.jsp"%>
	</div>
	
	<!-- main -->
	<main>
		<div id="info_form">
		<h1>회원정보</h1>
			<form action="${ pageContext.request.contextPath }/user/info" method="post">
				<div class="info_box">
					<div class="form-group">
						<h3>
							<label for="user_id">아이디</label>
						</h3>
						<div id="userData">${ user.id }</div>
						<input type="hidden" name="id" value="${ user.id }">
					</div>
					<div class="form-group">
						<h3>
							<label for="user_name">이름</label>
						</h3>
						<input type="text" class="form-control" name="name" value="${ user.name }">
					</div>
					<div class="form-group">
						<h3>
							<label for="user_birth">생년월일</label>
						</h3>
						<input type="text" class="form-control" name="birth" value="${ user.birth }">
					</div>
					<div class="form-group">
						<h3>
							<label for="user_email">이메일</label>
						</h3>
						<input type="text" class="form-control" name="email" value="${ user.email }">
					</div>
					<div class="form-group">
						<h3>
							<label for="user_phone">휴대전화</label>
						</h3>
						<input type="text" class="form-control" name="phone" value="${ user.phone }">
					</div>
					<br><br>
					<div class="reg_button">
						<button id="submit_btn">수정하기</button>
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