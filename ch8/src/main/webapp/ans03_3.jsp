<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
    
     �ɹ��˳���
   <%
    String accounts=(String)session.getAttribute("myaccount");
    List<String> list = (List) application.getAttribute("yh");
    list.remove(accounts);
   //application.setAttribute("yhm", name + "�뿪������!");
   %>
    <a href="ans03.jsp">���µ�¼</a>
</body>
</html>
