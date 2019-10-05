<%@ page import="com.web.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        @font-face {
            font-family: 'iconfont';  /* project id 1432362 */
            src: url('//at.alicdn.com/t/font_1432362_kn630vy5b3q.eot');
            src: url('//at.alicdn.com/t/font_1432362_kn630vy5b3q.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1432362_kn630vy5b3q.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1432362_kn630vy5b3q.woff') format('woff'),
            url('//at.alicdn.com/t/font_1432362_kn630vy5b3q.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1432362_kn630vy5b3q.svg#iconfont') format('svg');
        }
        .iconfont{
            font-family:"iconfont" !important;
            font-size:16px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;
        }
        .containerUser {
            width:70%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
        }


        .explore {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: rgb(237, 244, 237);
            height: 80px;
            padding-left: 8%;
            padding-right: 10px;
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
        .userLeft{
             display: flex;
             flex-direction: column;
             border: 1px solid #eee;
         }
        .userLeft .item1{
            margin-top: 25px;
            justify-content: center;

        }
        .userLeft .item1 .nav{
            justify-content: center;
            margin-left: 30px;
            margin-top: 10px;

        }
        .nav {
            display: flex;
            align-items: center;
            list-style: none;

        }
        .nav li {
            color: rgb(43, 43, 43);
            font-size: 18px;
            margin-right: 20px;
        }
        .info {
            display: flex;
            margin-top: 15px;
            margin-left: 70px;
            height: 10px;
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
        p {
            font-size: 13px;
            color: #333;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .item {
            display: flex;
            flex-direction: column;
            align-items: center;
            height: 200px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
            justify-content: center;
            /*background-color: #aaaaaa;*/

        }
        .bottomitem {
            display: flex;
            flex-direction: column;
            height: 200px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-left: 20px;
            padding-top: 10px;
            padding-bottom: 10px;
            justify-content: center;
            /*background-color: #333333;*/

        }
        .userLeft .item .nav{
            justify-content: center;
            margin-left: 30px;
            margin-top: 10px;
        }
        .userLeft .item .newitem{
            justify-content: center;
            margin-left: 30px;
            margin-top: 10px;
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
        <li>排行榜</li>
        <li>我的音乐</li>
        <li>我的网易云</li>
    </ul>
    <label>
        <input type="text" placeholder="搜索你感兴趣的内容和人" class="search-input">
    </label>
</div>
<br>

<%--页面主题区域--%>
<div class="containerUser">
    <div class="row">
        <%--左侧1/4区域--%>
        <div class="col-3 userLeft">
            <div class="info">
<%--                <img src="images/${user.avatar}" alt="" class="profile">--%>
                <h2>${user.nickname}</h2>
            </div>
            <br>
            <div class="item1">
                <ul class="nav">
                    <li>我的歌手(99+)</li>
                </ul>
                <ul class="nav">
                    <li>我的电台(99+)</li>
                </ul>
                <ul class="nav">
                    <li>我的视频(99+)</li>
                </ul>
                <ul class="nav">
                    <li>我的关注(99+)</li>
                </ul>
            </div>
            <div class="item">
                <ul class="nav">
                    <li><i class="iconfont">&#xe60f;</i>我的创建的歌单</li>
                </ul>
                <div class="newitem">
                    <P>我喜欢的音乐</P>
                </div>
                <div class="newitem">
                    <P>我喜欢的音乐</P>
                </div>
                <div class="newitem">
                    <P>我喜欢的音乐</P>
                </div>
                <div class="newitem">
                    <P>我喜欢的音乐</P>
                </div>


            </div>
            <div class="item">
                <ul class="nav">
                    <li><i class="iconfont">&#xe60f;</i>收藏的歌单</li>
                </ul>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>留言板</li>
                </ul>
                <label class="nav">
                    <textarea cols="20" rows="5" ></textarea>
                </label>
                <div class="nav">
                    <input type="button" value="留言" >
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
                    <div class="row0">
                        <i class="iconfont" style="color: red;font-size: 50px">&#xe650;</i>
                        <h1>网易云音乐</h1>
                    </div>
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
            <div class="bottomitem">
                <ul class="nav">
                <li>评论>>>>>(全部)</li>
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
