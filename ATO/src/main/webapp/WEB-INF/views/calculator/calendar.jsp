<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="<c:url value="/resources/css/calendar.css"/>">
</head>
<body>
	 <div class="calendar">
        <div class="header">
            <div class="year-month"></div>
            <div class="nav">
                <button class="nav-btn go-prev">&lt;</button>
                <button class="nav-btn go-today">Today</button>
                <button class="nav-btn go-next">&gt;</button>
            </div>
        </div>
        <div class="main">
            <div class="days">
                <div class="day">일</div>
                <div class="day">월</div>
                <div class="day">화</div>
                <div class="day">수</div>
                <div class="day">목</div>
                <div class="day">금</div>
                <div class="day">토</div>
            </div>
            <div class="dates"></div>
        </div>
    </div>
    <script src="<c:url value="/resources/javascript/calendar.js"/>"></script>
</body>
</html>