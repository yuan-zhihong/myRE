<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<html>
  
  <body>
    <%
      String str=request.getParameter("num");
      int number =Integer.parseInt(str);
     %>
    �����ֵ�ƽ��Ϊ��<%=number*number%><hr>
  </body>
</html>
