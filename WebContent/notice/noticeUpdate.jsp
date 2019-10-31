<%@page import="com.jh.point.PointDTO"%>
<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jh.notice.NoticeDAO"%>
<%@page import="com.jh.notice.NoticeDTO"%>
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
 
 
 %>   
    
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

<div class="container">
  <h2>Update Insert Page</h2>
  <form action="./noticeUpdateResult.jsp" method="post">
    <div class="form-group">
      <input type="hidden" name="num" value = "<%= noticeDTO.getNum() %>">
    </div>
    <div class="form-group">
    
      <label for="title">TITLE:</label>
      <input type="text" class="form-control" id="title" placeholder="Enter title" name="title" 
      value = "<%= noticeDTO.getTitle() %>">
    </div>
    
    <div class="form-group">
    
      <label for="contents">CONTENTS:</label>
      <textarea rows="10" cols="100" name="contents"><%= noticeDTO.getContents()%></textarea>
    </div>
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>