package com.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet(urlPatterns = "/index")

public class IndexService extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Book[] books = {
                new Book("二珂1", "1.jpg", "二珂11"),
                new Book("二珂2", "2.jpg", "二珂22"),
                new Book("二珂3", "3.jpg", "二珂33"),
                new Book("二珂4", "4.jpg", "二珂44"),
                new Book("二珂5", "5.jpg", "二珂55"),
                new Book("二珂6", "6.jpg", "二珂66"),
                new Book("二珂7", "7.jpg", "二珂77"),
                new Book("二珂8", "8.jpg", "二珂88"),

        };
        List<Book> bookList = Arrays.asList(books);
        req.setAttribute("bookList",bookList);
        req.getRequestDispatcher("index.jsp").forward(req,resp);

    }
}
