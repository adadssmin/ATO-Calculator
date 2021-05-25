<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link href="https://fonts.googleapis.com/css2?family=KoHo&Nanum+Gothic&family=Nanum+Myeongjo&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<c:url value="/resources/css/board.css"/>"/>
</head>
<body>
	
	<!-- nav -->
	<div class="container">
		<%@ include file="../home_header.jsp"%>
	</div>
	
	<!-- main -->
	<main>
		<div class="main">
		<h1>게시판</h1>
			<c:if test="${ view == null and write == null and modify == null}">
				<%@ include file="./listPage.jsp"%>
			</c:if>
			<c:if test="${ write == 'write' }">
				<%@ include file="./write.jsp"%>
			</c:if>
			<c:if test="${ view != null }">
				<%@ include file="./view.jsp"%>
			</c:if>
			<c:if test="${ modify != null }">
				<%@ include file="./modify.jsp"%>
			</c:if>
		</div>
	</main>
	<!-- nav -->
	<div class="footer">
		<%@ include file="../footer.jsp"%>
	</div>
</body>
</html>