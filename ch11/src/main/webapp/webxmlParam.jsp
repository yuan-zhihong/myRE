<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		<%
			//��ȡweb.xml�е�ĳ������
			String account = application.getInitParameter("account");
			String password = application.getInitParameter("password"); 
		%>
		
		web.xml�ڵ�accountֵ:<%=account %><br>
		web.xml�ڵ�passwordֵ:<%=password %>
	</body>
</html>
