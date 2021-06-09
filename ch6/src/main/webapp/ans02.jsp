<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8"%>
<html>
<body>

查询学生信息<br>
<form method="post">
    请输入学生姓名：<input type ="text" name="stuname"><br>
    <input type ="submit" value="查询">
</form>

<%request.setCharacterEncoding("utf-8"); %>
<%
    String stuname=request.getParameter("stuname");
    if(stuname!=null){
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/mybase?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC&useSSL=false";
        Connection conn = DriverManager.getConnection(url,"root","root");
        PreparedStatement stat=null;
        ResultSet rs=null;
        String sql="SELECT * FROM STUDENT where stuname like '%"+stuname+"%'";
        out.print(sql);
        stat=conn.prepareStatement(sql);
        rs=stat.executeQuery();
        while(rs.next()){
            String stuno=rs.getString(1);
            String stuname1=rs.getString(2);
            String stusex=rs.getString(3);
            out.println(stuno+" " +stuname1+" "+stusex+"<br>");
        }
        stat.close();
        conn.close();
    }

%>
</body>
</html>
