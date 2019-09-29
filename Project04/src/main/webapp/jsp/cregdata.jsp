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
    <script type="text/javascript" src="<%=basePath%>js/jquery-1.8.3.min.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery.collapse.js" charset="utf-8" ></script>
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
        <form action="personalManager/improving.action" method="post" enctype="multipart/form-data">
        <div class="m-title">基本资料完善 </div>
        <ul class="condition-list">
            <li>
                <p>
                    <span>会&nbsp;&nbsp;员 &nbsp;号：</span>
                    0001
                </p>
                <p>
                    <span>身&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高：</span>
                    <input type="text" class="conditon-select" placeholder="  必填，单位：CM" id="t1" name="uheight"/>
                </p>
                <p>
                    <span>出生年月：</span>
                    <input type="date" class="conditon-select" name="ubirthday" id="t2"/>
                </p>
            </li>
            <li>
                <p>
                    <span>用&nbsp;&nbsp;户&nbsp;名：</span>
                    <input type="text" class="conditon-select" placeholder="  必填" name="uname" id="t3"/>
                </p>
                <p>
                    <span>体&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 重： </span>
                    <input type="text" class="conditon-select" name="uweight" placeholder="  选填，单位：KG" id="t4"/>
                </p>
                <p>
                    <span> 星&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 座：</span>
                    <select class="conditon-select" name="constellation">
                        <option value="未选择">-----请选择-----</option>
                        <option value="白羊座">白羊座</option>
                        <option value="金牛座">金牛座</option>
                        <option value="双子座">双子座</option>
                        <option value="巨蟹座">巨蟹座</option>
                        <option value="狮子座">狮子座</option>
                        <option value="处女座">处女座</option>
                        <option value="天秤座">天秤座</option>
                        <option value="天蝎座">天蝎座</option>
                        <option value="射手座">射手座</option>
                        <option value="魔羯座">魔羯座</option>
                        <option value="水瓶座">水瓶座</option>
                        <option value="双鱼座">双鱼座</option>
                    </select>
                </p>
            </li>
            <li>
                <p>
                    <span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</span>
                    <input type="text" class="conditon-select" placeholder="  必填" id="t5" name="realname"/>
                </p>
                <p>
                    <span> 婚姻状况：</span>
                    <select class="conditon-select" name="umerried">
                        <option value="不限">不限</option>
                        <option value="未婚">未婚</option>
                        <option value="离异">离异</option>
                        <option value="丧偶">丧偶</option>
                    </select>
                </p>
                <p>
                    <span>月&nbsp;&nbsp;收 &nbsp;入： </span>
                    <select class="conditon-select" name="uincome">
                        <option value="不限">不限</option>
                        <option value="0-5000">0-5000</option>
                        <option value="5000-10000">5000-10000</option>
                        <option value="10000-15000">10000-15000</option>
                        <option value="15000-20000">15000-20000</option>
                        <option value="20000以上">20000 以上</option>
                    </select>
                </p>

            </li>
            <li>
                <p>
                    <span> 性 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别： </span>
                    <select class="conditon-select" name="usex">
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                </p>
                <p>
                    <span> 学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历： </span>
                    <select class="conditon-select" name="uedu">
                        <option value="不限">不限</option>
                        <option value="高中及以下">高中及以下</option>
                        <option value="专科">专科</option>
                        <option value="本科">本科</option>
                        <option value="硕士">硕士</option>
                        <option value="博士">博士</option>
                    </select>
                </p>
                <p>
                    <span> 血 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型： </span>
                    <select class="conditon-select" name="ublood">
                        <option value="不限">不限</option>
                        <option value="A">A 型</option>
                        <option value="B">B 型</option>
                        <option value="O">O 型</option>
                        <option value="AB">AB 型</option>
                        <option value="其它">其它血型</option>
                    </select>
                </p>
            </li>
        </ul>
        <ul class="address" style="margin-top: 0;">
            <li>
                <p>
                    <span>联系方式： </span>
                    <input type="text" class="conditon-select" name="contact"  placeholder="  选填" id="t6"/>
                </p>
            </li>
            <li>
                <p>
                    <span>所&nbsp;在&nbsp;地：</span>
                    <select id="s_province" name="s_province" class="conditon-select"></select>
                    <select id="s_city" name="s_city" class="conditon-select"></select>
                    <script src="<%=basePath%>js/area.js" type="text/javascript" charset="utf-8"></script>
                    <script type="text/javascript">_init_area();</script>
                </p>
            </li>
            <li>
                <p>
                    <span>上传头像照片： </span>
                    <input type="file" class="conditon-select" name="upload"/>
                </p>
            </li>

        </ul>
        <div class="regwan">
            <input type="submit" value="提交信息" style="width: 200px;  color: #fff; border-radius: 5px; height: 50px; border: 0; display: block;  font-size:30px; line-height: 50px; background: #eb6877; margin: 0 auto;" >
            <p>（信息完整真实，审核速度越快哦！）</p>
        </div>
        </form>
    </div>
    <div class="copy">
        <p>Copyright©2019   厦门牵手西湖婚恋交友网   版权所有  </p>
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

</script>
</body>
</html>
