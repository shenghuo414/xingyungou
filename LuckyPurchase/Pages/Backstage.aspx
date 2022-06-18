<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Backstage.aspx.cs" Inherits="LuckyPurchase.Pages.Backstage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>2元幸运购后台管理系统</title>
    <link rel="icon" href="../Images/Logo.png" />
    <link rel="stylesheet" type="text/css" href="../Css/Back.css"/>
    <script type="text/javascript" src="../Js/Verification.js"></script>
</head>
<body>
     <div id="top"><h1>2元幸运购后台管理系统</h1>
         <a href="index.aspx" style="float:right;margin-top:-100px;margin-right:250px;text-decoration:none;font-size:1.1em;color: white">首页</a>
     </div>
    <form id="form1" runat="server">
        <div id="content">
            <div id="text"><h4>2元幸运购后台管理系统登录</h4></div>          
             <div >
                 <table style="width: 100%;">
                     <tr class="content_text">
                         <td>
                            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
                            <asp:TextBox ID="TextBox1" placeholder="请输入用户名" class="name_input" runat="server"></asp:TextBox><br />
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户名必须输入！" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                     </tr>
                     <tr class="content_text">
                         <td>
                            <asp:Label ID="Label2" runat="server" Text="密&nbsp;&nbsp;&nbsp;码："></asp:Label>
                            <asp:TextBox ID="TextBox2" placeholder="请输入密码" class="name_input" runat="server"></asp:TextBox><br />
                             &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码必须输入！" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td>
                            <asp:Label ID="Label3" class="name_id" runat="server" Text="验证码："></asp:Label>
                            <asp:TextBox ID="TextBox3" placeholder="请输入验证码"  class="name_id-id" runat="server"></asp:TextBox>
                            <a href="Backstage.aspx" id="a2" onclick="sublim()">看不清</a><br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Style="margin-left:250px;" ErrorMessage="验证码必须输入！" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                             <asp:Image ID="Image1" runat="server" Class="canvas" style="border: 1px solid #ccc;border-radius: 5px;
                                width:100px;height:40px;line-height: 40px; margin-left:250px; margin-top: 12px;" ImageUrl="Default.aspx" />
                         </td>
                     </tr>
                 </table>
                <div id="btn"><asp:Button ID="Button1"  class="btn" runat="server" Text="登&nbsp;录" OnClick="Button1_Click" /></div> 
             </div>
        </div>
        <hr />
        <div id="bottom">
             <br />
             <p >CopyRight © 2022 2元幸运购 All Rights Reserved</p>
             <p >电话：010-****888 桂ICP备*******8号</p>
        </div>
    </form>
</body>
</html>
