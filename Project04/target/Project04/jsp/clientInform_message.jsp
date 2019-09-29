<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>牵手西湖婚恋交友网</title>
    <base href="<%=basePath%>">
    <meta name="Keywords" content="牵手西湖婚恋交友网" />
    <meta name="Description" content="牵手西湖婚恋交友网"/>
    <link type="image/x-icon" rel=icon href="images/icon.png" />
    <link type="text/css" rel="stylesheet" href="css/style.css"/>
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <style>td {white-space:nowrap;overflow:hidden;text-overflow: ellipsis;}</style>

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
        <!--<div class="login-left"><img src="images/loginpic.png"/></div> -->
        <div class="login-right">
            <div class="list-main1-title">我的消息</div>
            <div class="col c2"><!--menu-->
                <div class="list-top"><a href="<%=path%>/informManager/systemInform.action">系统消息</a></div>
                <div class="list-top"><a href="<%=path%>/informManager/activeInform.action">活动消息</a></div>
                <div class="list-top"><a href="<%=path%>/informManager/messageInform.action">我的留言</a></div>
                <div class="list-top"><a href="<%=path%>/informManager/datingInform.action">我的约会</a></div>
                <!-- 模板的伸缩菜单 -->
                <!--                   <div class="css3-animated-example">
                                     <h3 class="cur">详情资料</h3>
                                      <div>
                                        <div class="content">
                                        <p><a href="">生活方式</a></p>
                                        <p><a href="">工作学习</a></p>
                                        <p><a href="">关于婚姻</a></p>
                                        </div>
                                      </div>
                                  </div> -->
                <!-- <div class="list-top"><a href="">关于举报</a></div>	 -->
                <!--                 <div class="css3-animated-example">
                                   <h3 style=" border-bottom: 0;">系统设置</h3>
                                      <div>
                                        <div class="content">
                                        <p><a href="">密码修改</a></p>
                                        <p><a href="">更换手机</a></p>
                                        </div>
                                      </div>-->
            </div>

        </div><!--menu-->
<%--        <!-- layui表格本体 -->--%>
<%--        <div class="layui-card-body" align="center" >--%>
<%--            <table class="layui-table" lay-filter="test" id="utable" align="center">--%>
<%--            </table>--%>
<%--        </div>--%>
        <div style="float: right ; width: 85% ;" id="tableAndPageInfo">
            <div style="height: 200px;" id="table">
                <table class="table table-hover" style="table-layout: fixed;">
                        <tr>
                            <th>标题</th>
                            <th>发送人</th>
                            <th>时间</th>
                            <th>内容</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                    <c:forEach items="${pageInfo.list}" var="msg" varStatus="id">
                        <tr>
                            <td>${msg.mtitle}</td>
                            <td>${msg.mfromid}</td>
                            <td>${msg.mtime}</td>
                            <td>${msg.mcontext}</td>
                            <td>${msg.mstate}</td>
                            <td><a href="<%=path%>/informManager/msgDetails.action?msgid=${msg.msgid}"> 查看详情</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>

        <%--页码信息--%>
        <div class="row">
            <div class="col-md-6">
                第${pageInfo.pageNum}页，共${pageInfo.pages}页，共${pageInfo.total}条记录
            </div>
            <div class="col-md-6 offset-md-4">
                <nav aria-label="Page navigation example">
                    <ul class="pagination pagination-sm">
                        <li class="page-item"><a class="page-link" href="<%=path%>/informManager/messageInform.action?page=1">首页</a></li>
                        <c:if test="${pageInfo.hasPreviousPage}">
                            <li class="page-item"><a class="page-link"
                                                     href="<%=path%>/informManager/messageInform.action?page=${pageInfo.pageNum-1}">上一页</a></li>
                        </c:if>
                        <c:forEach items="${pageInfo.navigatepageNums}" var="page">
                            <c:if test="${page==pageInfo.pageNum}">
                                <li class="page-item active"><a class="page-link" href="#">${page}</a></li>
                            </c:if>
                            <c:if test="${page!=pageInfo.pageNum}">
                                <li class="page-item"><a class="page-link"
                                                         href="<%=path%>/informManager/messageInform.action?page=${page}">${page}</a></li>
                            </c:if>
                        </c:forEach>
                        <c:if test="${pageInfo.hasNextPage}">
                            <li class="page-item"><a class="page-link"
                                                     href="<%=path%>/informManager/messageInform.action?page=${pageInfo.pageNum+1}">下一页</a></li>
                        </c:if>
                        <li class="page-item"><a class="page-link" href="<%=path%>/informManager/messageInform.action?page=${pageInfo.pages}">末页</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

    </div>
    </div>
</div>
    <div class="copy">
        <p>Copyright©2019  厦门牵手西湖婚恋交友网  版权所有 </p>
        <p>地址：厦门市软件园二期观日路56号  电话：400-8282-8888</p>
    </div>
</div>
</body>
<%--<!-- layui表格插件 -->--%>
<%--&lt;%&ndash;定义工具条&ndash;%&gt;--%>
<%--<script id="barDemo" type="text/html">--%>
<%--    <div class="layui-btn-container">--%>
<%--        <button class="layui-btn layui-btn-sm" lay-event="del">删除</button>--%>
<%--        <button class="layui-btn layui-btn-sm" lay-event="edit">启用禁用</button>--%>
<%--        <button class="layui-btn layui-btn-sm" lay-event="resetPass">重置密码</button>--%>
<%--    </div>--%>
<%--</script>--%>

<%--<script>--%>
<%--    layui.use('table', function() {--%>
<%--        var table = layui.table;--%>
<%--        table.render({--%>
<%--            elem: '#layui_table_id'                  //定位表格--%>
<%--            , url: '<%=path%>/msgManager/systemMsg.action'   //请求路径--%>
<%--            , page: true                             //开启分页（初始值为1）--%>
<%--            , limit:3                                //每页行数--%>
<%--            , id: 'testReload'                       //查询同样走这个ajax，需要id--%>
<%--            ,parseData: function (res) {             //解析数据--%>
<%--                console.log("返回值" + res);--%>
<%--                console.log("状态码" + res.code);--%>
<%--                // console.log("消息" + res.msg);--%>
<%--                console.log("条数" + res.count);--%>
<%--                console.log("数据" + res.data);--%>

<%--                return {--%>
<%--                    "code": eval(res.code), //解析接口状态--%>
<%--                    "msg": res.msg,         //解析提示文本--%>
<%--                    "count": res.count,     //解析数据长度--%>
<%--                    "data": res.data        //解析数据列表--%>
<%--                };--%>
<%--            }--%>
<%--            , cols: [[                      //定义表头--%>
<%--                {field: 'userid', title: '用户id', minWidth: 100}--%>
<%--                , {field: 'uname', title: '用户名', minWidth: 80}--%>
<%--                , {field: 'upass', title: '密码', minWidth: 80}--%>
<%--                , {field: 'right', title: '操作', toolbar:'#barDemo' ,minWidth:270}//工具条--%>
<%--            ]]--%>
<%--        })--%>

<%--        //触发查询按钮--%>
<%--        var $ = layui.$, active = {--%>
<%--            reload: function(){--%>
<%--                alert("触发查询按钮");--%>
<%--                var beginDate = $('#beginDate');--%>
<%--                var endDate = $('#endDate');--%>
<%--                var uid = $('#userid');--%>
<%--                alert(beginDate.val()+endDate.val()+uid.val());--%>
<%--                //执行重载--%>
<%--                table.reload('testReload', {--%>
<%--                    page: {--%>
<%--                        curr: 1 //重新从第 1 页开始--%>
<%--                    }--%>
<%--                    ,where: {   //传参数--%>
<%--                        beginDate : beginDate.val(),--%>
<%--                        endDate : endDate.val(),--%>
<%--                        uid : uid.val(),--%>
<%--                    }--%>
<%--                }, 'data');--%>
<%--            }--%>
<%--        };--%>

<%--        $('.demoTable .layui-btn').on('click', function(){--%>
<%--            alert("触发按钮");--%>
<%--            var type = $(this).data('type');--%>
<%--            active[type] ? active[type].call(this) : '';--%>
<%--        })--%>

<%--        //监听行工具事件--%>
<%--        table.on('tool(test)', function(obj){--%>
<%--            alert("触发工具条按钮");--%>
<%--            var data = obj.data;--%>
<%--            console.log(obj);--%>
<%--            if(obj.event === 'del'){--%>
<%--                layer.confirm('真的删除行么', function(index){--%>
<%--                    obj.del();--%>
<%--                    layer.close(index);--%>
<%--                });--%>
<%--            } else if(obj.event === 'edit'){--%>
<%--                layer.prompt({--%>
<%--                    formType: 2--%>
<%--                    ,value: data.userid--%>
<%--                }, function(value, index){--%>
<%--                    obj.update({--%>
<%--                        username: value--%>
<%--                    });--%>
<%--                    layer.close(index);--%>
<%--                });--%>
<%--            }--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
</html>

