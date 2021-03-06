using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuckyPurchase.商品详情页
{
    public partial class 苹果电脑 : System.Web.UI.Page
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
                }
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
    }
}