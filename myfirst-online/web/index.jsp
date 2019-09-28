<%@ page import="com.web.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2019/9/23
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>主页</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        body{
            color:#333;
        }
        header{
            height: 60px;
            background-color:deepskyblue;
            display:flex;
            align-items:center;
            justify-content: space-between;
            padding-left: 10px;
            padding-right: 10px;
            text-decoration: none;
        }

        .nav{
            flex: 0 0 50px;
            list-style: none;
            display: flex;
        }
        .nav li{
            margin-left: 10px;
            margin-right: 0.625rem;
            width: 50px;
        }
        .user-info{
            padding-right:20px;
            display: flex;
            flex: 0 0 50px;
            list-style: none;
        }
        .nav li a{
            text-decoration:none;
            color:#eee;
        }
        .user-info h3 a{
            text-decoration:none;
            color:#eee;
        }
        .nav li a:hover{
            color:#fff;
        }
        .search-warp{
            height: 60px;
            background-color: #ddd;
            display:flex;
            align-items: center;
            padding-left:10%;
            margin-bottom: 10px;
        }

        .search-btn {
            width: 35px;
            height: 35px;
            background-color: rgb(155, 154, 143);
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .search-btn img {
            width: 50%;
            height: 50%;
        }
        .input-box{
            width: 200px;
            height: 40px;
            border:1px;solid:#fff;
            border-radius: 5px;
            margin-left:10px ;
        }
        .container{
            width: 80%;
            margin: 0 auto;
            background-color: #ddd;
            display: flex;
            padding: 5px 5px 5px 5px;
        }
        .box{
            flex: 0 0 20%;
            height: 280px;
            margin: 5px 5px 5px 5px;
            background-color:#fff;
            display: flex;
            flex-direction: column;
        }
        .box img{
            width: 100%;
            height: 70%;
        }
        .left{
            flex:0 0 66%;
            height:100%;
            background-color: #fff;
            padding:10px 10px 10px 10px;
        }
        .right{
            margin: 10px 5px 20px 5px;
            width: 80%;
            /*flex:0 0 auto;*/
            /*height: 100%;*/
            /*margin-left:15px;*/
            /*background-color:#aaa;*/
        }
        .row{
            display:flex;
            /* 自动换行 */
            flex-wrap:wrap;
            padding:5px 5px 5px 5px;
        }
        .column{
            flex:0 0 19%;
            height:220px;
            background-color:#aaa;
            border:1px;solid:#333;
            border-radius: 10px;
            margin:5px 5px 5px 5px;
        }
        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }
        h2, h3 {
            color: rgb(73, 73, 73);
        }
        footer{
            flex:1 1 10%;
            display: flex;
        }
    </style>
</head>
<body>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>
<%--顶部导航--%>
<%--<header>--%>
<%--    <jsp:include page="top.jsp"/>--%>
<%--        <div>--%>
<%--            <!-- 导航 -->--%>
<%--            <ul class="nav">--%>
<%--                <li>--%>
<%--                    <a href="#">首页</a>--%>

<%--                <li>--%>
<%--                    <a href="#">浏览</a>--%>

<%--                <li>--%>
<%--                    <a href="#">话题</a>--%>

<%--                <li>--%>
<%--                    <a href="#">我的</a>--%>

<%--                <li>--%>
<%--                    <a href="#">个人</a>--%>

<%--            </ul>--%>
<%--        </div>--%>
<%--        <div>--%>
<%--            <div class="user-info">--%>
<%--                <h3>zyj</h3>--%>
<%--                <h3><a href="${pageContext.request.contextPath}/">返回登陆</a></h3>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--</header>--%>
<!-- <搜索区> -->
<div class="search-warp">
    <h2>美好时刻</h2>
    <input type="text" placeholder="输入要搜索的内容" class="input-box">
    <div class="search-btn">
        <img src="images/search.png" alt="">
    </div>

</div>
    <%
   String username = (String) session.getAttribute("username");
   if (username !=null){
     pageContext.setAttribute("username",username);
  %>
${username}
    <%
   }else{
  %>
<%--<h3><a href="${pageContext.request.contextPath}/">返回登陆</a></h3>--%>
  <%
    }
  %>
<%--  <hr>--%>
  <%
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
    pageContext.setAttribute("size",bookList.size());
  %>
  一共${size}张照片
<%--主题内容--%>
<div class = "container">
    <div class="left">
        <h3>二珂小空间</h3>
        <hr>
       <div class="row">
            <%
                for (Book book : bookList) {
                    pageContext.setAttribute("book",book);
            %>
            <div class = "box">
                <img src="images/${book.cover}" alt = "">
                <p>${book.name}</p>
                <p>${book.author}</p>
            </div>
            <%
                }
            %>
        </div>
    </div>
    <div class="right">
        <h3>热门标签</h3>
        <hr>
        <img src="images/search.png" alt="">
    </div>

</div>
<!-- 脚注区 -->
<footer>
    <ul>
        <li>@2015-2019</li>
        <li>niit.edu.cn,</li>
        <li>all rights reserved</li>
        <li>南工院计算机学院</li>
    </ul>
    <ul>
        <li>联系我们</li>
        <li>帮助中心</li>
        <li>法律声明</li>
        <li>移动合作</li>
    </ul>
</footer>
  </body>
</html>
