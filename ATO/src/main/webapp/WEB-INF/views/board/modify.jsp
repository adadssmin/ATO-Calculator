<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board Modify</title>
<link rel="stylesheet" href="<c:url value="/resources/css/modify.css"/>"/>
</head>
<body>
	<div>
		<%@ include file="./nav.jsp"%>
	</div>

	<div class="view">
		<form method="post">
			<div class="view_pnl">
				<div class="title">
					<input class="title_con" type="text" name="title" value="${ modify.title }"/>
					<div>
						<span>${ user.id }</span><br>
						<input type="hidden" name="writer" value="${ user.id }"/>
						<div class="regDate_con">
							${ modify.regDate }
							<span class="viewCnt">조회수 ${ modify.viewCnt }</span>
						</div>
					</div>
				</div>
			</div>
			<div class="content">
				<div class="view_form">
					<textarea cols="50" rows="5" name="content">${ modify.content }</textarea>
				</div>
			</div>
			<div class="footer_nav">
				<button type="submit">수정</button>
			</div>
		</form>
	</div>
</body>
</html>