<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<%
				String account = request.getParameter("account");
				String password = request.getParameter("password");
				String saveLoginState = request.getParameter("saveLoginState");
				//����֤��¼��Ϣ
				if (account != null && account != "" && password != null
						&& password != "" && account.equals(password)) {
					//���û�ѡ��
					if (saveLoginState != null && saveLoginState.equals("1")) {
						Cookie aCookie = new Cookie("account",
								account);
						response.addCookie(aCookie);
						Cookie pCookie = new Cookie("password",
								password);
						response.addCookie(pCookie);
					}
					request.getRequestDispatcher("/index.jsp").forward(request,response);
				} else {
					request.getRequestDispatcher("/ans06.jsp").forward(request,response);
				}
		//response.sendRedirect("ans05_1.jsp");
%>
<body>
</body>
</html>