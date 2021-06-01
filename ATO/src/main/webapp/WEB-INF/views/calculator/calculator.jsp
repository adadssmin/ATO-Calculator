<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<title>계산기</title>
<link rel="stylesheet" href="<c:url value="/resources/css/calculator.css"/>"/>
</head>
<body>
	<!-- nav -->
	<div class="container">
		<%@ include file="../home_header.jsp"%>
	</div>
	
	<!-- main -->
	<main>
		<div class="main">
		<h1>ATO-Calculator</h1>
			
		</div>
	</main>
	
	<!-- footer -->
	<div class="footer">
		<%@ include file="../footer.jsp"%>
	</div>
</body>
</html>