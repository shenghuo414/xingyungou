using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuckyPurchase.Pages
{
    public partial class Luck : System.Web.UI.Page
    {
        private int pageSize = 6;//每一页显示的数量
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
                BindPage();
                BindData();
            }
        }

        public void BindData()
        {
            //从地址栏获取页码
            var page = GetCurrPage();
            //根据页码获取列表数据
            var list = CatManager.SelectPage(page, pageSize);
            //var list = GoodsManager.GetAll();
            //绑定
            Repeater1.DataSource = list;
            Repeater1.DataBind();
        }

        /// <summary>
        /// 从地址栏获取当前的页码
        /// </summary>
        /// <returns></returns>
        private int GetCurrPage()
        {
            int page = 1;
            if (Request["page"] != null)
            {
                page = Convert.ToInt32(Request["page"]);
            }
            return page;
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

        }

        /// <summary>
        /// 绑定页码数据
        /// </summary>
        private void BindPage()
        {
            //计算总页数
            var itemsCount = CatManager.SelectCount();
            //向上取整
            var pagesCount = (int)(Math.Ceiling(itemsCount * 1.0 / pageSize));
            //构建绑定到Repeater控件的数据源
            //通用对象：object
            List<object> list = new List<object>();
            //
            for (int i = 1; i <= pagesCount; i++)
            {
                var pageIndex = i;
                //匿名对象
                list.Add(new { PageIndex = pageIndex });
            }
            //绑定
            Repeater2.DataSource = list;
            Repeater2.DataBind();
        }

        /// <summary>
        /// 获取总页数
        /// </summary>
        /// <returns></returns>
        private int GetitemsCount()
        {
            //计算总页数
            var itemsCount = CatManager.SelectCount();
            //向上取整
            var pagesCount = (int)(Math.Ceiling(itemsCount * 1.0 / pageSize));
            return pagesCount;
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            var page = GetCurrPage();
            if (page <= 1)
            {
                Response.Write("<script>alert('已经是第一页了！')</script>");
                return;
            }
            Response.Redirect("Luck.aspx?page=" + (page - 1));
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            //当前页
            var page = GetCurrPage();
            //总页数
            var pages = GetitemsCount();
            if (page >= pages)
            {
                Response.Write("<script>alert('已经是最后一页了！')</script>");
                return;
            }
            Response.Redirect("Luck.aspx?page=" + (page + 1));
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var page = e.CommandArgument;
            Response.Redirect("Luck.aspx?page=" + page);
        }
    }
}