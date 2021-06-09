<%@ page contentType="text/html; charset=utf-8"%>
<html>
	<body>
		<%
			//读取Cookie
			
			Cookie[] cookies = request.getCookies();
			for(int i = 0; i < cookies.length; i++){
				String cName = cookies[i].getName();
				String cValue = cookies[i].getValue();
		%>
			Cookie名称:<%=cName %>,
			Cookie值:<%=cValue %><BR>
		<%
			}
		%>
	</body>
</html>
