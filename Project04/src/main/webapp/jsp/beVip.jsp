<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8"/>
    <title>会员服务中心</title>
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

        <div class="s-address">会员服务中心</div>
        <form action="AccountAction/bevip2.action" method="post">

        <div class="main-box1" style="width:800px; height:400px; ">

            <span>尊敬的用户 ${sessionScope.userBase.uname}，您的身份是 ${role}</span><br><br><br><br><br><br><br>
            <li>
                <span>

                                <c:choose>
                                    <c:when test="${ roleid eq '4'}">
<%--                                        <a>${ sessionScope.userBase.uname },欢迎您！</a>|--%>
<%--                                        <a href="testManager/outLogin.action">注销</a>--%>
                                        <h1>您已经是我们的尊贵的VIP会员，请尽情的享受本站为您带来的便利</h1>
                                    </c:when>
                                    <c:otherwise>
                                        <h1>开通VIP，立享查看对方相册，发起约会，在线聊天，多条件搜寻您的一种人的功能！</h1><br><br><br>

                                        <label><input type="radio" name="vip" value="1"  onchange="hiddenXX()" >开通1个月（100金币）</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br><br><br>
                                        <label><input type="radio" name="vip" value="2"  onchange="hiddenXX()"  >开通6个月（500金币）</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </c:otherwise>
                                </c:choose>
                </span>
            </li>
            <br><br><br><br><br><br><br>
            <div class="btn-box" id="ok" hidden="hidden">
                <button class="save-btn"  onClick="document.myForm.submit();">确认开通</button>
            </div>

        </div>
        </form>
    </div>
    <div class="copy">
        <p>Copyright©2019  厦门牵手西湖婚恋交友网  版权所有 </p>
        <p>地址：厦门市软件园二期观日路56号  电话：400-8282-8888</p>
    </div>
    <script type="text/javascript">
        function hiddenXX(){
            $("#ok").show();
        }
    </script>
</div>
</body>

<%
    if (request.getAttribute("flog") == "success") {%>
<script>
    alert("购买VIP成功!");
</script>
<%} else if (request.getAttribute("flog") == "nomoney") {%>
<script>
    alert("金币不足，请充值");
</script>
<%} else if (request.getAttribute("flog") == "error") {%>
<script>
    alert("网络错误");
</script>
<%}%>

</html>

