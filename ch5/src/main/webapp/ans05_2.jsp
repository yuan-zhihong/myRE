<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
  <%
     String account2=request.getParameter("useraccount");
     String name=request.getParameter("username");
     out.println("�û����˺�:"+account2);
     out.println("�û�������:"+name);
   %>
  </body>
</html>