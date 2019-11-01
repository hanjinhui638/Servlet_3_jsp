<%@page import="com.jh.notice.NoticeDAO"%>
<%@page import="com.jh.member.MemberDTO"%>
<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jh.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="../layout/nav.jsp"%>

	<div class="container">
		<h2>Member Join Form</h2>
		<form action="./memberUpdateResult.jsp" method="post">

			<div class="form-group">
				<label for="id">Password:</label> <input type="text"
					readonly="readonly" value="<%=memberDTO.getId() %>"
					class="form-control" id="id" name="id">
			</div>

			<div>
				<label for="pw">Password:</label> <input type="password"
					class="form-control" id="pw" placeholder="Enter Password" name="pw"
					value="<%=memberDTO.getPw()%>">
			</div>

			<div class="form-group">
				<label for="name">Name:</label> <input type="text"
					class="form-control" id="name" placeholder="Enter Name" name="name"
					value="<%=memberDTO.getName()%>">
			</div>

			<div class="form-group">
				<label for="email">E-mail:</label> <input type="email"
					class="form-control" id="email" placeholder="Enter Email"
					name="email" value="<%=memberDTO.getEmail()%>">
			</div>

			<div class="form-group">
				<label for="phone">Phone:</label> <input type="tel"
					class="form-control" id="phone" placeholder="Enter Phone"
					name="phone" value="<%=memberDTO.getPhone()%>">
			</div>

			<button class="btn btn-info">Submit</button>

		</form>
	</div>

</body>
</html>