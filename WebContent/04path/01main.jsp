<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>경로</h1>

	<h2>절대경로</h2>

	<p>/로 시작</p>
	<p>web content 기준</p>

	<%@ include file="/04path/01sub.jsp"%>

	<p>03module 폴더 include</p>
	<%@ include file="/03module/02sub.jsp"%>


	<h3>상대 경로</h3>

	<p>/로 시작 안함</p>
	<p>현재 파일 기준</p>
	<%@ include file="01sub.jsp"%>

	<p>03module 폴더 include</p>
	<%@ include file="../03module/02sub.jsp"%>

</body>
</html>





