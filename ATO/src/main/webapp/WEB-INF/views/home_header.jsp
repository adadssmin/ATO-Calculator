<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script src="https://kit.fontawesome.com/96499e4121.js"	crossorigin="anonymous"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/home-header.css"/>"/>
<title>home-header</title>
</head>
<body>
	<div class="header">
		<header>
			<a href="#nowhere" class="headerToggle"> <i class="fas fa-bars"></i>
			</a>
			<ul id="list" class="navbarMenu">
				<li><a href="계산기.html">ATO-계산기</a></li>
				<li><a href="사용법.html">계산기 사용법</a></li>
				<li><a href="상식.html">아토피 상식</a></li>
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
					<li><a href="${ pageContext.request.contextPath }/user/info?id=${user.id}">정보수정</a></li>
					<li><a href="${ pageContext.request.contextPath }/user/logout">로그아웃</a></li>
					<li><a href="${ pageContext.request.contextPath }"><i
							class="fas fa-home"></i></a></li>
				</ul>
			</c:if>
		</header>
	</div>
</body>
</html>