<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="sample01.Mybook"%>
<% request.setCharacterEncoding("utf-8");%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resource/css/icon/css/all.css">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Mybook> list = new ArrayList<>();
	list.add(new Mybook("ABC", 30000));
	list.add(new Mybook("JAVA", 20000));
	list.add(new Mybook("JSP",10000));
	list.add(new Mybook("SPRING", 70000));
	%>
	<ul>
		<%
			for (int i = 0; i < list.size(); i++) {
			request.setAttribute("book",list.get(i));
		%>
	<jsp:include page="07sub.jsp"></jsp:include>
		<%
			}
		%>
	</ul>

</body>
</html>