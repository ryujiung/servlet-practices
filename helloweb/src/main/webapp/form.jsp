<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/helloweb/join.jsp" method = post>
		<label>이메일:</label>
		<input type ="text" name = "email" value = "">
		<br><br>
		<label>비밀번호:</label>
		<input type ="password" name = "password" value = "">
		<br><br>
		<label>생년:</label>
		<select name = "birthYear">
		<option> 2000년</option>
		<option> 1999년</option>
		<option> 1998년</option>
		<option> 1997년</option>
		</select>
		<br><br>
		<label>성별:</label>
		남 <input type = "radio" name = "gender" value "male" chek >
		여 <input type = "radio" name = "gender" value "female">		
		<br><br>
		
		<label>자기소개</label>
		<textarea name = "description"></textarea> 
		<input type ="submit" value ="가입">
		
	</form>
</body>
</html>