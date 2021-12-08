<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap06.*" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
<h2>게시글 수정</h2>
<form action="update.do" method="post">
<input type="hidden" name="boardno" value="${data.boardno }">
<table border="1">
	<tr>
		<td>제목</td>
		<td><input type="text" name="title" value="${data.title }"></td>		
	</tr>
	<tr>
		<td>내용</td>	
		<td><textarea name="content">${data.content }</textarea></td>		
	</tr>
	<tr>
		<td>작성자</td>
		<td><input type="text" name="writer" value="${data.writer }"></td>		 			
	</tr>
	<tr>
		<td colspan="2"><input type="submit" value="저장"></td>
	</tr>
</table>
</form>
</body>
</html>