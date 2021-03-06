<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Nav</title>
<link rel="stylesheet" href="<c:url value="/resources/css/nav.css"/>"/>
</head>
<body>
	<div class="nav">
		<ul>
			<li>
				<a href="<c:url value="/board/board"/>">목록</a>
			</li>
			<c:if test="${ user.id != null }">
				<li>
					<a href="<c:url value="/board/write"/>">글 작성</a>
				</li>
			</c:if>
		</ul>
	</div>
</body>
</html>