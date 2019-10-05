<%@ page import="java.util.List" %>
<%@ page import="com.web.entity.Music" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图片详情页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        h2, h3 {
            color: rgb(73, 73, 73);
        }

        #search {
            height: 80px;
            background-color: rgb(246, 246, 241);
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
        }

        .search-input {
            flex: 0 0 40%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
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


        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }

        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }

        .col-6 {
            height: 400px;
            padding-right: 10px;
        }

        .col-6 img {
            width: 100%;
            height: 100%;
            border-radius: 20px;
        }
    </style>
</head>
<body>
<%
    Music music = (Music) request.getAttribute("music");
    pageContext.setAttribute("music", music);
%>

<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div id="search">
    <h2>周二珂</h2>
    <input type="text" placeholder="搜索内容" class="search-input">
    <div class="search-btn">
        <img src="${pageContext.request.contextPath}/images/search.png" alt="">
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>${music.name}</h3>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/images/${music.cover}" alt="">
                </div>
                <div class="col-4">
                    <p>${music.singer}</p>
                </div>
                <audio controls>
                    <source src="voice/1.ogg" type="audio/ogg">
                    <source src="voice/1.mp3" type="audio/mpeg">
                    <embed height="50" width="100" src="horse.mp3">
                </audio>
            </div>
        </div>
        <div class="col-4">
            <h3>更多内容</h3>
            <hr>
            <img src="${pageContext.request.contextPath}/images/00.jpg" alt="">
        </div>
    </div>

</div>
</body>
</html>
