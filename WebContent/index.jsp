<%@page import="com.jh.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- <a href = "./point/pointList.jsp">Point List</a>
	<a href = "./notice/noticeList.jsp">Notice List</a>-->
	<%@ include file="./layout/nav.jsp" %>
<%-- 	<% MemberDTO memberDTO = (MemberDTO)session.getAttribute("member"); %>  중복--%>
	
	
	
	<div class = "container">
	<% if(memberDTO != null) {%>
		<h1>After Success Login</h1>	
		<%}else { %>
		<h1>Before Login</h1>
		<%}%>
	</div>	


</body>
</html>