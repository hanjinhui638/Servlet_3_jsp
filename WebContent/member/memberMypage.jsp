<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>

<%@ include file="../layout/nav.jsp" %>

<!-- memberDTO 가 NULL이면 index로 이동 작성-->
<%
	if(memberDTO == null){
		request.setAttribute("msg", "권한없음");
		request.setAttribute("path", "../index.jsp");
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	}

%>

<div class ="cotainer">
	<h1>ID : <%= memberDTO.getId() %></h1>
	<h1>NAME : <%= memberDTO.getName() %></h1>
	<h1>EMAIL : <%= memberDTO.getEmail() %></h1>
	<h1>PHONE : <%= memberDTO.getPhone() %></h1>
	<h1>GRADE : <%= memberDTO.getGrade() %></h1>

	<a class = "btn btn-primary" href = "./memberUpdateForm.jsp">수정</a>
	<a class = "btn btn-danger" href = "./memberDeleteResult.jsp">삭제</a>
</div>



</body>
</html>