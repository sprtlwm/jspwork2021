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
<p>좋아하는 색 선택(하나만)</p>

<form action="">
	<input type="radio" name="color" id="" value="red"> 빨강
	<input type="radio" name="color" id="" value="blue"> 파랑
	<input type="radio" name="color" id="" value="yellow"> 노랑
	<input type="radio" name="color" id="" value="green"> 초록
	<input type="radio" name="color" id="" value="white"> 하양
	<input type="submit" value="전송">

</form>

<hr>
<%
String colors = request.getParameter("color");
if(colors != null){
	out.print("좋아하는 색: "+colors);
}
%>

<div style="width:100px; height:100px;
 border: 2px solid black; background-color: <%=colors %>">
</div>
</body>
</html>