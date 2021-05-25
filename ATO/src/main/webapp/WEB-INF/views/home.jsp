<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/96499e4121.js"	crossorigin="anonymous"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://code.iconify.design/1/1.0.7/iconify.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=KoHo&Nanum+Gothic&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/home.css"/>"/>
<title>ATO_Calculator</title>
</head>

<body>
	<!-- nav -->
	<div class="container">
		<%@ include file="./home_header.jsp"%>
	</div>

	<!-- main -->
	<main>
		<div class="mainIntro">
			<img class="hand" src="<c:url value="/resources/img/hand.jpg"/>" />
			<div>
				<h1>ATO-Calculator</h1>
				<p id="content">
					<span id="span">아토피로 고통받고 있을 많은 분들을 위하여 개설합니다.</span><br><br> 
					<span id="span">본인도 아토피로 고통받고 있는 입장으로 많은 분들께
					</span><br><br>
					<span id="span"> 도움이 될 수 있기를 바랍니다.</span>
				</p>
			</div>
		</div>
		<div class="mainBtn">
			<button class="btn1">
				<a href="계산기.html">ATO-계산기</a>
			</button>
			<button class="btn2">
				<a href="사용법.html">계산기 사용법</a>
			</button>
			<button class="btn3">
				<a href="상식.html">아토피 상식</a>
			</button>
			<button class="btn4">
				<a href="<c:url value="/board/board"/>">게시판</a>
			</button>
		</div>
	</main>
	
	<!-- footer -->
	<div class="footer">
		<%@ include file="./footer.jsp"%>
	</div>
</body>
</html>