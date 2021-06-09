<%@ page language="java" import="java.sql.*" contentType="text/html; charset=utf-8"%>
<html>
<body>
<%
  Class.forName("com.mysql.cj.jdbc.Driver");
  String url = "jdbc:mysql://localhost:3306/mybase?useUnicode=true&characterEncoding=utf8&serverTimezone=UTC&useSSL=false";
  try (Connection conn = DriverManager.getConnection(url,"root","root");
        Statement stat = conn.createStatement();) {
    String sql =
            "SELECT * FROM STUDENT";
    ResultSet rs = stat.executeQuery(sql);
    while (rs.next()) {
      String stuno = rs.getString("STUNO");
      String stuname = rs.getString("STUNAME");
      String stusex = rs.getString("STUSEX");
      System.out.println(stuno + " " + stuname + " " + stusex + "<BR>");
    }
  }
%>
</body>
</html>
