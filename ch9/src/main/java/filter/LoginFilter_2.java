package filter;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class LoginFilter_2 implements Filter {
    @Override
    public void init(FilterConfig config) throws ServletException {
    }

    @Override
    public void destroy() {
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("gb2312");
        HttpServletRequest req = (HttpServletRequest) request;
        Cookie[] cookies = req.getCookies();
        String account = "";
        String password = "";
        if (cookies != null && cookies.length != 0) {
            for (Cookie cookie : cookies) {
                System.out.println(cookie.getName() + "--" + cookie.getValue());
                if (cookie.getName().equals("account")) {
                    account = cookie.getValue();
                }
                if (cookie.getName().equals("password")) {
                    password = cookie.getValue();
                }
            }
        }

        if (!account.equals("") && !(password.equals("")) && account.equals(password)) {
            req.getRequestDispatcher("/index.jsp").forward(request, response);
        } else {
            req.getRequestDispatcher("/ans06.jsp").forward(request, response);
        }
    }
}
