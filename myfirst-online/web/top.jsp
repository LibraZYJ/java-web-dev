<%@ page import="com.web.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>
<ul class="menu">
    <li>
        <a href="${pageContext.request.contextPath}/index">首页</a>
    </li>

    <li>
        <a href="${pageContext.request.contextPath}/music">专辑</a>
    </li>
    <li>
        <a href="#">排行榜</a>
    </li>
    <li>
        <a href="#">歌手</a>
    </li>
    <li>
        <a href="#">下载</a>
    </li>
    <li>
        <a href="#">收藏</a>
    </li>
    <li>
        <a href="#">更多</a>
        <ul>
            <li>
                <div class="b1">

                </div>
                <a href="#">个性主题</a>
            </li>
            <li>
                <div class="b2">

                </div>
                <a href="#">关于我们</a>
            </li>
            <li>
                <div class="b3">

                </div>
                <a href="#">客服咨询</a>
            </li>
        </ul>
    </li>
</ul>
<ul class="right">
    <%--根据user是否为空，显示不同的内容--%>
    <%
        if (user != null) {
    %>
    <li>
        <a href="${pageContext.request.contextPath}/user">
            <img src="${pageContext.request.contextPath}/images/${user.avatar}" alt="" class="avatar">
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/logout">注销</a>
    </li>
    <%
    } else {
    %>
    <a href="${pageContext.request.contextPath}/login">登录</a>
    <%
        }
    %>
</ul>
