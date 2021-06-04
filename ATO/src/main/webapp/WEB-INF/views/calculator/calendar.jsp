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
	<div class="calculator">
		<div class="calendar">
	        <div class="cal_header">
	            <div class="year-month"></div>
	            <div class="nav">
	                <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
	                <button class="nav-btn go-today" onclick="goToday()">Today</button>
	                <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
	            </div>
	        </div>
	        <div class="cal_main">
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
		<div class="note">
	    	<div class="note_header">
    			<h1 id="selectDate"></h1>
    			<div id="plusBtn"></div>
	    	</div>
	    	<div class="note_main">
    			<button class="prev">&lt;</button>
                <button class="next">&gt;</button>
                <p>날짜</p>
		    			<div id="chkDate"></div>
		    	<div id="slider">	
		    		<div class="slider_item">
		    			<h1>1</h1>
		    		</div>
		    		<div class="slider_item">
		    			<h1>2</h1>
		    		</div>
		    		<div class="slider_item">
		    			<h1>3</h1>
		    		</div>
		    	</div>
	    	</div>
		</div>
    </div>
    <script src="<c:url value="/resources/js/calendar.js"/>"></script>
</body>
</html>