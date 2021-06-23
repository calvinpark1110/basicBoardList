<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${contextPath }resources/js/jquery-3.5.1.min.js"></script>
<script>
	$().ready(function () {
		
		$("form").submit(function(){
			
			var checkY = confirm("Submit?");
			
			if(checkY){
				return true;
			}
				return false;
			
		})
	});
</script>
</head>
<body>
	<div align="center" style="padding-top:100px">
		<form action="boardWrite" method="post">
		<div align="center">
			<h2>Write on Board</h2>
			<br>
		</div>
		<table border ="1" style="width:600px;">
			<colgroup>
				<col width="20%">
				<col width="80">
			</colgroup>
			<tr>
				<td align="center"><span style=color:red>*</span>Write</td>
				<td><input type="text" id="writer" name="writer" required/></td>
			</tr>
			<tr>
				<td align="center"><span style=color:red>*</span>Title</td>
				<td><input type="text" id="subject" name="subject" required/></td>
			</tr>
			<tr>
				<td align="center"><span style=color:red>*</span>E-mail address</td>
				<td><input type="email" id="email" name="email" required/></td>
			</tr>
			<tr>
				<td align="center"><span style=color:red>*</span>Password</td>
				<td><input type="password" id="password" name="password" required/></td>
			</tr>
			<tr>
				<td align="center"><span style=color:red>*</span>Content</td>
				<td><textarea rows="10" cols="50" id="content" name="content" required></textarea></td>
			</tr>
			<tr align="center">
				<td colspan="2">
					<input type="submit" value="Write"/>
					<input type="reset" value="reset"/>
					<input type="button" onclick="location.href='${contextPath}/boardList'" value="List of Board">
				</td>
			</tr>
			</table>
		</form>
	</div>
</body>
</html>