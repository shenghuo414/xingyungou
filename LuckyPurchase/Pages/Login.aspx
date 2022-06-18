<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LuckyPurchase.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录界面</title>
    <link rel="icon" href="../Images/Logo.png" />
    <link rel="stylesheet" href="../Css/reset.css" />
	<link rel="stylesheet" href="../Css/common.css" />
	<link rel="stylesheet" href="../Css/font-awesome.min.css" />
</head>
<body>
		<div class="logoo">
			<a href="index.aspx"><img src="../Images/稿定抠图.png" style="margin-top:50px;" /></a>
		</div>
		<div class="wrap login_wrap">
			<div class="content">
				<div class="logo"></div>
				<div class="login_box">	
					
					<div class="login_form">
						<div class="login_title">
							登&nbsp;录
						</div>
						<form action="#" method="post" runat="server">
							
							<div class="form_text_ipt" runat="server">
                                <asp:TextBox runat="server" ID="TextBox1"  name="username" placeholder="手机号" Height="30px" Width="288px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
								<%--<input name="username" type="text" placeholder="手机号">--%>
							</div>
							<div class="ececk_warning" runat="server"><span>手机号不能为空</span></div>
							<div class="form_text_ipt" runat="server">
                                <asp:TextBox ID="TextBox2" runat="server" placeholder="密码" Height="27px" TextMode="Password" Width="286px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
								<%--<input name="password" type="password" runat="server" placeholder="密码"/>--%>
							</div>
							<div class="ececk_warning" runat="server"><span>密码不能为空</span></div>
							<div class="form_check_ipt" runat="server">
								<div class="left check_left" runat="server">

                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="记住密码" />
									<%--<label><input name="" type="checkbox"> 下次自动登录</label>--%>
								</div>
								
							</div>
							<div class="form_btn" runat="server">
                                <asp:Button ID="Button1" runat="server" Text="登录" Height="34px" OnClick="Button1_Click" Width="299px" />
								<%--<button type="button" onclick="javascript:window.location.href='#'" runat="server">登&nbsp;录</button>--%>
							</div>
							<div class="form_reg_btn" runat="server">
								<span>还没有帐号？</span><a href="registered.aspx">马上注册</a>
							</div>
						</form>
						<div class="other_login" runat="server">
							<div class="left other_left" runat="server">
								
							</div>
							<div class="right other_right" runat="server">
							
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="js/jquery.min.js" ></script>
		<script type="text/javascript" src="js/common.js" ></script>
		<div style="text-align:center;">

</div>
</body>
</html>
