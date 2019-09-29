<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<head>
    <base href="<%=basePath%>">
    <title>Title</title>
</head>
<body>

<form action="testManager/login.action" method="post">
    账号：<input type="text" name="uname"> <br/>
    密码：<input type="password" name="password"><br/>
    <input type="submit" value="登录">
</form>

</body>
</html>
