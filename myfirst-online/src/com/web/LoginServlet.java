package com.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(urlPatterns = "/sign_do" )

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //处理请求乱码
        req.setCharacterEncoding("UTF-8");
        //通过req请求参数获取前台表单的用户名参数
        String username = req.getParameter("username");
        //取得密码参数
        String password = req.getParameter("password");
        if ("zyj".equals(username) && "111".equals(password)) {
            //通过request对象获取session会话对象
            HttpSession session = req.getSession();
            //把用户名存入session对象
            session.setAttribute("username", username);
            //进行重定向跳转（客户端跳转）
            resp.sendRedirect("index");//地址栏重定向
        } else{
            resp.setCharacterEncoding("UTF-8");
            resp.setContentType("text/html;charset=UTF-8");//账号或密码错误，跳转到登陆页面
            PrintWriter writer = resp.getWriter();
            writer.print("<script>alert('登录失败');location.href='/';</script>");

        }
    }

}
