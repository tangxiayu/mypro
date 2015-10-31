<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>iframe的使用</title>
<link rel="stylesheet" type="text/css" href="css/mInfo.css"/>
<script src="js/jquery-1.4.4.min.js"></script>
<script src="js/mInfo.js"></script>
</head>
<body>
	
	<div class="header">
		<span>
			<a href="#">退出登录</a>
		</span>
		<span class="welcome">
			欢迎来到有菜~~~
		</span>
	</div>
	<!-- 双飞翼布局 -->
	<div class="content">
		<div class="middle">
			<div class="inner">
				<div class="div1">店铺信息</div>
				<div class="div2">
					<strong>店铺名称:</strong><span>成都信息工程学院一食堂土耳其盖饭</span>
					
				</div>
				<div class="div2">
					<strong>店铺地址:</strong><span>成都信息工程学院一食堂土耳其盖饭</span>
					
				</div>
				<div class="div2">
					<strong>店铺名称:</strong><span>成都信息工程学院一食堂(航空港校区)</span>
					
				</div>
				<div class="div2">
					<strong>店铺联系人:</strong><span>鱼鱼</span>
					
				</div>
				<div class="div2">
					<strong>店铺联系电话:</strong><span>18380448313</span>
				</div>
					
				<div class="div2">
					<strong>店铺邮箱:</strong><span>222@188784ihdh</span>
					
				</div>
				<div class="div3">
					<strong class="strong3">店铺简介:</strong>
					<span id="textIntro">成都信息工程学院一食堂土耳其盖饭成都信息工程学院一食堂土耳其盖饭成都信息工程学院一食堂土耳其盖饭成都信息工程学院一食堂土耳其盖饭成都信息工程学院一食堂土耳其盖饭</span>
					
					<!-- 弹出的编辑框 -->
					<div class="showEdit">
						<textarea rows="" cols=""></textarea>
						<span class="showNum">还可以输入<strong>200</strong>字</span>
						<input type="button" value="确定"/>
					</div>
				</div>
				<div class="div4">
					<span id="showmodifyIntro-BTN">编辑店铺简介</span>
					<span id="showModifyPass-BTN">修改密码</span>
					<!-- 弹出的修改密码框 -->
					<div class="modifyPassword">
						 <span><label for="name">原密码</label></span><input type="text" id="oldPassword" name="oldPassword"><br/>
						 <span><label for="name">新密码</label></span><input type="text" id="newPassword" name="newPassword" /><br/>
						 <span><label for="name">确认新密码</label></span><input type="text" id="repeatNewPassword" name="repeatNewPassword"/><br/>
						 <input type="button" id="modifyPass-BTN" value="确认修改">
					</div>
				</div>
			</div>
		</div>
		<div class="left">
			<div class="mImage">
				<img src="../images/food.jpg"/>
			</div>
			<div class="list">
				<ul>
					<li>
						<a href="javascript:void(0)" onclick="centerSet('message.jsp')">系统消息</a>
						<img class="img1" src="../images/letter.png"/>
						<span class="letterText" id="letterNum">1</span>
					</li>
					<li>
						<a href="javascript:void(0)" onclick="centerSet('refundMessage.jsp')">客户退单消息</a>
						<img class="img2" src="../images/message.png"/>
						<span class="letterText" id="refundNum">2</span>
					</li>
					<li><a href="javascript:void(0)" onclick="centerSet('mHistoryOrder.jsp')">历史订单</a></li>
					<li><a href="javascript:void(0)" onclick="centerSet('procesOrder.jsp')">未完成订单</a></li>
					<li>
						<a href="javascript:void(0)" onclick="centerSet('pushOrders.jsp')">抢订单</a>
						<img class="img3" src="../images/message.png"/>
						<span class="letterText" id="pushOrderNum">3</span>
					</li>
					<li><a href="javascript:void(0)" onclick="centerSet('mInventory.jsp')">库存管理</a></li>
					<li><a href="javascript:void(0)" onclick="centerSet('merchantSells.jsp')">查看销售额</a></li>
				</ul>
			</div>
		</div>
		<div class="right">
			<div class="img">
				<img src="../images/logo.png"/>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="version">
			<p>版权申明....版权申明....版权申明....版权申明....版权申明....版权申明....
			版权申明....版权申明....版权申明....版权申明....版权申明....</p>
		</div>
	</div>
</body>
</html>