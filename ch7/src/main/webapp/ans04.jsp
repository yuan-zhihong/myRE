<%@ page language="java" import="java.util.*,javax.servlet.http.*" contentType="text/html; charset=gb2312"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
<form action="ans04.jsp">
    ��ѡ�񱳾���ɫ��
    <select name="color">
        <option value="white">��ɫ</option>
        <option value="blue">��ɫ</option>
        <option value="red">��ɫ</option>
        <option value="green">��ɫ</option>
        <option value="yellow">��ɫ</option>
    </select>
    <input type="submit" value="�ύ">

</form>
<%
    String color1=request.getParameter("color");
    if(color1!=null){
        Cookie cookie=new Cookie("bgcolor1",color1);
        cookie.setMaxAge(60000);
        response.addCookie(cookie);
        response.sendRedirect("ans04_1.jsp");
    }
%>
</body>
</html>
