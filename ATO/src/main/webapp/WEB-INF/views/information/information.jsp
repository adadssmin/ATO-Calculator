<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<title>아토피정보</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/information.css"/>"/>
</head>
<body>
	<!-- nav -->
	<div class="container">
		<%@ include file="../home_header.jsp"%>
	</div>
	
	<!-- main -->
	<main>
		<div class="main">
		<h1>아토피 상식</h1>
			<c:if test="${ information == null }">
				<%@ include file="./overview.jsp"%>
			</c:if>
			<c:if test="${ information == 'cause' }">
				<%@ include file="./cause.jsp"%>
			</c:if>
			<c:if test="${ information == 'symptom' }">
				<%@ include file="./symptom.jsp"%>
			</c:if>
			<c:if test="${ information == 'care' }">
				<%@ include file="./care.jsp"%>
			</c:if>
		</div>
	</main>
	
	<!-- footer -->
	<div class="footer">
		<%@ include file="../footer.jsp"%>
	</div>
</body>
</html>