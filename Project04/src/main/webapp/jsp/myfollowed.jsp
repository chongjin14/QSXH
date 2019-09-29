<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="utf-8" />
    <title>牵手西湖婚恋交友网</title>
    <base href="<%=basePath%>">
    <meta name="Keywords" content="牵手西湖婚恋交友网" />
    <meta name="Description" content="牵手西湖婚恋交友网"/>
    <link type="image/x-icon" rel=icon href="images/icon.png" />
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link type="text/css" rel="stylesheet" href="<%=basePath%>css/chat.css"/>
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery.collapse.js" ></script>
    <script type="text/javascript" src="<%=basePath%>js/selectstate.js" ></script>

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
        <div class="main-right" style="margin-left: 0; margin-right: 14px;"><!--right-->
            <div class="list-main1-title">个人中心</div>
            <div class="col c2"><!--menu-->
                <div class="list-top"><a href="">基本资料</a></div>
                <div class="list-top"><a href="">择偶条件</a></div>
                <div class="list-top"><a href="">我的照片</a></div>
                <div class="list-top"><a href="" class="cur">我的关注</a></div>
                <div class="css3-animated-example">
                    <h3>详情资料</h3>
                    <div>
                        <div class="content">
                            <p><a href="">工作学习</a></p>
                            <p><a href="">兴趣爱好</a></p>
                            <p><a href="">个性要求</a></p>
                        </div>
                    </div>
                </div>
                <div class="list-top"><a href="">关于举报</a></div>
                <div class="css3-animated-example">
                    <h3 style=" border-bottom: 0;">系统设置</h3>
                    <div>
                        <div class="content">
                            <p><a href="">密码修改</a></p>
                            <p><a href="">更换手机</a></p>
                        </div>
                    </div>
                </div>
            </div><!--menu-->
        </div><!--right-->
        <div class="main-left"><!--left-->
            <div class="s-address">当前位置：<a href="">首页 </a>&gt;个人中心&gt;我的关注</div>
            <div class="safty">
                <%--<div class="tit">关注列表  >></div>--%>
                <ul class="success">
                    <c:forEach items="${requestScope.followlist}" var="followuser">
                        <li>
                            <div class="success-text">
                                <a class="success-pic"><img src="images/test1.png"/></a>
                                <c:if test="${followuser.uonline==11}">
                                    <a >用户名：${followuser.uname} &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a style="color: #eb6877;"> 我在线上 </a></a>
                                </c:if>
                                <c:if test="${followuser.uonline==12}">
                                    <a >用户名：${followuser.uname} &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a style="color: #a0a0a0;"> 离线 </a></a>
                                </c:if>
                                <p>&nbsp;</p>
                                <p>
                                    <a href="" class="myfollow" style="color:#fff;">&nbsp; 发起聊天 &nbsp;</a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="" class="myfollow" style="color:#fff;">&nbsp; 取消关注 &nbsp;</a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <a href="" class="myfollow" style="color:#fff;">&nbsp; 喜欢 &nbsp;</a>
                                </p>
                                <p>&nbsp;</p>
                                <p class="mem-text">25岁  |  本科  |  165CM  |  有房</p>
                                <p><a href="" class="cf60">[查看详情]</a></p>
                            </div>
                        </li>
                    </c:forEach>
                    <li>
                        <div class="success-text">
                            <a class="success-pic"><img src="images/test1.png"/></a>
                            <a >用户名：沙雕 &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a style="color: #eb6877;"> 我在线上 </a></a>
                            <p>&nbsp;</p>
                            <p>
                                <a href="" class="myfollow" style="color:#fff;">&nbsp; 发起聊天 &nbsp;</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="" class="myfollow" style="color:#fff;">&nbsp; 取消关注 &nbsp;</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="" class="myfollow" style="color:#fff;">&nbsp; 喜欢 &nbsp;</a>
                            </p>
                            <p>&nbsp;</p>
                            <p class="mem-text">25岁  |  本科  |  165CM  |  有房</p>
                            <p><a href="" class="cf60">[查看详情]</a></p>
                        </div>
                    </li>
                    <li>
                        <div class="success-text">
                            <a class="success-pic"><img src="images/test1.png"/></a>
                            <a> 用户名：沙雕 &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; <a style="color: #a0a0a0;"> 离线 </a></a>
                            <p>&nbsp;</p>
                            <p>
                                <a class="myfollow" style="background: #959595;color:#fff;">&nbsp; 发起聊天 &nbsp;</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="" class="myfollow" style="color:#fff;">&nbsp; 取消关注 &nbsp;</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="" class="myfollow" style="color:#fff;">&nbsp; 喜欢 &nbsp;</a>
                            </p>
                            <p>&nbsp;</p>
                            <p class="mem-text">25岁  |  本科  |  165CM  |  有房</p>
                            <p><a href="" class="cf60">[查看详情]</a></p>
                        </div>
                    </li>
                </ul>
            </div>
        </div><!--left-->
    </div>
    <div class="copy">
        <p>Copyright©2019   厦门牵手西湖婚恋交友网   版权所有 </p>
        <p>地址：厦门市软件园二期观日路56号  电话：400-000-000  技术支持：<a target="_blank" href="http://www.cykjgroup.com/">传一科技</a></p>
    </div>
    <!--在线客服-->
    <div id="floatTools" class="rides-cs" style="height:246px;">
        <div class="floatL">
            <a id="aFloatTools_Show" class="btnOpen" title="查看在线客服" style="top:20px;display:block" href="javascript:void(0);">展开</a>
            <a id="aFloatTools_Hide" class="btnCtn" title="关闭在线客服" style="top:20px;display:none" href="javascript:void(0);">收缩</a>
        </div>
        <div id="divFloatToolsView" class="floatR" style="display: none;height:237px;width: 140px;">
            <div class="cn">
                <h3 class="titZx">牵手西湖在线客服</h3>
                <ul>
                    <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes"><img border="0" src="images/qq.png" alt="点击这里给我发消息" title="点击这里给我发消息"/></a> <span>客服1</span></li>
                    <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes"><img border="0" src="images/qq.png" alt="点击这里给我发消息" title="点击这里给我发消息"/></a><span>客服2</span> </li>
                    <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes"><img border="0" src="images/qq.png" alt="点击这里给我发消息" title="点击这里给我发消息"/></a> <span>客服3</span></li>
                    <li><a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=123456789&site=qq&menu=yes"><img border="0" src="images/qq.png" alt="点击这里给我发消息" title="点击这里给我发消息"/></a> <span>客服4</span></li>
                    <li style="border:none;"><span>电话：400-000-0000</span> </li>
                </ul>
            </div>
        </div>
    </div>
</div>

<script>
    $(".css3-animated-example").collapse({
        accordion: true,
        open: function() {
            this.addClass("open");
            this.css({ height: this.children().outerHeight() });
        },
        close: function() {
            this.css({ height: "0px" });
            this.removeClass("open");
        }
    });

    $(function () {
        getSelectState("uwork", "");
        getSelectState("ucar", "");
        getSelectState("uhouse", "");
    })

</script>
</body>
</html>

