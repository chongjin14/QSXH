<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>充值服务中心</title>
    <base href="<%=basePath%>">
    <meta name="Keywords" content="牵手西湖婚恋交友网"/>
    <meta name="Description" content="牵手西湖婚恋交友网"/>
    <link type="image/x-icon" rel=icon href="images/icon.png"/>
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <script src="js/jquery-1.8.3.min.js"></script>
</head>
<body>
<div class="head">
    <div class="top">
        <div class="top-left">
        </div>
        <div class="top-right">

            <c:choose>
                <c:when test="${ sessionScope.userBase!=null }">
                    <a>${ sessionScope.userBase.uname },欢迎您！</a>|
                    <a href="testManager/outLogin.action">注销</a>
                </c:when>
                <c:otherwise>
                    <a href="">注册</a> |
                    <a href="">登录</a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>
    <div class="top-ban">
        <div class="top-mid-box">
            <a href="" class="logo"><img src="<%=basePath%>images/logo.png"/></a>
            <div class="adv"><img src="<%=basePath%>images/adv.png"/></div>

        </div>
    </div>
</div>
<div class="nav-box">
    <div class="nav">
        <a href="">网站首页</a>
        <a href="">条件搜索</a>
        <a href="">智能匹配</a>
        <a href="">我的关注</a>
        <a href="">个人中心</a>
        <a href="">我的消息</a>
        <a href="">会员服务</a>
        <a href="">活动专题</a>
    </div>
</div>
<div class="main">
    <div class="main-box1" style="width:1200px; height:600px;">
        <div class="s-address">充值服务中心</div>
        <div class="main-box1" style="width:800px; height:400px; ">

            <span>本站金币售价10金币/元，一次性充值1000金币以上可额外赠送100金币哦！</span><br><br><br><br><br><br><br>
            <li>
                <span>请输入您的充值金额:</span>
                <input type="text" class="conditon-select" id="chongzhi" />
            </li>
            <br><br><br><br><br><br><br>
            <div class="btn-box">
                <button class="save-btn"  onClick="Calc()">确认金额</button>
            </div>

        </div>
    </div>
    <div class="copy">
        <p>Copyright©2019  厦门牵手西湖婚恋交友网  版权所有 </p>
        <p>地址：厦门市软件园二期观日路56号  电话：400-8282-8888</p>
    </div>
</div>
<script type="text/javascript">
    function Calc() {
        var c = document.getElementById("chongzhi").value;
        var zhengshu=/^[1-9]\d*$/;
        if (zhengshu.test(c))
        {
            window.location.href="jsp/chongzhi2.jsp?chongzhi="+c;
        }else {
            alert("充值金额只能为正整数");
        }
    }
</script>
</body>
</html>

