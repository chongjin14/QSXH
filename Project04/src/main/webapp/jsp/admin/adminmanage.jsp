<%--
  Created by IntelliJ IDEA.
  User: 17542
  Date: 2019/9/26
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath()+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>表格</title>
    <script  src="<%=path%>js/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css" media="all">
    <script src="<%=path%>/layui/layui.js"></script>
</head>
<body>

<!-- 搜索条件开始 -->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>查询条件</legend>
</fieldset>
<%--条件查询--%>
<div class="layui-form">
    <div class="demoTable">
        <div class="layui-form-item">
            <label class="layui-form-label">ID</label>
            <div class="layui-input-inline">
                <input type="text" name="userid" id="userid"  class="layui-input" >
            </div>
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-inline">
                <input type="text" name="uname" id="uname"  class="layui-input" >
            </div>
            <label class="layui-form-label">角色</label>
            <div class="layui-input-inline" style="width:150px">
                <select name="rname" id="rname" lay-verify="required">
                    <option value=""></option>
                    <option value="普通管理员">普通管理员</option>
                    <option value="超级管理员">超级管理员</option>
                </select>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block layui-show-xs-block">
                <span><button class="layui-btn"  data-type="reload"><i class="layui-icon">&#xe615;</i></button></span>
                <button type="button" class="layui-btn" id="conditionreset" >重置</button>
            </div>

        </div>
    </div>
    <!-- 数据表格开始 -->
    <div class="layui-card-body"  >
        <div style="display: none;" id="userToolBar">
            <button type="button" class="layui-btn layui-btn-sm" lay-event="add">增加</button>
            <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="getCheckData">批量删除用户</button>
        </div>
        <table class="layui-table" lay-filter="test" id="demo" align="center">
        </table>
    </div>
    <!-- 数据表格结束 -->
</div>


<!-- 添加和修改的弹出层开始 -->
<div style="display: none;padding: 20px" id="saveOrUpdateDiv" >
    <form class="layui-form " action="" lay-filter="dataFrm" id="dataFrm">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">ID:</label>
                <div class="layui-input-inline">
                    <input type="text" name="userid" id="userid1" lay-verify="required" readonly="readonly" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">用户名:</label>
                <div class="layui-input-inline">
                    <input type="text" name="uname" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">密码：</label>
                <div class="layui-input-inline">
                    <input type="text" name="upass" autocomplete="off"
                           class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">角色：</label>
                <div class="layui-input-block">
                    <input type="radio" name="rname" value="普通管理员" title="普通管理员">
                    <input type="radio" name="rname" value="超级管理员" title="超级管理员">
                </div>
            </div>
        </div>


        <div class="layui-form-item" style="text-align: center;">
            <div class="layui-input-block">
                <button type="button" class="layui-btn layui-btn-normal layui-btn-sm layui-icon layui-icon-release" lay-filter="doSubmit" lay-submit="">提交</button>
                <button type="reset" class="layui-btn layui-btn-warm layui-btn-sm layui-icon layui-icon-refresh" >重置</button>
            </div>
        </div>
    </form>

</div>
<!-- 添加和修改的弹出层结束 -->

</body>
<%--行操作按钮--%>
<script id="barDemo" type="text/html">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="edit">编辑</button>
        <button class="layui-btn layui-btn-sm layui-btn-danger" lay-event="delete">删除</button>
        <button class="layui-btn layui-btn-sm layui-btn-warm" lay-event="resetpwd">重置密码</button>
    </div>
</script>
<script >

    layui.use('form', function(){
        var form = layui.form; //只有执行了这一步，部分表单元素才会自动修饰成功
        //重置查询条件
        $("#conditionreset").click(function () {
            $("#userid").val("");
            $("#uname").val("");
            $("#rname").val("");
            form.render();
        });

    });

    layui.use([ 'table','form'], function(){
        var table = layui.table;
        var form = layui.form;
        table.render({
            elem: '#demo'
            ,height: 312
            ,limit: 3
            ,toolbar:"#userToolBar"
            ,id: 'docReload'
            ,url: '<%=path%>admin/adminselect.action' //数据接口
            ,page: true //开启分页
            , parseData: function (res) {
                return {
                    "code": eval(res.code), //解析接口状态
                    // "msg": res.msg, //解析提示文本
                    "count": res.count, //解析数据长度
                    "data": res.data//解析数据列表
                };
            }
            ,cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                ,{field: 'userid', title: 'ID', fixed: 'left'}
                ,{field: 'uname', title: '用户名'}
                ,{field: 'upass', title: '密码'}
                ,{field: 'rname', title: '角色'}
                , {field: 'right', title: '操作', toolbar: '#barDemo', minWidth: 270}
            ]]
        });

        //触发查询按钮
        var $ = layui.$, active = {
            reload: function(){
                var userid = $('#userid');
                var uname = $('#uname');
                var rname = $('#rname');
                //执行重载
                table.reload('docReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    ,where: {
                        userid: userid.val(),
                        uname: uname.val(),
                        rname: rname.val(),
                    }
                }, 'data');
            }
        };

        $('.demoTable .layui-btn').on('click', function(){
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        })

        //监听头部工具栏事件
        table.on("toolbar(test)",function(obj){
            switch(obj.event){
                case 'add':
                    openAddUser();
                    break;
                case 'getCheckData':
                    //得到选中的数据行
                    var checkStatus = table.checkStatus(obj.config.id);
                    var data = checkStatus.data;
                    var params="";
                    $.each(data,function(i,item){
                        if(i==0){
                            params+="userids="+item.userid;
                        }else{
                            params+="&userids="+item.userid;
                        }
                    });
                    alert(params);
                    layer.confirm('确定删除选中的这些管理员吗', function(index){
                        sendDelectData("<%=path%>admin/deleteAdmins.action",params);
                        layer.close(index);
                    });
                    break;
            };
        })

        var url;
        var mainIndex;
        //打开添加页面
        function openAddUser(){
            mainIndex=layer.open({
                type:1,
                title:'添加用户',
                content:$("#saveOrUpdateDiv"),
                area:['800px','400px'],
                success:function(index){
                    //清空表单数据
                    $("#dataFrm")[0].reset();
                    $("#userid1").removeAttr("readonly");
                    url="<%=path%>admin/addAdmin.action";
                }
            });
        }

        //打开修改页面
        function openUpdateUser(data){
            mainIndex=layer.open({
                type:1,
                title:'修改用户',
                content:$("#saveOrUpdateDiv"),
                area:['800px','400px'],
                success:function(index){
                    form.val("dataFrm",data);
                    $("#userid1").attr("readonly",true);
                    url="<%=path%>admin/updateAdmin.action";
                }
            });
        }
        //保存
        form.on("submit(doSubmit)",function(obj){
            //序列化表单数据
            var params=$("#dataFrm").serialize();
            gosave(url,params);
        });
        //ajax发送保存后的的数据
        function gosave(url,params) {
            $.ajax({
                async: true,
                type: "post",
                url: url,
                dataType: "text",
                data: params,
                success: function (dat) {
                    if(dat==1){//更新两个表返回2
                        layer.msg("修改成功");
                    }else{
                        layer.msg("修改失败");
                    }
                    //关闭弹出层
                    layer.close(mainIndex);
                    //执行重载
                    table.reload('docReload', {
                        where: {
                            userid: userid.value,
                            uname: uname.value,
                            rname: rname.value,
                        }
                    }, 'data');
                },
                error: function (dat) {
                    layer.msg('断开');
                }
            })

        }
        //监听行工具事件
        table.on('tool(test)', function(obj) {
            var data = obj.data;
            alert(data.userid);
            if (obj.event === 'delete') {
                layer.confirm('确定删除用户？', function (index) {
                    fal("<%=path%>admin/deleteAdmin.action",data.userid);
                    layer.close(index);
                });
            }else if (obj.event === 'resetpwd') {
                layer.confirm('确定重置密码为123456？', function (index) {
                    fal("<%=path%>admin/adminResetPwd.action",data.userid);
                    layer.close(index);
                });
            }else if (obj.event === 'edit') {
                openUpdateUser(data);
            }
        });

        //删除或者重置密码
        function fal(url,userid) {
            $.ajax({
                async: true,
                type: "post",
                url: url,
                dataType: "text",
                data: {"userid":userid},
                success: function (dat) {
                    if(dat==1){
                        layer.msg("修改成功");
                    }else{
                        layer.msg("修改失败");
                    }
                    //执行重载
                    table.reload('docReload', {
                        where: {

                            userid: userid.value,
                            uname: uname.value,
                            rname: rname.value,
                        }
                    }, 'data');
                },
                error: function (dat) {
                    layer.msg('断开');
                }
            })

        }
        //批量删除操作，
        function sendDelectData(url,userids) {
            $.ajax({
                async: true,
                type: "post",
                url: url,
                dataType: "text",
                data: userids,
                success: function (dat) {
                    if(dat==1){
                        layer.msg("修改成功");
                    }else{
                        layer.msg("修改失败");
                    }
                    //执行重载
                    table.reload('docReload', {
                        where: {
                            userid: userid.value,
                            uname: uname.value,
                            rname: rname.value,
                        }
                    }, 'data');
                },
                error: function (dat) {
                    layer.msg('断开');
                }
            })

        }

    });

</script>

</html>


