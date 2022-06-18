using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuckyPurchase.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var phone = TextBox1.Text;
            var pwd = TextBox2.Text.Trim();
            var info = Consumer1Manager.SetName(phone);
            if (info!=null)
            {
                var r = Consumer1Manager.SelectPhone(phone, pwd);
                if (r == 1)
                {
                    Response.Write("<script>alert('账号不存在！')</script>");
                }
                if (r == 2)
                {
                    Response.Write("<script>alert('密码错误！');</script>");
                }
                else
                {
                    Session["name"] = info.Name;
                    Session["phone"] = info.Phone;
                    Session["address1"] = info.Address1;
                    Session["address2"] = info.Address2;
                    Session["money"] = info.Money;
                    Session["Portrait"] = info.Portrait;
                    //Response.Write("<script>alert('登录成功！');window.location.href='index.aspx';</script>");
                    Response.Redirect("index.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('账号不存在！')</script>");
            } 
        }
    }
}