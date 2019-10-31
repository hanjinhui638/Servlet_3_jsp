<%@page import="com.jh.point.PointDTO"%>
<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jh.point.PointDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	response.setCharacterEncoding("UTF-8");
 	
 	int num = Integer.parseInt(request.getParameter("num")); /*  parameter먼저 입력 */ 
 	
 	PointDAO pointDAO = new PointDAO();
 	Connection con = DBConnector.getConnection(); /* close 위해 선언 */
 	num = pointDAO.delete(con, num); 	/* num재활용 */
 	
 	con.close();
 	
 	String message= "Delete Fail";
 	
 	if(num>0){
 		message = "Delete Success";
 		request.setAttribute("msg", message); /* 보내기 전에 넣기  */
 		request.setAttribute("path", "./pointList.jsp");
 		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
 	 	view.forward(request, response);			
 	}else{
 		response.sendRedirect("./pointList.jsp"); 
 	}
 
 	//성공하면 성공메세지 alert List로 
 	//실패하면 List로 바로 이동 
 	
 
 		
 

 	
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