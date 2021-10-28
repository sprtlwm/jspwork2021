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
		<input type="number" name="num1" id="">
		<select name="operator" id="">
			<option value="plus">+</option>
			<option value="minus">-</option>
			<option value="times">X</option>
			<option value="divide">/</option>
		</select>
		<input type="number" name="num2" id="">
		<input type="submit" value="계산">
	</form>
	
	<hr>
	
	<%
        
        String num1 = request.getParameter("num1");
        String num2 = request.getParameter("num2");
        
        String operator = request.getParameter("operator"); //select 태그의 name 값 operator에 저장
        
        double res = 0;
        String opStr = "";
        
        if(num1 == null || num1.isEmpty()){
        	out.print("숫자를 입력해주세요.");
        	out.print("<br>");
        }else if(num2 ==null || num2.isEmpty()){
        	out.print("숫자를 입력해주세요.");
        	out.print("<br>");
        }else{
        	double d1 = Double.parseDouble(num1);
        	double d2 = Double.parseDouble(num2);
        
        switch (operator) {
    	case "plus" :
    		res = d1 + d2;
    		opStr = "+";
    		break;
    	case "minus" :
    		res = d1 - d2;
    		opStr = "-";
    		break;
    	case "times" :
    		res = d1 * d2;
    		opStr = "X";
    		break;
    	case "divide" :
    		res = d1 / d2;
    		opStr = "/";
    		break;
    	default :
    		
    	}
    }
    %>

    <div><%= num1 %> <%= opStr %> <%= num2 %> = <%= res %></div>

</body>
</html>