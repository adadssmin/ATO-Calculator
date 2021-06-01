<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<script src="https://kit.fontawesome.com/96499e4121.js"	crossorigin="anonymous"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/home-header.css"/>"/>
</head>
<body>
	<div class="header">
		<header>
			<a href="#nowhere" class="headerToggle"> <i class="fas fa-bars"></i>
			</a>
			<ul id="list" class="navbarMenu">
				<li><a href="<c:url value="/calculator/calculator"/>">ATO-계산기</a></li>
				<li><a href="<c:url value="/information/information"/>">아토피 상식</a></li>
				<li><a href="<c:url value="/board/board"/>">게시판</a></li>
			</ul>
			<c:if test="${ user == null }">
				<ul class="log_sign">
					<li><a href="${ pageContext.request.contextPath }/user/login">로그인</a></li>
					<li><a href="${ pageContext.request.contextPath }/user/sign">회원가입</a></li>
					<li><a href="${ pageContext.request.contextPath }"><i
							class="fas fa-home"></i></a></li>
				</ul>
			</c:if>
			<c:if test="${ user != null }">
				<ul class="log_sign">
					<li><a><b>${ user.id }님</b></a></li>
					<li><a href="${ pageContext.request.contextPath }/user/info?id=${user.id}">내 정보</a></li>
					<li><a href="${ pageContext.request.contextPath }/user/logout">로그아웃</a></li>
					<li><a href="${ pageContext.request.contextPath }"><i
							class="fas fa-home"></i></a></li>
				</ul>
			</c:if>
		</header>
	</div>
</body>
</html>