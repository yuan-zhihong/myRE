<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8"%>
<html>
<body>

学生登录<br>
<form method="post">
    请输入学生学号：<input type ="text" name="stuno"><br>
    请输入学生姓名：<input type ="text" name="stuname"><br>
    <input type ="submit" value="登录">
</form>

<%request.setCharacterEncoding("utf-8"); %>
<%
    String stuno=request.getParameter("stuno");
    String stuname=request.getParameter("stuname");
    if(stuno!=null&&stuname!=null){
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/mybase?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC&useSSL=false";
        Connection conn = DriverManager.getConnection(url,"root","root");
        PreparedStatement stat=null;
        ResultSet rs=null;
        String sql="SELECT * FROM STUDENT WHERE STUNO=?&&STUNAME=?";
        stat=conn.prepareStatement(sql);
        stat.setString(1,stuno);
        stat.setString(2,stuname);
        rs=stat.executeQuery();
        if(rs.next()){
            out.println("登录成功");
        }else{
            out.println("登录失败");
        }
        stat.close();
        conn.close();
    }

%>
</body>
</html>
