<%@ page language="java" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
<%
    //���ȼ��
    Cookie[] cookies = request.getCookies();
    String account = "";
    String password = "";
    if (cookies != null && cookies.length != 0) {
        for (int i = 0; i < cookies.length; i++) {
            if (cookies[i] != null) {
                if (cookies[i].getName().equals("account")) {
                    account = cookies[i].getValue();
                }
            }
            if (cookies[i] != null) {
                if (cookies[i].getName().equals("password")) {
                    password = cookies[i].getValue();
                }
            }
        }
    }
    if (!account.equals("") && !(password.equals(""))
            && account.equals(password)) {
        request.getRequestDispatcher("/ans03_1.jsp").forward(request,response);
    } else {
%>
��ӭ��¼
<form name="loginForm" action="ans05_2.jsp">
    �������˺ţ�<input name="account" type="text"><br> ���������룺<input
        name="password" type="password"><br> �Ƿ񱣴��¼״̬��<input
        type="radio" name="saveLoginState" value="1" checked="checked">��
    <input type="radio" name="saveLoginState" value="0">��<br>
    <input type="submit" value="��¼">
    <%
        }
    %>
</form>
</body>
</html>
