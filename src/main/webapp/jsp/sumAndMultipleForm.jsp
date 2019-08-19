<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${cp}/jsp/sum.jsp" method="get">
		숫자 1 : <input type="text" name="number"><br>
		숫자 2 : <input type="text" name="number2"><br>
		<input type="submit">
	</form>

	<form action="${cp}/jsp/mul.jsp" method="get">
		숫자 1 : <input type="text" name="number" value="5"><br>
		숫자 2 : <input type="text" name="number2" value="10"><br>
		<input type="submit">
	</form>
</body>
</html>