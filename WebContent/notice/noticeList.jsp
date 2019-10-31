<%@page import="java.util.ArrayList"%>
<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jh.notice.NoticeDAO"%>
<%@page import="com.jh.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	NoticeDAO noticeDAO = new NoticeDAO();
	Connection con = DBConnector.getConnection();
	
	ArrayList<NoticeDTO> ar = noticeDAO.noticeList(con);




%>
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
	<div class="container">
		<h2>Notice List</h2>
		<table class="table">
			<thead>
				<tr>
					<th>NUM</th>
					<th>TITLE</th>
					<th>WRIGHT</th>
					<th>DATE</th>
					<th>HIT</th>
				</tr>
			</thead>
			<tbody>
				<% 
					for(int i=0; i<ar.size();i++){
						NoticeDTO noticeDTO = ar.get(i);
						
						%>
				<tr>
					<td><%= noticeDTO.getNum() %></td>
					<td><a href = "./noticeSelect.jsp?num=<%= noticeDTO.getNum()%>"><%= noticeDTO.getTitle() %></a></td>
					<td><%= noticeDTO.getWriter()%></td>
					<td><%= noticeDTO.getReg_date()%></td>
					<td><%= noticeDTO.getHit()%></td>
				</tr>
				
				
					<% }%>
				
			</tbody>
		</table>
			<a href = "./noticeWrite.jsp" class="btn btn-primary">Write</a>
		
	</div>





	</body>
</html>