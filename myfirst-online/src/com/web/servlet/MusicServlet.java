package com.web.servlet;

import com.web.entity.Music;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author yujie_zhao
 * @ClassName MusicServlet
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/music")
public class MusicServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获得各个Servlet共享的对象
        ServletContext sc = this.getServletContext();
        //取得全局应用对象中的变量
        List<Music> musicList = (List<Music>) sc.getAttribute("musicList");
        //存入request
        req.setAttribute("musicList", musicList);
        //通过服务器端转发，将数据带过去，并保持地址栏不变
        req.getRequestDispatcher("/music.jsp").forward(req, resp);
    }
}
