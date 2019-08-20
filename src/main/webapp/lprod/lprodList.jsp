<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<title>Insert title here</title>
<%@ include file="/commonJsp/basicLib.jsp" %>
<script>
	$(document).ready(function() {
		$('.prodTr').on('click', function() {
			
			//$('#prod_gu').val($(this).children().filter(':eq(1)').text())
			
			var dataValue = $(this).data("lprod_gu");
			console.log("dataValue : " + dataValue);
			
			$('#prod_gu').val(dataValue);
			
			$('#frm').submit();
		})
		
	})
</script>
</head>
<body>

	<form action="${cp}/prod" id="frm">
		<input type="hidden" id="prod_gu" name="prod_gu">
	</form>

	<!-- header -->
	<%@ include file="/commonJsp/header.jsp" %>
	
	<div class="container-fluid">
      <div class="row">
         
<div class="col-sm-3 col-md-2 sidebar">
   
	<!-- left -->
	<%@ include file="/commonJsp/left.jsp" %>
   
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            

<div class="row">
   <div class="col-sm-8 blog-main">
      <h2 class="sub-header">제품그룹리스트</h2>
      <div class="table-responsive">
         <table class="table table-striped">
            <tr>
               <th>LPROD_ID</th>
               <th>LPROD_GU</th>
               <th>LPROD_NM</th>
            </tr>
            <c:forEach items="${lprodList}" var="lprod" varStatus="loop">
            	<tr class="prodTr" data-lprod_gu="${lprod.lprod_gu }">
            		<td>${lprod.lprod_id}</td>
            		<td>${lprod.lprod_gu}</td>
            		<td>${lprod.lprod_nm}</td>
            </c:forEach>
            
         </table>
      </div>

      <a class="btn btn-default pull-right">사용자 등록</a>

      <div class="text-center">
         <ul class="pagination">
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
         </ul>
      </div>
   </div>
</div>
   </div>
      </div>
   </div>
</body>
</html>