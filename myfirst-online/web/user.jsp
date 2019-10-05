<%@ page import="com.web.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        .explore {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: rgb(237, 244, 237);
            height: 80px;
            padding-left: 8%;
            padding-right: 10px;
        }

        .nav {
            display: flex;
            align-items: center;
            list-style: none;
        }

        .nav li {
            color: rgb(61, 133, 73);
            font-size: 18px;
            margin-right: 20px;
        }

        .search-input {
            flex: 0 0 30%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
            color: rgb(187, 187, 202);
            font-size: 16px;
        }

        .info {
            display: flex;
        }

        .profile {
            width: 80px;
            height: 80px;
            border-radius: 5px;
        }

        h2 {
            color: rgb(73, 73, 73);
            margin-left: 15px;
        }

        .info-box {
            display: flex;
            padding: 10px 10px 10px 10px;
            width: 98%;
            height: 240px;
            border: 1px solid #eee;
            border-radius: 5px;
            /*background-color: rgb(237, 244, 237);*/
        }

        .info-box .top1 {
            height: 100%;
            display: flex;
            flex: 0 0 33.33%;
             /*border-bottom: 1px solid #e4e6e5;*/
         }
        .info-box .top2 {
            height: 100%;
            display: flex;
            flex: 0 0 66.66%;
            flex-direction: column;
            /*border-bottom: 1px solid #e4e6e5;*/
        }
        .info-box .top2 .row0{
            width: 85%;
            margin: 0 auto;
            display: flex;
            flex-direction: row;
            justify-content: flex-start;
            align-items:center;
            /*justify-content: space-between;*/
        }

        .info-box .top1 img {
            width: 95%;
            height: 95%;
            margin-right: 5px;
            border-radius: 5px;
        }

        p {
            font-size: 13px;
            color: #333;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .item {
            height: 80px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        .read {
            border-bottom: 1px solid #eee;
        }

        .read a {
            color: rgb(51, 119, 170);
            text-decoration: none;
        }

        .container {
            width: 85%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
        }
        #top{
            position: -webkit-sticky;
            position: sticky;
            top: 0;
        }
        .music{
            width: 100%;
            height: 650px;
        }
    </style>
</head>
<body>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>

<%--顶部区域，引入共用的top.jsp页面--%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<%--浏览区域--%>
<div class="explore">
    <ul class="nav">
        <li>首页</li>
        <li>浏览发现</li>
        <li>话题广场</li>
        <li>我的豆瓣</li>
    </ul>
    <label>
        <input type="text" placeholder="搜索你感兴趣的内容和人" class="search-input">
    </label>
</div>
<br>

<%--页面主题区域--%>
<div class="container">
    <div class="row">
        <%--左侧1/4区域--%>
        <div class="col-3">
            <div class="info">
                <img src="images/${user.avatar}" alt="" class="profile">
                <h2>${user.nickname}</h2>
            </div>
            <br>
            <div class="item">
                <ul class="nav">
                    <li>我的日记</li>
                </ul>
                <p>在豆瓣上写日记，记录自己的生活、想法。</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>我的相册</li>
                </ul>
                <p>可以有自己的相册来存放照片了。</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>我读</li>
                </ul>
                <p>5本想读</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>留言板</li>
                </ul>
                <label>
                    <textarea cols="20" rows="5"></textarea>
                </label>
                <div>
                    <input type="button" value="留言">
                </div>
            </div>
        </div>

        <%-- 右侧3/4区域--%>
        <div class="col-9">
            <div class="info-box">
                <div class="top1">
                    <img src="images/${user.avatar}" alt=""  >
                </div>
                <div class="top2">
                    <div class="row0"></div>
                    <div class="row0">
                        <img src="images/${user.avatar}" alt="" class="profile">
                        <h2>${user.nickname}</h2>
                        <hr>
                        <p>${user.joinDate}加入</p>

                    </div>
                    <div class="row0">

                        <p>账号：${user.account}</p>

                    </div>
                    <div class="row0">
                        <p>常居：${user.address}</p>
                    </div>
                </div>
            </div>
            <br>
            <hr>
            <img class="music" src="images/music_item.jpg" alt="">
            <div class="item">
            <ul class="nav">
                <li>我的广播· · · · · · (全部)</li>
            </ul>

            <div class="read">
                <p><a href="">${user.nickname}</a>想读
                    <a href="">写给大忙人的Java SE 8</a>
                </p>
                <p style="color: #9b9b9b;">2018年1月2日</p>
            </div>
            <div class="read">
                <p><a href="">${user.nickname}</a>想读
                    <a href="">写给大忙人的Java SE 8</a>
                </p>
                <p style="color: #9b9b9b;">2018年1月2日</p>
            </div>
            <div class="read">
                <p><a href="">${user.nickname}</a>想读
                    <a href="">写给大忙人的Java SE 8</a>
                </p>
                <p style="color: #9b9b9b;">2018年1月2日</p>
            </div>
        </div>
        </div>
    </div>
</div>
</body>
</html>
