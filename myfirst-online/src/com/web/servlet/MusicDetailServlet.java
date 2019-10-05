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
 * @ClassName MusicDetailServlet
 * @Description 音乐详情界面
 * @Date 2019/10/4
 * @Version 1.0
 **/
@WebServlet(urlPatterns = "/Music_detail/*")
public class MusicDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //获取请求的URI，并去除空格
        String requestPath = req.getRequestURI().trim();
        //获得最后一个"/"的位置
        int position = requestPath.lastIndexOf("/");
        //从该位置到最后取子串，也就是"/detail/3"中的3，有了这个id，就可以取集合中找到匹配的图书对象
        String id = requestPath.substring(position + 1);
        //从全局变量中取出图书列表
        ServletContext sc = this.getServletContext();
        List<Music> musicList = (List<Music>) sc.getAttribute("musicList");
        //遍历，查找指定id的图书
        for (Music music : musicList) {
            if (Integer.parseInt(id) == music.getId()) {
                //找到匹配的id，存入request，页面转发到图书详情页，地址栏不变
                req.setAttribute("music", music);
//                resp.setContentType("text/plain;charset=utf-8");
//                resp.getWriter().print(book);
                req.getRequestDispatcher("/Music_detail.jsp").forward(req, resp);
            }
        }
    }
}
