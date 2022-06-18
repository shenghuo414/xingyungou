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
    public partial class abount : System.Web.UI.Page
    {
        private int pageSize = 10;//每一页显示的数量
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["name"] != null)
                {
                    LinkButton2.Visible = false;
                    LinkButton1.Text = "退出";
                    Label1.Text = Session["name"].ToString();
                    var name = Session["name"].ToString();
                    var info = Consumer1Manager.SelectName(name);
                    Label3.Text ="￥"+Convert.ToInt32(info.Money);
                }
                BindData();
                BindPage();
                
            }
        }

        public void BindData()
        {
            //从地址栏获取页码
            var page = GetCurrPage();
            //根据页码获取列表数据
            var list = GoodsManager.GetPage(page, pageSize);
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
                Label3.Text = "";
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

        private Dictionary<int,int> GetGoodsFormSession()
        {
            Dictionary<int, int> car = null;
            if (Session["car"] != null)
            {
                car = Session["car"] as Dictionary<int, int>;
            }
            if(car == null)
            {
                car = new Dictionary<int, int>();
                Session["car"] = car;
            }
            return car;
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var id = Convert.ToInt32(e.CommandArgument);
            var name1 = e.CommandName;
            switch (name1)
            {
                case "buy":
                    var xinming = Session["name"].ToString();
                    var a = CatManager.Selectid(id);
                    Order order = new Order()
                    {
                        ConsumerName = xinming,
                        Phone = a.Consumer1.Phone,
                        GoodsName = a.Good.GoodsName,
                        Price = a.Good.Price,
                        Quantity = 1,
                        Total = a.Good.Price,
                        Address = a.Consumer1.Address1,
                        BuyTime = DateTime.Now
                    };
                    var c = OrderManager.Insert(order);
                    if (c > 0)
                    {
                        Response.Write("<script>alert('云购成功！')</script>");                      
                        var jia = a.Good.Price;
                        var qian = a.Consumer1.Money;
                        var xianqian =Convert.ToInt32(qian - jia);
                        Consumer1Manager.UpdataMoney(xinming, xianqian);
                        Label3.Text = "￥" + Convert.ToString(xianqian);
                    }
                    else
                    {
                        Response.Write("<script>alert('云购失败！')</script>");
                    }
                    break;
                case "add":
                    var info = GoodsManager.SelectGoodsId(id);
                    var name = Label1.Text;
                    var list = Consumer1Manager.SelectName(name);
                    Cat cat = new Cat()
                    {
                        GoodsId = info.GoodsId,
                        ConsumerId = list.ConsumerId,
                        CarCount = 1
                    };
                    var r=CatManager.Add(cat);
                    if (r > 0)
                    {
                        Response.Write("<script>alert('加入购物车成功！')</script>");
                        
                    }
                    else
                    {
                        Response.Write("<script>alert('加入购物车失败！')</script>");
                    }
                    break;
            }
        }

     

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            BindData();
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            var type = LinkButton4.Text;           
            if (type == "手机数码")
            {
                var list = GoodsManager.GetType(type);
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            var type = LinkButton5.Text;
            if (type == "电脑办公")
            {
                var list = GoodsManager.GetType(type);
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            var type = LinkButton6.Text;
            if (type == "家具电器")
            {
                var list = GoodsManager.GetType(type);
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            var type = LinkButton7.Text;
            if (type == "食品饮料")
            {
                var list = GoodsManager.GetType(type);
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            var type = LinkButton8.Text;
            if (type == "钟表首饰")
            {
                var list = GoodsManager.GetType(type);
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            var type = LinkButton9.Text;
            if (type == "户外运动")
            {
                var list = GoodsManager.GetType(type);
                Repeater1.DataSource = list;
                Repeater1.DataBind();
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
            var itemsCount = GoodsManager.GetCount();
            //向上取整
            var pagesCount = (int)(Math.Ceiling(itemsCount * 1.0 / pageSize));
            return pagesCount;
        }


        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var page = e.CommandArgument;
            Response.Redirect("abount.aspx?page=" + page);
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            var page = GetCurrPage();
            if (page <= 1)
            {
                Response.Write("<script>alert('已经是第一页了！')</script>");
                return;
            }
            Response.Redirect("abount.aspx?page=" + (page - 1));
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
            Response.Redirect("abount.aspx?page=" + (page + 1));
        }

        //充值
        protected void Button1_Click(object sender, EventArgs e)
        {
            var name = Session["name"].ToString();
            var money =Convert.ToInt32(TextBox2.Text.Trim());
            if (money != 0)
            {
                var r = Consumer1Manager.SelectName(name);
                var qian = money + (int)(r.Money);
                var info = Consumer1Manager.UpdataMoney(name, qian);
                if (info != 0)
                {
                    Response.Write("<script>alert('充值成功！')</script>");
                    Label3.Text = "￥" + Convert.ToString(qian);
                    TextBox2.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('充值失败！')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('请输入充值金额！')</script>");
            }
            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == string.Empty)
            {
                //从地址栏获取页码
                var page = GetCurrPage();
                //根据页码获取列表数据
                var list = GoodsManager.GetPage(page, pageSize);
                Repeater1.DataSource = list;
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.DataSource = GoodsManager.GetArticlesByTitle(TextBox1.Text);
                Repeater1.DataBind();
            }
        }
    }
}