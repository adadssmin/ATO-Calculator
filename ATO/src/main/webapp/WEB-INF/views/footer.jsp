<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<link rel="stylesheet" href="<c:url value="/resources/css/footer.css"/>">
</head>
<body>
	<div class="footer">
		<footer>
			<button class="night_day" type="button" value="밤"
				onclick="nightDayHandler(this)">
				<span class="iconify" data-icon="carbon:moon" data-inline="false"></span>
				<span class="iconify" data-icon="octicon:sun-24" data-inline="false"></span>모드
			</button>
	
			<ul class="footerli">
				<li><a href=""><i class="fab fa-facebook-square"></i></a></li>
				<li><a href=""><i class="fab fa-instagram"></i></a></li>
				<li><a href=""><i class="fab fa-kickstarter-k"></i></a></li>
				<li><a href=""><i class="fas fa-envelope"></i></a></li>
			</ul>
			<div class="footerString">
				아토피를 <strong>이겨내는 그날까지</strong> 모두가 힘내시길 바랍니다.<br>
				Coded by <strong>SUMm</strong>. There is more <a href="https://github.com/adadssmin/ATO-Calculator">here</a>.<br>
			</div>
		</footer>
	</div>
</body>
</html>