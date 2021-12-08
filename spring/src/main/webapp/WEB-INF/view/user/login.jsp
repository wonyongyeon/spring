<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function loginCheck() {
			if ($("#id").val() == '') {
				alert("아이디를 입력하세요");
				$("#id").focus();
				return;
			}		
			if ($("#pwd").val() == '') {
				alert("비밀번호를 입력하세요.");
				$("#pwd").focus();
				return;
			}
			$("#loginFrm").submit();
		}
</script>
<title>로그인</title>
</head>
<body>
<form action="loginProcess.do" method="post" id="loginFrm">
<table border="1">
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id" id="id" value="${userVo.id }"></td>			
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="pwd" id="pwd"></td>			
	</tr>
	<tr>			
		<td colspan="2">
			<input type="button" value="로그인" onclick="loginCheck();">			
			<input type="checkbox" name="checkId" value="check" <c:if test="${!empty userVo.id}">checked</c:if>>아이디저장			
		</td>					
	</tr>
</table>
</form>
</body>
</html>