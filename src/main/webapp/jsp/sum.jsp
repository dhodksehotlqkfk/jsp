<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int num = Integer.parseInt(request.getParameter("number"));
		int num2 = Integer.parseInt(request.getParameter("number2"));
		
		int sum = 0;
		for(int i = num; i <= num2; i++){
			sum += i;
		}
	%>
	<h2>result : <%= sum %></h2>
</body>
</html>