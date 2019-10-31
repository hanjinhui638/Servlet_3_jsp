<%@page import="com.jh.point.PointDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	PointDTO pointDTO = (PointDTO)request.getAttribute("dto");		/*  object를 PointDTO로 형변환 다형성  */

%>    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script type="text/javascript">
//DTO가 null일때 

<% if(pointDTO == null){%>
		alert(pointDTO);
		location.href = "./pointList.jsp";
 <%}%>

</script>
</head>
<body>
	<div class="container">
  <div class="jumbotron">
    <h1>Point Select Page</h1>      
    	<ul>
    		<li>NUM : <%= pointDTO.getNum( )%></li>
    		<li>NAME: <%= pointDTO.getName() %></li>
    		<li>KOR: <%= pointDTO.getKor() %></li> 
    		<li>ENG: <%= pointDTO.getEng() %></li>
    		<li>MATH: <%=pointDTO.getMath() %></li>
    		<li>TOTAL: <%= pointDTO.getTotal() %></li>
    		<li>AVG: <%=pointDTO.getAvg() %></li>
    		
    	
    	</ul>
    
 	</div>
 		<div>
 			<a class ="btn btn-danger" href="./pointUpdate.jsp?num=<%= pointDTO.getNum() %>">Update</a>
 			<a href="./pointDeleteResult.jsp?num=<%= pointDTO.getNum( )%>" class ="btn btn-primary">Delete</a>
 		
 		</div>
 	
 	     
</div>

</body>
</html>