<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
		String userid = request.getParameter("id");
		String password = request.getParameter("password");
		
		if(userid !=null && password !=null){
			if(userid.equals("myid") && password.equals("mypassword")){
				out.print("<script>");				
				out.print("alert('login 성공')");
				out.print("</script>");
				%>
				<%
			}else{
				out.print("<script>");
				out.print("alert('아이디나 패스워드가 일치하지 않습니다')");
				out.print("</script>");
				%>
     <a href="<%= request.getContextPath() %>/02request/35login-form.jsp">35번 파일로 돌아가기</a>
				<%
			}
		}
	%>
	
</body>
</html>