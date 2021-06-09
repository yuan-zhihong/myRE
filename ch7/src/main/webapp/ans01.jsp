<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<body>
<%
    String remoteAddr = request.getRemoteAddr();
    if(remoteAddr.startsWith("192.")){
        System.out.println("访问禁止！");
    }
%>

</body>
</html>
