package com.web.listener;
import com.web.entity.Book;
import com.web.entity.Music;
import com.web.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author zyj
 * @ClassName ContextLoaderListener
 * @Description 上下文加载监听，在服务器启动的时候即刻生效，用来生成用户数据和图书数据
 * @Date 2019/9/27
 * @Version 1.0
 **/

@WebListener
public class ContextLoaderListener implements ServletContextListener {

    /**
     * @Description 容器初始化方法
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users = {
                new User(1, "111@qq.com", "698d51a19d8a121ce581499d7b701668", "shmily", "13.jpg", "江苏南京", LocalDate.of(2018, 6, 11)),
                new User(2, "222@qq.com", "698d51a19d8a121ce581499d7b701668", "小巷里的女流氓", "14.jpg", "浙江杭州", LocalDate.of(2019, 2, 18)),
                new User(3, "333@qq.com", "698d51a19d8a121ce581499d7b701668", "迷失的蒲公英", "15.jpg", "湖北武汉", LocalDate.of(2019, 8, 19))
        };
        userList = Arrays.asList(users);

        //创建并生成图书数据列表
        List<Book> bookList = new ArrayList<>(10);
        Book[] books = {
                new Book(1, "她ゝ那么高傲", "1.jpg", "001"),
                new Book(2, "庸人自扰", "2.jpg", "002"),
                new Book(3, "绿山墙的安妮", "3.jpg", "003"),
                new Book(4, "敌人与邻居", "4.jpg", "004"),
                new Book(5, "哀伤纪", "5.jpg", "005"),
                new Book(6, "漫长的婚约", "6.jpg", "006"),
                new Book(7, "庸人自扰", "7.jpg", "007"),
                new Book(8, "绿山墙的安妮", "8.jpg", "008"),
                new Book(9, "敌人与邻居", "9.jpg", "009"),
                new Book(10, "哀伤纪", "10.jpg", "010"),
                new Book(11, "漫长的婚约", "11.jpg", "011"),
                new Book(12, "庸人自扰", "12.jpg", "012")

        };
        bookList = Arrays.asList(books);

        List<Music> musicList = new ArrayList<>(6);
        Music[] music = {
                new Music(1,"走在冷风中","14.jpg","二珂"),
                new Music(2,"三角题","13.jpg","二珂"),
                new Music(3,"孤独他呀","15.jpg","二珂"),
                new Music(4,"樱花粉的浪漫","13.jpg","二珂"),
                new Music(5,"走在冷风中","14.jpg","二珂"),
                new Music(6,"我只是在睡前想了你一下","18.jpg","二珂")
        };
        musicList = Arrays.asList(music);

        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("bookList", bookList);
        servletContext.setAttribute("musicList", musicList);
    }

    /**
     * 销毁方法
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}
