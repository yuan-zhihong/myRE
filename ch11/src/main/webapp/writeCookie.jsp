<%@ page contentType="text/html; charset=gb2312"%>
<html>
	<body>
		<%
			//��Cookie�ڷŽ�����
			
			//ʵ����һ��Cookie
			Cookie cookie1 = new Cookie("account","Jack");
			Cookie cookie2 = new Cookie("password","123456");
			//���Cookie���ͻ���
			response.addCookie(cookie1);
			response.addCookie(cookie2);
		%>
		Cookie�ɹ�д���ͻ���
	</body>
</html>
