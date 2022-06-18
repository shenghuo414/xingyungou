<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Site1.Master" AutoEventWireup="true" CodeBehind="Admin-Addgoods.aspx.cs" Inherits="LuckyPurchase.Pages.Admin_Addgoods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../Css/System.css"/>
    <link rel="icon" href="../Images/Logo.png" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table id="table_Addgoods">
            <tr class="tr">
                <td><asp:Label ID="Label1" CssClass="text" runat="server" Text="商品名称："></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox1" CssClass="btn_add" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>

            </tr>
             <tr class="tr">
                <td><asp:Label ID="Label2" CssClass="text" runat="server" Text="商品类型："></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" Height="30" Width="120" runat="server">
                        <asp:ListItem Value="手机数码">手机数码</asp:ListItem>
                        <asp:ListItem Value="电脑办公">电脑办公</asp:ListItem>
                        <asp:ListItem Value="家具电器">家具电器</asp:ListItem>
                        <asp:ListItem Value="食品饮料">食品饮料</asp:ListItem>
                        <asp:ListItem Value="钟表首饰">钟表首饰</asp:ListItem>
                        <asp:ListItem Value="户外运动">户外运动</asp:ListItem>
                        <asp:ListItem Value="化妆护肤">化妆护肤</asp:ListItem>
                        <asp:ListItem Value="礼品精包">礼品精包</asp:ListItem>
                        <asp:ListItem Value="生活用品">生活用品</asp:ListItem>
                    </asp:DropDownList>
<%--                    <asp:TextBox ID="TextBox2" CssClass="btn_add" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
             <tr class="tr">
                <td><asp:Label ID="Label3" CssClass="text" runat="server" Text="单价："></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox3" CssClass="btn_add" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr class="tr">
                <td><asp:Label ID="Label4" CssClass="text" runat="server" Text="入库数量："></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox4" CssClass="btn_add" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr class="tr">
                <td><asp:Label ID="Label5" CssClass="text" runat="server" Text="图片："></asp:Label></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" Width="140" runat="server" />
                    <asp:Button ID="Button3" runat="server" Width="50" Text="上传" OnClick="Button3_Click" CausesValidation="False" /><br />
                </td>
            </tr>
              <tr class="tr">
                <td></td>
                <td><asp:ImageButton ID="ImageButton1" runat="server" Width="150" Height="150"  /></td>
            </tr>
        </table>
    </div><br />
    <div class="btn">
        <a href="#"><asp:Button ID="Button1" CssClass="btn_text"  runat="server" Text="添加" OnClick="Button1_Click" /></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="#"><asp:Button ID="Button2" CssClass="btn_text"  runat="server" Text="取消" CausesValidation="False" OnClick="Button2_Click" /></a>
    </div>
</asp:Content>
