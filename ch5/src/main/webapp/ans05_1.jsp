<%@ page language="java" contentType="text/html; charset=gb2312"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  
  <body>
      <%
        String account1=request.getParameter("account");
      %>
     
  <form action="ans05_2.jsp" method="post">
  <input name="useraccount" type="hidden" value="<%=account1%>">
    �ѵ�¼�ɹ����������û�������<input name="username" type="text"><br>
  <input type="submit" value="ȷ��">
  </form>
   
  </body>
</html>