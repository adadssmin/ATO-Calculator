<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List</title>
<link rel="stylesheet" href="<c:url value="/resources/css/listPage.css"/>"/>
</head>
<body>	
	<div id="write">
		<a id="write_a" href="${ pageContext.request.contextPath }/board/write">글 작성</a>
	</div>
	<div class="tableH">
		<table class="table">
			<thead>
				<tr>
					<th id="id">번호</th>
					<th id="title">제목</th>
					<th id="regDate">작성일</th>
					<th id="writer">작성자</th>
					<th id="viewCnt">조회수</th>
				<tr>
			</thead>
			<tbody>
				<c:forEach varStatus="list" items="${ boardList }" var="boardList">
					<tr>
						<td>${ (totalCount - list.index) - ((select - 1) * postNum) }</td>
						<td>
							<c:if test="${ user.id == boardList.writer }">
								<a href="${ pageContext.request.contextPath }/board/view_W?id=${boardList.id}">${boardList.title}</a>
							</c:if>
							<c:if test="${ user.id != boardList.writer }">
								<a href="${ pageContext.request.contextPath }/board/view_U?id=${boardList.id}">${boardList.title}</a>
							</c:if>
						</td>
						<td id="regDate">${ boardList.regDate }</td>
						<td id="writer">${ boardList.writer }</td>
						<td id="viewCnt">${ boardList.viewCnt }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div>
	<div class="pageNum">
		<c:if test="${ prev }">
			<span>
				<a href="${ pageContext.request.contextPath }/board/board?num=${ startPageNum - 1 }">이전</a>
			</span>
		</c:if>
		
		<c:forEach begin="${ startPageNum }" end="${ endPageNum }" var="num">
			<span>
				<c:if test="${select != num}">
			    	<a href="${ pageContext.request.contextPath }/board/board?num=${num}">${num}</a>
				</c:if>
				<c:if test="${select == num}">
			    	<a id="selectPage" href="${ pageContext.request.contextPath }/board/board?num=${num}">${num}</a>
				</c:if>
			</span>
		</c:forEach>
		
		<c:if test="${ next }">
			<span>
				<a href="${ pageContext.request.contextPath }/board/board?num=${ endPageNum + 1 }">다음</a>
			</span>
		</c:if>
	 </div>
</div>
</body>
</html>