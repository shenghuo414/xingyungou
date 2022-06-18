using BLL;
using Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuckyPurchase.Pages
{
    public partial class NewbieGuide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["name"] != null)
                {
                    LinkButton2.Visible = false;
                    LinkButton1.Text = "退出";
                    Label1.Text = Session["name"].ToString();

                    var count = CatManager.SelectNameCount(Session["name"].ToString());
                    var cc = count * 2.00;
                    Label2.Text =cc.ToString("c2");
                }
                BindData();
            }
        }

        public void BindData()
        {
            if (Session["name"] != null)
            {
                var name = Session["name"].ToString();
                var list = CatManager.SelectAll(name);
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
               
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (LinkButton1.Text == "退出")
            {
                LinkButton2.Visible = true;
                LinkButton1.Text = "登录";
                LinkButton2.Text = "注册";
                Session["name"] = null;
                Label1.Text = "个人中心";
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("registered.aspx");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var id = Convert.ToInt32(e.CommandArgument);
            var info = CatManager.Detele(id);
            if (info != 0)
            {
                Response.Write("<script>alert('移除成功！')</script>");
                var count = CatManager.SelectNameCount(Session["name"].ToString());
                var cc = count * 2.00;
                Label2.Text = cc.ToString("c2");
                BindData();               
            }
            else
            {
                Response.Write("<script>alert('移除失败！')</script>");
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            var name1 = Session["name"].ToString();
            var r = CatManager.detele2(name1);
            if (r > 0)
            {
                Response.Write("<script>alert('购买成功！')</script>");
                BindData();
                Label2.Text = "￥0.00";
            }
            else
            {
                Response.Write("<script>alert('购买失败！')</script>");
            }
        }
    }
}