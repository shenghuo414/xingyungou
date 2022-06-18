<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site1.Master" AutoEventWireup="true"  CodeBehind="Commodity.aspx.cs" Inherits="LuckyPurchase.Pages.Commodity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../Css/Admin-index.css"/>
    <link rel="icon" href="../Images/Logo.png" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div id="head_content" <%--style="margin-left:35px;margin-top:20px"--%>>
            <asp:Label ID="Label1" runat="server" Text="商品类型："></asp:Label>
            <asp:DropDownList ID="DropDownList1" Width="120" runat="server">
                <asp:ListItem Value="手机数码">手机数码</asp:ListItem>
                <asp:ListItem Value="电脑办公">电脑办公</asp:ListItem>
                <asp:ListItem Value="家具电器">家具电器</asp:ListItem>
                <asp:ListItem Value="食品饮料">食品饮料</asp:ListItem>
                <asp:ListItem Value="钟表首饰">钟表首饰</asp:ListItem>
                <asp:ListItem Value="户外运动">户外运动</asp:ListItem>
            </asp:DropDownList>
<%--            <asp:TextBox ID="TextBox1" runat="server" placeholder="请输入商品类型"></asp:TextBox>--%>
            <asp:Button ID="Button1" CssClass="btn" runat="server" Text="查询" OnClick="Button1_Click" />&nbsp;
            <asp:Button ID="Button2" CssClass="btn" runat="server" Text="刷新" OnClick="Button2_Click" />
        </div>
        <div>
            <table id="table" >
                <tr id="tr">
                    <th>商品编号</th>
                    <th>图片</th>
                    <th>商品名称</th>
                    <th>商品类型</th> 
                    <th>价格</th>                                                                      
                    <th>存货量</th>
                    <th>操作</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <ItemTemplate>
                        <tr style="text-align:center;background-color:white">
                            <td><%#Eval("GoodsId") %></td>
                            <td><img width="60" src="../Images/<%#Eval("Src") %>"/></td>
                            <td><%#Eval("GoodsName") %></td>
                            <td><%#Eval("Type")%></td>
                            <td><%#Eval("Price","{0:c}") %></td>
                            <td><%#Eval("NumCount") %></td>   
                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" OnClientClick="return confirm('确定删除此商品信息嘛？')" CommandArgument='<%#Eval("GoodsId") %>' CommandName="delete"  ImageUrl="~/Images/sc.gif" Width="60px" />
<%--                                <asp:ImageButton ID="ImageButton2" runat="server" />
                                <asp:ImageButton ID="ImageButton3" runat="server" />--%>
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
