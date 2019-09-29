<%--
  Created by IntelliJ IDEA.
  User: 17542
  Date: 2019/9/24
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: 17542
  Date: 2019/8/21
  Time: 23:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath()+"/";

    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="<%=path%>layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">管理后台</div>

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    ${sessionScope.user.uname}
                </a>

            </li>
            <li class="layui-nav-item"><a href="">注销</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">会员管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="<%=path%>jsp/admin/usermanage.jsp" target="main">普通会员管理</a></dd>
                        <dd><a href="<%=path%>jsp/admin/vipusermanage.jsp" target="main">VIP会员管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">审核</a>
                    <dl class="layui-nav-child">
                        <dd><a href="<%=path%>jsp/admin/" target="main">会员注册审核</a></dd>
                        <dd><a href="<%=path%>jsp/admin/" target="main">约会申请审核</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">消息推送</a>
                    <dl class="layui-nav-child">
                        <dd><a href="<%=path%>jsp/admin/" target="main">系统消息</a></dd>
                        <dd><a href="<%=path%>jsp/admin/" target="main">活动列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">管理员</a>
                    <dl class="layui-nav-child">
                        <dd><a href="<%=path%>jsp/admin/adminmanage.jsp" target="main">后台管理员管理</a></dd>
                        <dd><a href="<%=path%>jsp/admin/rolemanage.jsp" target="main">权限管理</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">数据统计</a>
                    <dl class="layui-nav-child">
                        <dd><a href="<%=path%>jsp/admin/" target="main">新增用户统计</a></dd>
                        <dd><a href="<%=path%>jsp/admin/" target="main">购买会员统计</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <iframe name="main" style="width: 100%;height: 100%;"></iframe>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="<%=path%>layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });
</script>
</body>
</html>

