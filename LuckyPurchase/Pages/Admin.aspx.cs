using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuckyPurchase.Pages
{
    public partial class Admin : System.Web.UI.Page
    {
        private int pageSize = 4;//每一页显示的数量
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {             
                BindPage();
                BindRPData();
            }
        }

        public void BindRPData()
        {
            //从地址栏获取页码
            var page = GetCurrPage();
            //根据页码获取列表数据
            var list = Consumer1Manager.GetPage(page, pageSize);
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

        //查询
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == string.Empty)
            {
                //从地址栏获取页码
                var page = GetCurrPage();
                //根据页码获取列表数据
                var list = Consumer1Manager.GetPage(page, pageSize);
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.DataSource = Consumer1Manager.GetArticlesByTitle(TextBox1.Text);
                Repeater1.DataBind();
            }

            //var name = TextBox1.Text.Trim();
            //var r = Consumer1Manager.GetName(name);
            //if (r==1)
            //{
            //    Response.Write("<script>alert('查无此人！')</script>");
                
            //}
            //else
            //{
            //    var info = Consumer1Manager.SelName(name);
            //    Repeater1.DataSource = info;
            //    Repeater1.DataBind();
            //}
        }

        //刷新
        protected void Button2_Click(object sender, EventArgs e)
        {
            BindRPData();
        }

        //删除
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var id = Convert.ToInt32(e.CommandArgument);
            var name = e.CommandName;
            switch (name)
            {
                case "delete":
                    var info = Consumer1Manager.Delete(id);
                    if (info != 0)
                    {
                        Response.Write("<script>alert('删除成功！')</script>");
                        BindRPData();
                    }
                    break;
            }
        }

        /// <summary>
        /// 绑定页码数据
        /// </summary>
        private void BindPage()
        {
            //计算总页数
            var itemsCount = Consumer1Manager.GetCount();
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
            var itemsCount = Consumer1Manager.GetCount();
            //向上取整
            var pagesCount = (int)(Math.Ceiling(itemsCount * 1.0 / pageSize));
            return pagesCount;
        }

        //上一页
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var page = GetCurrPage();
            if (page <= 1)
            {
                Response.Write("<script>alert('已经是第一页了！')</script>");
                return;
            }
            Response.Redirect("Admin.aspx?page=" + (page - 1));
        }

        //下一页
        protected void LinkButton2_Click(object sender, EventArgs e)
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
            Response.Redirect("Admin.aspx?page=" + (page + 1));
        }

        //点击某一页
        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var page = e.CommandArgument;
            Response.Redirect("Admin.aspx?page=" + page);
        }
    }
}