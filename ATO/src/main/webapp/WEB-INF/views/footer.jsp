<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home-footer</title>
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
				Coded by SUMm. There is more <a href="#">here</a>.
			</div>
		</footer>
	</div>
</body>
</html>