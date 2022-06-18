using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuckyPurchase.Pages
{
    public partial class Commodity_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["num"] != null&& Session["pwd"] != null)
                {
                    Label2.Text = Session["num"].ToString();
                    TextBox1.Text = Session["pwd"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var num = Label2.Text;
            var pwd = TextBox3.Text;
            var info = AdminManager.Updata(num, pwd);
            if (info != 0)
            {
                Response.Write("<script>alert('修改成功！')</script>");
                var list = AdminManager.Get(num);
                TextBox1.Text = list.Num;
            }
            else
            {
                Response.Write("<script>alert('修改失败！')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}