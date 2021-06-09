package servlet;

import beans.Book;
import dao.BookDao;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


public class QueryServlet extends HttpServlet{

    //获取web.xml中保存的参数
    //此处仅获取值，在查询数据库时暂不使用这里的值
    public void init() throws ServletException {
        ServletContext application =this.getServletContext();
        String driverClassName=this.getInitParameter("driverClassName");
        System.out.println("driverClassName 参数是："+driverClassName);
        String url=this.getInitParameter("url");
        System.out.println("url 参数是："+url);
        String username=this.getInitParameter("username");
        System.out.println("username 参数是："+username);
        String password=this.getInitParameter("password");
        System.out.println("password 参数是："+password);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        PrintWriter out = response.getWriter();
        String bookname=request.getParameter("name");
        BookDao bookDao = new BookDao();
        try {
            ArrayList<Book> books = bookDao.queryBooksByName(bookname);
            request.setAttribute("books", books);
            request.getRequestDispatcher("/ans01.jsp").forward(request,response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
