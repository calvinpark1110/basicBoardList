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
	<div align="center">
		<h1>게시글 보기</h1>
		<br>
	</div>
		<table style="width: 700px; text-align: center" border="1">
			<colgroup>
				<col width="20%">
				<col width="80%">
				</colgroup>
			<tr>
				<td>List Number </td>
				<td>${bdto.num }</td>
			</tr>
			<tr>
				<td>Views </td>
				<td>${bdto.readCount }</td>
			</tr>
			<tr>
				<td>Writer</td>
				<td>${bdto.writer }</td>
			</tr>
			<tr>
				<td>Reg_Date</td>
				<td><fmt:formatDate value="${bdto.regDate }" pattern="yyyy-MM-dd"/></td>
			</tr>
			<tr>
				<td>E mail Address</td>
				<td>${bdto.email }</td>
			</tr>
			<tr>
				<td>Title</td>
				<td>${bdto.subject }</td>
			</tr>
			<tr>
				<td>Content</td>
				<td>${bdto.content }</td>
			</tr>
			<tr>
				<td colspan = "2">
					<input type="button" value="Edit"   onclick="location.href='boardUpdate?num=${bdto.num}'">
					<input type="button" value="Delete" onclick="location.href='boardDelete?num=${bdto.num}'">
					<input type="button" value="Back to List" onclick="location.href='boardList'">
				</td>
			</tr>
		</table> 
	</div>
</body>
</html>