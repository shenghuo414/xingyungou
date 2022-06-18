<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registered.aspx.cs" Inherits="LuckyPurchase.Pages.registered" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册界面</title>
    <link rel="icon" href="../Images/Logo.png" />
    <link rel="stylesheet" href="../Css/reset.css" />
    <link rel="stylesheet" href="../Css/common.css" />
    <link rel="stylesheet" href="../Css/font-awesome.min.css" />
    <style type="text/css">
        #Button1 {
            position: relative;
            left: 257px;
            top: -31px;
            height: 29px;
            width: 97px;
        }

        #sj {
            position: relative;
            top: 2px;
            left: -5px;
        }
    </style>
</head>
<body>
    <%--<form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
    <div class="wrap login_wrap">
        <div class="content">
            <div class="logooo">
                <a href="index.aspx">
                    <img src="../Images/稿定抠图.png"  style="margin-top:150px;" />
                </a>
            </div>
            <div class="logo"></div>

            <div class="login_box">

                <div class="login_form">
                    <div class="login_title">
                        注&nbsp;册
                    </div>
                    <form id="form1" runat="server">

                        <div class="form_text_ipt">
                            <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="293px" placeholder="昵称"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="ececk_warning"><span>昵称不能为空</span></div>
                        <div class="form_text_ipt">
                            <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="293px" placeholder="手机号"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" Display="Dynamic" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <div class="ececk_warning"><span>手机号不能为空</span></div>
                        <div class="form_text_ipt">
                            <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="293px" placeholder="密码" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="ececk_warning"><span>密码不能为空</span></div>
                        <div class="form_text_ipt">
                            <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="293px" placeholder="确认密码" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次密码不一样" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                        </div>
                        <div class="ececk_warning"><span>密码不能为空</span></div>
                        <%--<div class="form_text_ipt">
                            <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="293px" placeholder="验证码" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                        </div>
                        <div class="ececk_warning"><span>验证码不能为空</span></div>--%>


                        <%-- 接口 --%>

                       <%-- <asp:Button ID="Button1" runat="server" Text="获取验证码" OnClick="Button1_Click" Font-Bold="False" Font-Size="8pt" Height="20px" Width="68px" />--%>
                        <div class="form_btn">
                            <asp:Button ID="Button2" runat="server" Text="注册" Height="40px" Width="294px" OnClick="Button2_Click" />
                            <%--<button type="button" onclick="javascript:window.location.href='#'" runat="server" id="ll1">注&nbsp;册</button>--%>
                        </div>

                        <div class="form_reg_btn">
                            <span>已有帐号？</span><a href="Login.aspx">马上登录</a>
                        </div>
                    </form>
                    <div class="other_login">
                        <div class="left other_left">
                            
                        </div>
                        <div class="right other_right">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="../Js/jquery.min.js"></script>
    <script type="text/javascript" src="../Js/common.js"></script>
    <div style="text-align: center;">
    </div>
</body>
</html>
