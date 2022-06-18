<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site1.Master" AutoEventWireup="true" CodeBehind="System.aspx.cs" Inherits="LuckyPurchase.Pages.Commodity_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../Css/System.css"/>
    <link rel="icon" href="../Images/Logo.png" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>管理员个人信息</h1>
        <div>
            <br />
            <table style="width: 40%;margin:auto;background-color:white">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;户："></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </td>                    
                </tr>
                <tr>
                    <td><br />
                        <asp:Label ID="Label3" runat="server" Text="旧&nbsp;密&nbsp;&nbsp;码："></asp:Label>
                        <asp:TextBox ID="TextBox1" class="TextBox" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td><br />
                        <asp:Label ID="Label4" runat="server" Text="新&nbsp;密&nbsp;&nbsp;码："></asp:Label>
                        <asp:TextBox ID="TextBox2" class="TextBox" type="PassWord" placeholder="请输入新密码" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                   <tr>
                    <td><br />
                        <asp:Label ID="Label5" runat="server" Text="确认密码："></asp:Label>
                        <asp:TextBox ID="TextBox3" class="TextBox" type="PassWord" placeholder="请确认新密码" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="两次输入的密码不一样" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                    </td>
                </tr>
            </table><br />
            <div class="btn">
                <a href="#"><asp:Button ID="Button1" CssClass="btn_text"  runat="server" Text="修改" OnClick="Button1_Click" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="#"><asp:Button ID="Button2" CssClass="btn_text"  runat="server" Text="取消" CausesValidation="False" OnClick="Button2_Click" /></a>
            </div>
        </div>
    </div>
</asp:Content>
