using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuckyPurchase.Pages
{
    public partial class Commodity : System.Web.UI.Page
    {
        private int pageSize=4;//每一页显示的数量
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                BindPage();
                BindData();
            }
        }

        public void BindData()
        {
            //从地址栏获取页码
            var page = GetCurrPage();
            //根据页码获取列表数据
            var list = GoodsManager.GetPage(page, pageSize);
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
        
        //查询
        protected void Button1_Click(object sender, EventArgs e)
        {
            //var type = TextBox1.Text.Trim();
            var dl =Convert.ToString(DropDownList1.SelectedValue);
            if (dl == "手机数码")
            {
                var info = GoodsManager.GetType(dl);
                Repeater1.DataSource = info;
                Repeater1.DataBind();
            }
            if (dl == "电脑办公")
            {
                var info = GoodsManager.GetType(dl);
                Repeater1.DataSource = info;
                Repeater1.DataBind();
            }
            if (dl == "家具电器")
            {
                var info = GoodsManager.GetType(dl);
                Repeater1.DataSource = info;
                Repeater1.DataBind();
            }
            if (dl == "食品饮料")
            {
                var info = GoodsManager.GetType(dl);
                Repeater1.DataSource = info;
                Repeater1.DataBind();
            }
            if (dl == "钟表首饰")
            {
                var info = GoodsManager.GetType(dl);
                Repeater1.DataSource = info;
                Repeater1.DataBind();
            }
            if (dl == "户外运动")
            {
                var info = GoodsManager.GetType(dl);
                Repeater1.DataSource = info;
                Repeater1.DataBind();
            }
            if (dl == "礼品精包")
            {
                var info = GoodsManager.GetType(dl);
                Repeater1.DataSource = info;
                Repeater1.DataBind();
            }
            if (dl == "化妆护肤")
            {
                var info = GoodsManager.GetType(dl);
                Repeater1.DataSource = info;
                Repeater1.DataBind();
            }
            if (dl == "生活用品")
            {
                var info = GoodsManager.GetType(dl);
                Repeater1.DataSource = info;
                Repeater1.DataBind();
            }
        }


        //刷新
        protected void Button2_Click(object sender, EventArgs e)
        {
            BindData();
        }

        //删除
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var goodsid = Convert.ToInt32(e.CommandArgument);
            var name = e.CommandName;
            switch (name)
            {
                case "delete":
                    var info = GoodsManager.Delete(goodsid);
                    if (info != 0)
                    {
                        Response.Write("<script>alert('删除成功！')</script>");
                        BindData();
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
            var itemsCount = GoodsManager.GetCount();
            //向上取整
            var pagesCount = (int)(Math.Ceiling(itemsCount * 1.0 / pageSize ));
            //构建绑定到Repeater控件的数据源
            //通用对象：object
            List<object> list = new List<object>();
            //
            for(int i=1;i<= pagesCount; i++)
            {
                var pageIndex = i;
                //匿名对象
                list.Add(new { PageIndex= pageIndex });
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
            var itemsCount = GoodsManager.GetCount();
            //向上取整
            var pagesCount = (int)(Math.Ceiling(itemsCount * 1.0 / pageSize ));
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
            Response.Redirect("Commodity.aspx?page=" + (page-1));
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
            Response.Redirect("Commodity.aspx?page=" + (page + 1));
        }

        //点击某一页
        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var page = e.CommandArgument;
            Response.Redirect("Commodity.aspx?page=" + page);
        }
    }
}