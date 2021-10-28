<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="">
	<input type="text" name="param1" required><br><!-- 필수 항목 작성시 적용  -->
	<input type="text" name="param2" value="초기값"><br>
	<input type="text" name="param3" disabled value="작성불가 값"><br>
	<input type="text" name="param4" readonly value ="읽기 전용"><br>
	<input type="text" name="param5" placeholder="힌트 예) 이름을 입력하세요."><br>
	<input type="email" name="param6"> <br>
	<input type="text" name="param7" pattern="[0-9]{5}" > <br>
	<input type="submit" value="전송">
</form>

<hr>
param1 :<%= request.getParameter("param1") %><br>
param1 :<%= request.getParameter("param2") %><br>
param1 :<%= request.getParameter("param3") %><br>
param1 :<%= request.getParameter("param4") %><br>
param1 :<%= request.getParameter("param5") %><br>
param1 :<%= request.getParameter("param6") %><br>
param1 :<%= request.getParameter("param7") %><br>

</body>
</html>