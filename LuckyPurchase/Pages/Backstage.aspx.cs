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
    public partial class Backstage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var num = TextBox1.Text.Trim();
            var pwd = TextBox2.Text.Trim();
            var r = AdminManager.Login(num, pwd);
            if (r == 1)
            {
                Response.Write("<script>alert('抱歉！账户不存在或此账户不是管理员，无法进行登录！请重新确认！')</script>");
                return;
            }
            if (r == 2)
            {
                Response.Write("<script>alert('密码错误')</script>");
                return;
            }
            else
            {
                var code = TextBox3.Text.Trim();
                var imgcode = Session["ValidateNum"].ToString();
                if(code== imgcode)
                {
                    Session["num"] = num;
                    Session["pwd"] = pwd;
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Write("<script>alert('验证码输入错误！')</script>");
                }
            }
            //else
            //{              
            //    Response.Write("<script>alert('不能使用非管理员账号登录！')</script>");
            //}            
        }
    }
}


