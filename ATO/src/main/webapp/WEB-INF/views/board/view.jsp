<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board View</title>
<link rel="stylesheet" href="<c:url value="/resources/css/view.css"/>"/>
</head>
<body>
	<div>
		<%@ include file="./nav.jsp"%>
	</div>
	
	<div class="view">
		<form method="post">
			<div class="view_pnl">
				<div class="title">
					<div class="title_con">${ view.title }</div>
					<div>
						<div class="writer">${ view.writer }</div>
						<div class="regDate_con">
							${ view.regDate }
							<span class="viewCnt">조회수 ${ view.viewCnt }</span>
						</div>
					</div>
				</div>
			</div>
			<div class="content">
				<div class="view_form">${ view.content }</div>
			</div>
		</form>
	</div>
	<c:if test="${ view.writer == user.id }">
		<div class="footer_nav">
			<a href="${ pageContext.request.contextPath }/board/modify?id=${ view.id }">수정</a>
			<a href="${ pageContext.request.contextPath }/board/delete?id=${ view.id }">삭제</a>
		</div>
	</c:if>
</body>
</html>