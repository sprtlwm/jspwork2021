<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="<%= request.getContextPath() %>/resource/css/icon/css/all.css">
<title>Insert title here</title>
<style>
	.menu{
		border: 5px solid red;
		display: flex;
	    font-size: 16px;
	    padding: 14px;
	    position: relative;
        }
	}


</style>
</head>

<body>

<jsp:include page="/03module/04include-ex-sub.jsp"></jsp:include>


<div>main 페이지 컨텐츠</div>


</body>
</html>