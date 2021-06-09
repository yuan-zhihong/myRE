package ans14.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import ans14.beans.Student;
public class StudentDao {
	//模糊查询
	public ArrayList queryStudentsByName(String stuname) throws Exception {
		Connection conn = null;
		ArrayList students= new ArrayList();
		try {
			//获取连接
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/mybase?useUnicode=true&characterEncoding=utf8&serverTimezone=Asia&useSSL=false";
			conn = DriverManager.getConnection(url, "root", "root");
			// 运行SQL语句
			String sql = "SELECT STUNO,STUNAME,STUSEX from STUDENT WHERE STUNAME LIKE '%" + stuname + "%'";
			Statement stat = conn.createStatement();
			ResultSet rs = stat.executeQuery(sql);
			while (rs.next()) {
                //实例化VO
				Student student = new Student();
				student.setStuno(rs.getString("STUNO"));
				student.setStuname(rs.getString("STUNAME"));
				student.setStusex(rs.getString("STUSEX"));
				students.add(student);
			}
			rs.close();
			stat.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {// 关闭连接
				if (conn != null) {
					conn.close();
					conn = null;
				}
			} catch (Exception ex) {
			}
		}
		return students;
	}
	//删除学生信息
	public void deleteStudentByNo(String stuno) throws Exception {
		Connection conn = null;
		try {
			//获取连接
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/mybase?useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Shanghai&useSSL=false";
			conn = DriverManager.getConnection(url, "root", "root");
			// 运行SQL语句
			String sql = "DELETE FROM STUDENT WHERE STUNO= '" + stuno + "'";
			Statement stat = conn.createStatement();
			stat.executeUpdate(sql);
			stat.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {// 关闭连接
				if (conn != null) {
					conn.close();
					conn = null;
				}
			} catch (Exception ex) {
			}
		}
	}
}
