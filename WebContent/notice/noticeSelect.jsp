<%@page import="com.jh.notice.NoticeDTO"%>
<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%@page import="com.jh.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <% 
 	request.setCharacterEncoding("UTF-8");
 	response.setCharacterEncoding("UTF-8");
 	
 	int num = Integer.parseInt(request.getParameter("num"));
 	
 	NoticeDAO noticeDAO = new NoticeDAO();
 	Connection con = DBConnector.getConnection();
 	
 	NoticeDTO noticeDTO = noticeDAO.noticeSelect(con, num);
 	
 	con.close();
 	
 	
 	
 	if(noticeDTO == null){
 		String message = "해당하는 글이 없습니다.";
 		request.setAttribute("msg", message);
 		request.setAttribute("path", "./noticeList.jsp");
 		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
 		view.forward(request, response);
 		
 	}else{
 		request.setAttribute("dto", noticeDTO);
 		
 		RequestDispatcher view = request.getRequestDispatcher("./noticeSelectResult.jsp");
 		view.forward(request, response);
 		
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