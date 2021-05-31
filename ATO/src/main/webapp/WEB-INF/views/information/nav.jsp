<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/informationNav.css"/>"/>
</head>
<body>
	<div class="nav">
		<ul>
			<li>
				<a href="<c:url value="/information/information"/>">개요</a>
			</li>
			<li>
				<a href="<c:url value="/information/cause"/>">원인</a>
			</li>
			<li>
				<a href="<c:url value="/information/symptom"/>">증상</a>
			</li>
			<li>
				<a href="<c:url value="/information/care"/>">관리 및 치료</a>
			</li>
		</ul>
	</div>
</body>
</html>