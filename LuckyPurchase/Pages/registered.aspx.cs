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
    public partial class registered : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var name = TextBox1.Text.Trim();
            var phone = TextBox2.Text.Trim();
            var pwd = TextBox4.Text.Trim();

            Consumer1 consumer = new Consumer1()
            {
                Name=name,
                Phone=phone,
                PassWord=pwd,
                Money=0,
                Address1="无",
                Address2 = "无",
                Portrait="ss.png"
            };

            var info = Consumer1Manager.AddConsumer(consumer);
            if (info != 0)
            {
                Response.Write("<script>alert('注册成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('注册失败！')</script>");
            }
        }
    }
}