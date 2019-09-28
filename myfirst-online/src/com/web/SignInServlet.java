package com.web;

import com.web.User;
import com.web.UserService;
import com.web.Md5Util;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author zyj
 * @date 2019.9.20
 * 拦截/sign_in请求，获得表单传递的参数，进行登录功能验证
 * 成功则将URL跳转到/home，进入主页的Servlet
 * 否则跳回登录页面
 */
@WebServlet(urlPatterns = "/sign_in")
public class SignInServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        PrintWriter out = resp.getWriter();
        String account = req.getParameter("account");
        String password = req.getParameter("password");
        UserService userService = new UserService();
        User user = userService.signIn(account, Md5Util.crypt(password));
        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            resp.sendRedirect("/index");
        } else {
            out.print("<script>alert('账号或密码错误');location.href='/';</script>");
        }
    }
}