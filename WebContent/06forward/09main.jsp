<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<form action="">
	<input type="submit" value="전송">
</form>

<%
String pageCode = request.getParameter("code");

switch(pageCode){
	case "a":
%>		
	<jsp:forward page="09pagea.jsp"/>	
<%
	break;
	case "b":
%>
	<jsp:forward page="/WEB-INF/view/06forward/09pageb.jsp"/>
	<%
	break;
	
}
%>