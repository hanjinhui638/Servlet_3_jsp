<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jh.member.MemberDAO"%>
<%@page import="com.jh.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	MemberDTO memberDTO = new MemberDTO();
	MemberDAO memberDAO = new MemberDAO();
	
	memberDTO.setId(request.getParameter("id"));
	memberDTO.setPw(request.getParameter("pw"));
	memberDTO.setName(request.getParameter("name"));
	memberDTO.setEmail(request.getParameter("email"));
	memberDTO.setPhone(request.getParameter("phone"));
	
	MemberDTO sessionDTO = (MemberDTO)session.getAttribute("member");
	memberDTO.setGrade(sessionDTO.getGrade());
	
 	Connection con = DBConnector.getConnection();
	int result = memberDAO.memberUpdate(con, memberDTO);
	
	con.close(); 
	String message = "Update Fail ";
	if(result>0){
		message = "Update Success";
		session.setAttribute("member", memberDTO);
	}
	
	request.setAttribute("msg", message);
	request.setAttribute("path", "../index.jsp");
	
	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
	view.forward(request, response);
	
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