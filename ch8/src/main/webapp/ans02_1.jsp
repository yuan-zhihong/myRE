<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
       
          <%
            if(session.getAttribute("account")==null){
                response.sendRedirect("ans02.jsp");
            }
           %>
      ��ӭ<%=session.getAttribute("account") %>����ϵͳ��<hr>
  <form action="ans02.jsp" >
    <input type="submit" value="�˳�">
  </form>
</body>
</html>
