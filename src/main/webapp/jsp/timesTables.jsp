<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%-- 스크립틀릿, 표현식 jstl, el --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	td{
		margin : 10px;
		padding : 10px;
		border : 1px solid black;
	}
</style>
</head>
<body>
	times tables.jsp
	<table>
		<c:forEach begin="1" end="9" var="i">
			<tr>
			<c:forEach begin="2" end="9" var="j">
				<td> ${j } * ${i } = ${i*j } </td>
			</c:forEach>
		</c:forEach>
<%-- 		<% for(int i = 1; i <= 9; i++){ %> --%>
<!-- 			<tr> -->
<%-- 			<% for(int j = 2; j <= 9; j++){ %> --%>
<%-- 				<td> <%= j %> * <%= i %> = <%= i*j %> </td>  --%>
<%-- 			<% } %> --%>
<!-- 			</tr> -->
<%-- 		<% } %> --%>
	</table>
</body>
</html>