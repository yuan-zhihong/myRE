<%@ page language="java" import="java.util.*" contentType="text/html; charset=gb2312"%>
<html>
	<body>
       
             ��ӭ��¼
 
  <form action="ans02.jsp" method="post" >
    �������˺ţ�<input name="account" type="text"><br>
    ���������룺<input name="password" type="password"><br> 
 <input type="submit" value="��¼">
  </form>
  	<%
		String account =request.getParameter("account");
		String password =request.getParameter("password");
		if(account!=null){
		if(account.equals(password)){
			session.setAttribute("account",account);
			response.sendRedirect("ans02_1.jsp");
		}else{
			out.println("��¼ʧ��");
		}
		}
 %>
</body>
</html>
