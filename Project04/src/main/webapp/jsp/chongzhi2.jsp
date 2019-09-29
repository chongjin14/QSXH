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
<%String chongzhi = request.getParameter("chongzhi");%>
<form action="AccountAction/rec.action" method="post">
<div class="head">
    <div class="top">
        <div class="top-left">
            <a href="javascript:;" class="top-coll" onclick="AddFavorite('', 'http://www.ncwjxhljyw.com')">收藏牵手西湖</a> |
            <a href="" class="top-att">关注牵手西湖</a>
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
            <a href="" class="logo"><img src="images/logo.png"/></a>
            <div class="adv"><img src="images/adv.png"/></div>

        </div>
    </div>
</div>
<div class="nav-box">
    <div class="nav">
        <a href="">网站首页</a>
        <a href="">了解我们</a>
        <a href="">搜索会员 </a>
        <a href="">婚恋课堂 </a>
        <a href="">活动专题 </a>
        <a href="">婚恋故事</a>
        <a href="">联系社区工作人员</a>
        <a href="">个人中心</a>
    </div>
</div>
<div class="main">
    <div class="main-box1" style="width:1200px; height:600px; ">
        <div class="s-address">充值服务中心</div>

        <div class="main-box1" style="width:800px; height:400px; ">
            <p>
                <input type="hidden" name="money" value="<%=chongzhi%>">
                <span>请选择您的支付方式：</span>
                <select class="conditon-select" id="select" onchange="hiddenXX()">
                    <option>请选择</option>
                    <option value="1">网上银行</option>
                    <option value="2">支付宝</option>
                    <option value="3">微信</option>
                </select>
            </p><br><br><br>
            <div class="btn-box" id="s0" >
                <h1>请选择您的充值方式</h1>
            </div>
            <div class="btn-box" id="s1" hidden="hidden">

                <br><br><br>
                <label><input type="radio" name="bank" value="1">工商银行</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label><input type="radio" name="bank" value="2">建设银行</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label><input type="radio" name="bank" value="3">农业银行</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <label><input type="radio" name="bank" value="4">中国银行</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br><br><br>
                <button class="save-btn">确定充值</button>
            </div>



            <div class="btn-box" id="s2" hidden="hidden">
                <br><br><br><h1>扫描支付宝二维码</h1>

                <br><br><br>
                <button class="save-btn">确定充值2</button>
            </div>



            <div class="btn-box" id="s3" hidden="hidden">
                <br><br><br>
                <h1>扫描微信二维码</h1>
                <br><br><br>
                <button class="save-btn">确定充值3</button>
            </div>



        </div>
    </div>
    <div class="nav-box">
        <div class="nav">
            <a href="">网站首页</a>
            <a href="">了解我们</a>
            <a href="">搜索会员 </a>
            <a href="">婚恋课堂 </a>
            <a href="">活动专题 </a>
            <a href="">婚恋故事</a>
            <a href="">联系社区工作人员</a>
            <a href="">个人中心</a>
        </div>
    </div>
    <div class="copy">
        <p>COPYRIGHT 2019  厦门牵手西湖婚恋交友网  版权所有 </p>
        <p>地址：厦门市软件园二期观日路56号  电话：xxx-xxxx-xxxx  </p>
    </div>
</div>
</form>
<script type="text/javascript">
    // var ss=request.getAttribute("chongzhi");
    // alert(ss);
    //这个方法用来当下拉框选择到填空和判断的时候隐藏选项一栏
    function hiddenXX(){
        var objS = document.getElementById("select"); //通过id获得这个元素
        var value = objS.options[objS.selectedIndex].value; //获得option中的值
        if(value == 1)  //选择何种支付方式，显示出相应的界面
        {
            $("#s1").show();
            $("#s2").hide();
            $("#s3").hide();
            $("#s0").hide();
        }
        else if(value == 2)
        {
            $("#s1").hide();
            $("#s2").show();
            $("#s3").hide();
            $("#s0").hide();
        }
        else if(value == 3){
            $("#s1").hide();
            $("#s2").hide();
            $("#s3").show();
            $("#s0").hide();
        }
        else {//如果是其他情况 都不显示
            $("#s1").hide();
            $("#s2").hide();
            $("#s3").hide();
            $("#s0").show();
        }
    }
</script>
</body>
</html>
