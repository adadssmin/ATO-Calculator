<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Write</title>
<link rel="stylesheet" href="<c:url value="/resources/css/write.css"/>"/>
</head>
<body>
	<div>
		<%@ include file="./nav.jsp"%>
	</div>
	
	<div class="view">
		<form method="post">
			<div class="view_pnl">
				<div class="title">
					<span id="title">제목</span>
					<input class="title_con" type="text" name="title"/>
					<div class="writer">
						<span id="writer">작성자</span>
						<span id="user_id">${ user.id }</span><br>
						<input type="hidden" name="writer" value="${ user.id }"/>
					</div>
				</div>
			</div>
			<div class="content">
				<div class="view_form">
					<div id="content">내용</div>
					<textarea cols="50" rows="5" name="content"></textarea>
				</div>
			</div>
			<div class="footer_nav">
				<button type="submit">작성</button>
			</div>
		</form>
	</div>
</body>
</html>