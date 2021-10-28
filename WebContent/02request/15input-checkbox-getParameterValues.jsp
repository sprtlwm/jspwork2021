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
<p>영화 예매</p>
<form action="">
	<input type="checkbox" name="movie" value="듄" id=""> 듄
	<input type="checkbox" name="movie" value="닥터스트레인지" id=""> 닥터스트레인지
	<input type="checkbox" name="movie" value="스파이더맨" id=""> 스파이더맨
	<input type="checkbox" name="movie" value="007" id=""> 007
	<input type="checkbox" name="movie" value="이터널스" id=""> 이터널스 <br>
	<input type="submit" value="예매">
</form>

<hr>
<ul>
<%
String[] movies = request.getParameterValues("movie");
if(movies !=null){
	for(String movie : movies){
		out.print("<li>");
		out.print(movie);
		out.print("</li>");	
	}
}
%>
</ul>
</body>
</html>