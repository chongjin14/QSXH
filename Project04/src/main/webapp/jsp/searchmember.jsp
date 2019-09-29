<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8" />
		<title>牵手西湖婚恋交友网</title>
		<meta name="Keywords" content="牵手西湖婚恋交友网" />
        <meta name="Description" content="牵手西湖婚恋交友网"/>
		<link type="image/x-icon" rel=icon href="images/icon.png" />
		<link type="text/css" rel="stylesheet" href="css/style.css"/>
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
        <link rel="stylesheet" href="js/jquery.range.css">
        <script type="text/javascript" src="js/jquery.range.js"></script>
        <script type="text/javascript" src="js/comment.js"></script>
        <script type="text/javascript" src="js/popup.mini.js"></script>
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
				<a href="matchUser/matchByTime.action">网站首页</a>
				<a href="">了解我们</a>
				<a href="matchUser/smartMatch.action">条件搜索</a>
				<a href="">智能匹配</a>
				<a href="">会员服务 </a>
				<a href="">活动专题 </a>
				<a href="">我的消息 </a>
				<a href="">个人中心</a>
			</div>
		</div>
		
		<div class="main">
			<div class="main-box1">
			<div class="main-left"><!--left-->
				<ul class="find-infor" style="padding-top: 15px;">
						<li style="margin-bottom: 15px;">
							<span>年龄</span>
							<div class="infor-link">
								<select id="uageRange">
									 <option value="不限">不限</option>
									<option value="18-23">18-23</option>
									<option value="24-29">24-29</option>
									<option value="30-35">30-35</option>
									<option value="36-41">36-41</option>
									<option value="42-47">42-47</option>
									<option value="48-53">48-53</option>
									<option value="53以上">53以上</option>
								</select>
							</div>
							<span>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历</span>
							<div class="infor-link">
								<select id="uedu">
									<option value="不限">不限</option>
									<option value="高中及以下">高中及以下</option>
									<option value="专科">专科</option>
									<option value="本科">本科</option>
									<option value="硕士">硕士</option>
									<option value="博士">博士</option>
								</select>
							</div>
							<span>婚姻状况</span>
							<div class="infor-link">
								<select id="umerried">
									<option value="不限">不限</option>
									<option value="未婚">未婚</option>
									<option value="离异">离异</option>
									<option value="丧偶">丧偶</option>
								</select>
							</div>
							<span>住&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;房</span>
							<div class="infor-link">
								<select id="uhouse">
									<option value="不限">不限</option>
									<option value="有房">有房</option>
									<option value="无房">无房</option>
								</select>
							</div>
						</li>
						<li>
							<span>从事行业</span>
							<div class="infor-link">
								<select id="uwork">
									<option value="不限">不限</option>
									<option value="销售">销售</option>
									<option value="互联网">互联网</option>
									<option value="账务">账务</option>
									<option value="教育培训">教育培训</option>
									<option value="翻译">翻译</option>
									<option value="管理">管理</option>
									<option value="医疗">医疗</option>
									<option value="酒店">酒店</option>
								</select>
							</div>
							<span>月 &nbsp;收 &nbsp;入</span>
							<div class="infor-link">
								<select id="uincome">
									<option value="不限">不限</option>
									<option value="0-5000">0-5000</option>
									<option value="5000-10000">5000-10000</option>
									<option value="10000-15000">10000-15000</option>
									<option value="15000-20000">15000-20000</option>
									<option value="20000以上">20000以上</option>
								</select>
							</div>
							<span>所在地</span>
							<div class="infor-link" style="width: 200px;margin-top: -10px;">
								<select id="s_province" name="s_province"></select>
								<select id="s_city" name="s_city" ></select>
								<script class="resources library" src="js/area.js" type="text/javascript"></script>
								<script type="text/javascript">_init_area();</script>
							</div>
							<%--<input type="submit" value="搜索" style="width:100px; height: 30px; background: #76fabc;">--%>
							<button id="search" onclick="search()" style=" margin-left: 30px;width:100px; height: 30px; background: rosybrown;">搜索</button>
						</li>
				</ul>
				<ul class="sequence">
					<li><a href="" class="sort_a"><i class="sort_a1">综合排序</i></a></li>
					<li><a href="" class="sort_a"><i class="sort_a1">最新会员</i></a></li>
					<li><a href="" class="sort_a"><i class="sort_a1">魅力值</i></a></li>
				</ul>
				<ul class="main-member">
					<c:if test="${!empty MatchUserList}">
						<c:forEach items="${MatchUserList}" var="list">
							<li>
								<a href="">
									<img src="images/test.png">
									<p class="mem-num">昵称：${list.uname}</p>
									<p class="mem-text">${list.uage}岁  |  ${list.uwork}  |  ${list.uheight}cm</p>
									<p class="mem-text">♥${list.ucharm}</p>
								</a>
							</li>
						</c:forEach>
					</c:if>
					<c:if test="${empty MatchUserList}">
						<li>
							未找到符合条件的用户
						</li>
					</c:if>
				</ul>
				<div class="page">
					<a href="" class="cur">1</a>
					<a href="">2</a>
					<a href="">3</a>
					<a href="">4</a>
					<a href="">5</a>
					<span>...</span>
					<a href="">24</a>
					<a href="">下一页</a>
				</div>
			</div><!--left-->
			<div class="main-right"><!--right-->
				<div class="main-log">
					<div class="tit">会员登录</div>
					<div class="main-logbox">
						<i class="main-user"></i>
						<input placeholder="账户名" type="text" class="main-user-input" />
					</div>
					<div class="main-logbox">
						<i class="main-password"></i>
						<input placeholder="密码" type="text" class="main-user-input" />
					</div>
					<button type="button"  class="main-btn">立即登录</button>
					<div class="main-pass-text">没有帐号？<a href="">免费注册</a><a href="" class="forget">忘记密码 ></a></div>
				</div>
				<div class="main-radv"><img src="images/adv2.png"/></div>
				<div class="main-radv"><img src="images/adv1.png"/></div>
				<div class="main-message">
					<div class="tit">最新会员推荐</div>
					<ul class="member-list">
						<li>
							<img src="images/bgimg.jpg" />
							<p>会员号：100001</p>
                            <p>婚况：未      年龄：26</p>
                            <p>学历：大专   身高：160cm</p>
                            <p> 职业：CEO   房产：有房</p>
						</li>
						<li>
							<img src="images/bgimg.jpg" />
							<p>会员号：100001</p>
                            <p>婚况：未      年龄：26</p>
                            <p>学历：大专   身高：160cm</p>
                            <p> 职业：CEO   房产：有房</p>
						</li>
						<li>
							<img src="images/bgimg.jpg" />
							<p>会员号：100001</p>
                            <p>婚况：未      年龄：26</p>
                            <p>学历：大专   身高：160cm</p>
                            <p> 职业：CEO   房产：有房</p>
						</li>
						<li>
							<img src="images/bgimg.jpg" />
							<p>会员号：100001</p>
                            <p>婚况：未      年龄：26</p>
                            <p>学历：大专   身高：160cm</p>
                            <p> 职业：CEO   房产：有房</p>
						</li>
						<li>
							<img src="images/bgimg.jpg" />
							<p>会员号：100001</p>
                            <p>婚况：未      年龄：26</p>
                            <p>学历：大专   身高：160cm</p>
                            <p> 职业：CEO   房产：有房</p>
						</li>
						<li>
							<img src="images/bgimg.jpg" />
							<p>会员号：100001</p>
                            <p>婚况：未      年龄：26</p>
                            <p>学历：大专   身高：160cm</p>
                            <p> 职业：CEO   房产：有房</p>
						</li>
					</ul>
				</div>
				<div class="main-message1">
					<div class="tit">联系我们</div>
					<div class="main-contact">
						<p>公司名称：</p>
						<p>联系人：</p>
						<p>联系电话：400-400-400</p>
						<p>电子邮箱：</p>
						<p>实体店地址：厦门软件园</p>
						<p>厦门牵手西湖婚恋交友官方微信</p>
						<p><img src="images/weixin.jpg"/></p>
						<p style="text-align: center;">“ 扫一扫与牵手西湖亲密互动 ”</p>
					</div>
				</div>
			</div><!--right-->
			</div>
		 <div class="copy">
			 <p>Copyright©2019  厦门牵手西湖婚恋交友网  版权所有 </p>
			 <p>地址：厦门市软件园二期观日路56号  电话：400-0000-0000</p>
		</div>
<!--在线客服-->
<div id="floatTools" class="rides-cs" style="height:246px;">
  <div class="floatL">
  	<a id="aFloatTools_Show" class="btnOpen" title="查看在线客服" style="top:20px;display:block" href="javascript:void(0);">展开</a>
  	<a id="aFloatTools_Hide" class="btnCtn" title="关闭在线客服" style="top:20px;display:none" href="javascript:void(0);">收缩</a>
  </div>
  <div id="divFloatToolsView" class="floatR" style="display: none;height:237px;width: 140px;">
    <div class="cn">
      <h3 class="titZx">厦门牵手西湖在线客服</h3>
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

<script type='text/javascript'>
	(function(){
		 new PopUp_api({el:'.s-jubao',html:'.ddd'});	 
	})()

	function search(){
	    var uageRange = $("#uageRange").val();
	    var uedu = $("#uedu").val();
	    var umerried = $("#umerried").val();
	    var uhouse = $("#uhouse").val();
	    var uwork = $("#uwork").val();
	    var uincome = $("#uincome").val();
	    var s_province = $("#s_province").val();
	    var s_city = $("#s_city").val();
	    window.location.href="matchUser/matchByCondition.action?uageRange="+uageRange+"&uedu="+uedu+"&umerried="+umerried+"&uhouse="+uhouse+"&uwork="+uwork+"&uincome="+uincome+"&s_province="+s_province+"&s_city="+s_city;
	}
</script>
</body>
</html>
