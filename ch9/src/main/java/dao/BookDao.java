package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import beans.Book;

public class BookDao {
    public ArrayList<Book> queryBooksByName(String bookname) throws Exception {
        Connection conn = null;
        ArrayList<Book> books= new ArrayList<Book>();
        try {
            //获取连接
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mybase?useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Shanghai&useSSL=false";
            conn = DriverManager.getConnection(url, "", "");
            // 运行SQL语句
            String sql = "SELECT id,BOOK_NAME,BOOK_PRICE from T_BOOK WHERE BOOK_NAME LIKE '%" + bookname + "%' ";
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery(sql);
            while (rs.next()) {
                //实例化VO
                Book book = new Book();
                book.setId(rs.getString("id"));
                book.setBookname(rs.getString("BOOK_NAME"));
                book.setBookprice(rs.getDouble("BOOK_PRICE"));
                books.add(book);
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
        return books;
    }
}
