<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center" style="padding-top: 100px">
		<h1>Board List</h1>
		<br>
		<table border="1" style="width: 700px">
			<tr align="center">
				<td>Number</td>
				<td>Title</td>
				<td>Writer</td>
				<td>Register Date</td>
				<td>Views</td>
			</tr>
			<c:forEach var="board" items="${boardList }">
				<tr align="center">
					<td>${board.num }</td>
					<td><a href="boardInfo?num=${board.num }">${board.subject }</a></td>
					<td>${board.writer }</td>
					<td><fmt:formatDate value="${board.regDate }" pattern="yyyy-MM-dd"/></td>
					<td>${board.readCount }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>