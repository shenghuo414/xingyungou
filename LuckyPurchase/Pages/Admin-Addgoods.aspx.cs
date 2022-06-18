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
    public partial class Admin_Addgoods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //添加商品
        protected void Button1_Click(object sender, EventArgs e)
        {
            var goodsname = TextBox1.Text.Trim();
            var type = Convert.ToString(DropDownList1.SelectedValue);
            var price=Convert.ToDecimal(TextBox3.Text.Trim());
            var num=Convert.ToInt32(TextBox4.Text.Trim());        
            var img =Convert.ToString(Session["fileName"]);

            Good goods = new Good
            {
                GoodsName = goodsname,
                Type=type,
                Price=price,
                NumCount=num,
                Src= img
            };
            var info = GoodsManager.Add(goods);
            if (info != 0)
            {
                Response.Write("<script>alert('商品添加成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('商品添加失败！')</script>");
            }
        }

        //取消添加
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            ImageButton1.ImageUrl = "";
        }

        //图片上传
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                //获取上传的文件名
                string fileName = FileUpload1.FileName;
                //获取上传的文件的后缀名
                String fileFix = fileName.Substring(fileName.LastIndexOf('.') + 1).ToLower();
                if (fileFix != "png" && fileFix != "jpg" && fileFix != "jpeg" && fileFix != "pic")
                {
                    Response.Write("<script>alert('上传的文件不是图片类型文件,上传失败！')</script>");
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("~") + "/Images/" + fileName);
                    ImageButton1.ImageUrl = "~/Images/" + fileName;
                }
                Session["fileName"] = fileName;
            }
        }
    }
}