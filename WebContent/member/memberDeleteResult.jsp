<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jh.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	response.setCharacterEncoding("UTF-8");
 	
 	String id =request.getParameter("id");
 	
 	MemberDAO memberDAO = new MemberDAO();
 	Connection con = DBConnector.getConnection();
 	int result = memberDAO.memberDelete(con, id);
 	
 	con.close();
 	
 	String message = "Delete Fail List";
 	if(result>0){
 		message = "Delete Success List";
 		request.setAttribute("msg", message);
 		request.setAttribute("path", "../index.jsp");
 		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
 		view.forward(request, response);	
 	}else{
 		response.sendRedirect("../index.jsp");
 		
 	}
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>