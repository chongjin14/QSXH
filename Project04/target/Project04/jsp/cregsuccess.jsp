<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8" />
    <title>牵手西湖婚恋交友网</title>
    <base href="<%=basePath%>">
    <meta name="Keywords" content="牵手西湖婚恋交友网" />
    <meta name="Description" content="牵手西湖婚恋交友网"/>
    <link type="image/x-icon" rel=icon href="images/icon.png" />
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <style>
        .main-log{ height: 390px; width: 350px; margin-bottom: 30px;}
        .main-logbox{ width: 300px;}
        .main-userBase-input{ width: 270px;}
        .main-log .tit{ height: 50px; line-height: 50px; font-size: 24px;}
        .login-left{ width: 650px;}
        .login-left img{ margin: 90px 0px 0px 200px;}
    </style>
</head>
<body>
<div class="head">
    <div class="top">
        <div class="top-left">

        </div>
        <div class="top-right">
            <a href="">注册</a> |
            <a href="">登录</a>
        </div>
    </div>
    <div class="top-ban">
        <div class="top-mid-box">
            <a href="" class="logo"><img src="images/logo.png"/></a>
            <div class="adv"><img src="images/adv.png"/></div>
        </div>
    </div>
</div>
<div class="nav-box">
    <div class="nav">
        <a href="">网站首页</a>
        <a href="">了解我们</a>
        <a href="">条件搜索</a>
        <a href="">智能匹配</a>
        <a href="">会员服务 </a>
        <a href="">活动专题 </a>
        <a href="">我的消息 </a>
        <a href="">个人中心</a>
    </div>
</div>
<div class="main">
    <div class="main-box1">
        <div class="regsucc">
            <p>恭喜您，您的注册信息已经提交成功 ！</p>
            <p>管理员快速审核当中</p>
            <p>请耐心等待</p>
            <a href="">关于我们-了解更多信息>></a>
        </div>
    </div>
</div>

<div class="copy">
    <p>Copyright©2019  厦门牵手西湖婚恋交友网  版权所有</p>
    <p>地址：厦门市软件园二期观日路56号  电话：400-000-000 技术支持：<a target="_blank" href="http://www.cykjgroup.com/">传一科技</a></p>
</div>
</div>
</body>
</html>

