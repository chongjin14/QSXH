<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/23
  Time: 1:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <meta charset="utf-8" />
    <title>牵手西湖婚恋交友网</title>
    <meta name="Keywords" content="牵手西湖婚恋交友网" />
    <meta name="Description" content="牵手西湖喜婚恋交友网"/>
    <base href="<%=basePath%>"/>
    <link type="image/x-icon" rel=icon href="images/icon.png" />
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <style>
        .main-log{ height: 390px; width: 350px; margin-bottom: 30px; background: #fff;}
        .main-logbox{ width: 300px;}
        .main-userBase-input{ width: 270px;}
        .main-log .tit{ height: 50px; line-height: 50px; font-size: 24px;}
        .login-left{ width: 650px;}
        .login-left img{ margin: 90px 0px 0px 200px;}
    </style>
    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
    <%--提交--%>
    <script type="text/javascript">
        var flag = false;
        $(document).ready(function(){
            $("#regBtn").click(function(){
                alert("提交注册表单");
                var allcheck = checkPhone() && checkPass() && checkRePass();/*提交前进行表单验证*/
                if(allcheck)
                {
                    var phone = $("#phone").val();
                    var password = $("#password").val();
                    $.ajax({
                        type : "GET",
                        contentType : 'application/json;charset=UTF-8',
                        data : {"phone" : phone , "password" : password},
                        url : "<%=path%>/regManager/reg.action",
                        dataType:"json",
                        success : function(data) {
                            if(data.msg == "success")
                            {
                                alert("注册成功！");
                                /*跳转到首页或者提示完善资料页*/
                            }
                            else if(data.msg == "fail")
                            {
                                alert("注册失败，请重新注册！");
                            }
                        }
                    });
                }
                else
                {
                    alert("填写有误，请重新填写！");
                }
            });
        });

        <%--账号不为空、格式与重复验证--%>
        function checkPhone()
        {
            var phone = $("#phone").val();
            var test = /^1([38]\d|5[0-35-9]|7[3678])\d{8}$/;/*正则表达式*/
            if(null == phone || 0 == phone.length)
            {
                // alert("手机号不可为空！");
                $("#phoneError").html("手机号不可为空！");
                flag = false;
            }
            else if(!test.test(phone))
            {
                $("#phoneError").html("手机号格式不正确！");
                // alert("手机号格式不正确！");
                flag = false;
            }
            else
            {
                $.ajax({
                    type : "GET",
                    contentType : 'application/json;charset=UTF-8',
                    data : {"phone" : phone},
                    url : "<%=path%>/regManager/checkPhone.action",
                    dataType:"json",
                    success : function(data) {
                        if(data.msg == "success")
                        {
                            // alert("此手机号可用");
                            $("#phoneError").html("此手机号可用！");
                            flag = true;
                        }
                        else if(data.msg == "fail")
                        {
                            // alert("此手机号已被注册！");
                            $("#phoneError").html("此手机号已被注册！");
                            flag = false;
                        }
                    }
                });
            }
            return flag;
        }
        <%--密码不为空、格式验证--%>
        function checkPass()
        {
            var password = $("#password").val();
            var test=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,18}$/;/*正则表达式*/
            if(null == password || 0 == password.length)
            {
                // alert("密码不可为空！");
                $("#passError").html("密码不可为空！");
                return false;
            }
            else if (!test.test(password))
            {
                // alert("密码格式不正确，必须为6-18位字母、数字的组合！")
                $("#passError").html("密码格式不正确，必须为6-18位字母、数字的组合！");
                return false;
            }
            else
            {
                $("#passError").html("密码格式正确!");
                return true;
            }
        }
        <%--重复密码验证--%>
        function checkRePass() {
            var pass = $("#password").val();
            var repass = $("#repassword").val();
            if(null == repass || 0 == repass.length)
            {
                // alert("请输入重复密码！");
                $("#repassError").html("请输入重复密码！");
                return false;
            }
            else if(pass != repass)
            {
                // alert("两次密码不一致！");
                $("#repassError").html("两次密码不一致！");
                return false;
            }
            else
            {
                $("#repassError").html("两次密码一致！");
                return true;
            }
        }
    </script>
</head>
<body>
<div class="head">
    <div class="top">

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
    <div class="main-box1">
        <div class="login-left"><img src="images/loginpic.png"/></div>
        <div class="login-right">
<%--            <img src="images/mmlogo.png"  style="margin-left: 30px;"/>--%>
            <div class="main-log">
                <div class="tit">免费注册</div>
                <%--注册表单--%>
                <form id="form" onsubmit="return false;">
                    <div class="main-logbox">
                        <i class="main-user1"></i>
                        <input placeholder="手机号码" type="text" class="main-userBase-input" name="phone" id="phone" onchange="checkPhone()">
                    </div>
                    <%--提示信息--%>
                    <span id="phoneError" style="color: red">请输入正确的手机号码，并确保是首次注册</span><p/>

                    <div class="main-logbox">
                        <i class="main-password"></i>
                        <input placeholder="登录密码" type="password" class="main-userBase-input" name="password" id="password" onchange="checkPass()">
                    </div>
                    <%--提示信息--%>
                    <span id="passError" style="color: red">请输入6-18位的数字与字母组合</span><p/>

                    <div class="main-logbox">
                        <i class="main-password"></i>
                        <input placeholder="再次输入密码" type="password" class="main-userBase-input" id="repassword" onchange="checkRePass()">
                    </div>
                    <%--提示信息--%>
                    <span id="repassError" style="color: red">请再次输入密码，两次密码需保持一致</span><p/>

                    <div class="main-logbox" style="border: 0;">
                        <input type="text" name="code" placeholder="手机验证码" class="yzm">
                        <button>获取验证码</button>
                    </div>
                    <div class="remember">
                        <input type="checkbox" checked="checked">
                        <label>我同意</label><a>服务协议</a>
                    </div>
                    <div class="login-btn">
                        <button id="regBtn">立即注册</button>
<%--                        <input type="button" id="regBtn" value="注册"/>--%>
                        <a href="">立即登录 ></a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="copy">
        <p>Copyright©2019  厦门牵手西湖婚恋交友网  版权所有 </p>
        <p>地址：厦门市软件园二期观日路56号  电话：400-8282-8888</p>
    </div>
</div>
</body>
</html>
