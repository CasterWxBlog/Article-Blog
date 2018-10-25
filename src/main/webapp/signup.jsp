<%--
  Created by IntelliJ IDEA.
  User: 13252
  Date: 2018/10/24
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>加入宅舍</title>
    <link rel="stylesheet" href="bootstrap3/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap3/css/bootstrap-theme.min.css">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>
    <script src="markdown/dist/showdown.js"></script>
    <script src="bootstrap3/js/bootstrap.min.js"></script>
    <script src="bootstrap3/js/npm.js"></script>
</head>
<%
    String username = (String) session.getAttribute("name") ;
    Integer id = (Integer) session.getAttribute("id") ;
    if(username==null){
        username = "未登录" ;
    }
%>
<body style="background: url(image/bj.png) center 0 no-repeat; background-size: cover;background-attachment: fixed;">
<nav class="navbar navbar-inverse"  role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/">首页</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li><a href="#">归档</a></li>
                <li><a href="#">后宫</a></li>
                <li><a href="https://github.com/CasterWx">Github</a></li>
                <li><a href="http://www.cnblogs.com/LexMoon/">cnblog</a></li>
                <li><a href="/ourmessage">留言板</a></li>
            </ul>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a><span class="glyphicon glyphicon-user"></span><%=username%></a></li>
            <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
        </ul>
    </div>
</nav>
<div class="container">
    <div class="jumbotron" style="opacity:0.8;" >
        <div id="result">
            <h2 align="center">添加你的信息</h2><br><br>
            <h4>有什么话要对我说吗？这里是你畅所欲言的地方，可以咨询，可以交流，可以感叹，可以发飙，但不可以订外卖。</h4>
            <div align="center"><img  src="https://diygod.me/images/message0.jpg"></div>

            <form action="/signup" method="post" role="form">
                <div class="form-group">
                    <label for="name">用户名:</label>
                    <input type="text" class="form-control" name="name" placeholder="请输入用户名" required>
                </div>
                <div class="form-group">
                    <label for="password">密码:</label>
                    <input type="password" class="form-control" name="password" placeholder="请输入密码" required>
                </div>
                <div align="center">
                    <button type="submit" class="btn btn-success">注册</button>
                </div>
            </form>

        </div>
    </div>
</div>
</body>
</html>
