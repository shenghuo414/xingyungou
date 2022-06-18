<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site1.Master" AutoEventWireup="true"  CodeBehind="Admin.aspx.cs" Inherits="LuckyPurchase.Pages.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>2元幸运购后台管理系统首页</title>
    <link rel="icon" href="../Images/Logo.png" />
    <link rel="stylesheet" type="text/css" href="../Css/Admin-index.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div id="head_content" <%--style="margin-left:35px;margin-top:20px"--%>>
            <asp:Label ID="Label1" runat="server" Text="姓名："></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入关键字"></asp:TextBox>
            <asp:Button ID="Button1" CssClass="btn" runat="server" Text="查询" OnClick="Button1_Click" />&nbsp;
            <asp:Button ID="Button2" CssClass="btn" runat="server" Text="刷新" OnClick="Button2_Click" />
        </div>
        <div>
            <table id="table">
                <tr id="tr">
                    <th>用户编号</th>
                    <th>用户名</th>
                    <th>真实姓名</th> 
                    <th>收货地址一</th> 
                    <th>收货地址二</th> 
                    <th>操作</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                        <tr style="text-align:center;background-color:white">
                            <td><%#Eval("ConsumerId") %></td>
                            <td><%#Eval("Phone") %></td>
                            <td><%#Eval("Name") %></td>
                            <td><%#Eval("Address1")%></td>
                            <td><%#Eval("Address2") %></td>
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" OnClientClick="return confirm('确定删除此用户信息嘛？')" CommandArgument='<%#Eval("ConsumerId") %>' CommandName="delete" ImageUrl="~/Images/sc.gif" Width="60px" />
<%--                                <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument="<%#Eval("ConsumerId") %>" CommandName="" ImageUrl="~/Images/sc.gif" Width="30px"/>
                                <asp:ImageButton ID="ImageButton3" runat="server" CommandArgument="<%#Eval("ConsumerId") %>" CommandName="" ImageUrl="~/Images/sc.gif" Width="30px"/>--%>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
        <div style="text-align:center;margin-top:10px;">
            <asp:LinkButton ID="LinkButton1" style="text-decoration:none;margin-left:30px;color:black;background-color:antiquewhite;border:1px solid black;" runat="server"  OnClick="LinkButton1_Click">上一页</asp:LinkButton>
            <asp:Repeater ID="Repeater2" runat="server" OnItemCommand="Repeater2_ItemCommand">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" style="text-decoration:none;margin-left:30px;color:black;"  CommandArgument='<%#Eval("PageIndex") %>'  runat="server"><%#Eval("PageIndex") %></asp:LinkButton>
                </ItemTemplate>
            </asp:Repeater>
            <asp:LinkButton ID="LinkButton2" style="text-decoration:none;margin-left:30px;color:black;background-color:antiquewhite;border:1px solid black;" runat="server"  OnClick="LinkButton2_Click">下一页</asp:LinkButton>
        </div>
    </div>
</asp:Content>
