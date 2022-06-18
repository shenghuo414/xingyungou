using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LuckyPurchase.Pages
{
    public partial class Center : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["name"] != null|| Session["phone"] != null || Session["Address1"]!=null || Session["Address2"] != null || Session["Portrait"] != null)
                {
                    ImageButton1.ImageUrl = "~/Images/"+ Session["Portrait"].ToString();
                    Label1.Text = Session["name"].ToString().Trim();
                    TextBox1.Text = Session["name"].ToString().Trim();
                    TextBox2.Text = Session["phone"].ToString().Trim();
                    TextBox3.Text = Session["Address1"].ToString().Trim();
                    TextBox4.Text = Session["Address1"].ToString().Trim();
                    TextBox5.Text = Session["Address2"].ToString().Trim();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var name = TextBox1.Text;
            var phone = TextBox2.Text;
            var address1= TextBox4.Text;
            var address2 = TextBox5.Text;
            var info = Consumer1Manager.Updata(name, phone, address1, address2);
            var img = Convert.ToString(Session["fileName"]);
            var tx= Consumer1Manager.UpdataTX(name, img);
            if (info != 0||tx!=0)
            {
                Response.Write("<script>alert('修改成功！')</script>");
                var list = Consumer1Manager.SetName(phone);
                TextBox2.Text = list.Phone;
                TextBox4.Text = list.Address1;
                TextBox5.Text = list.Address2;
                ImageButton1.ImageUrl = "~/Images/" + list.Portrait;
                ImageButton2.ImageUrl = "";
            }
            else
            {
                Response.Write("<script>alert('修改失败！')</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
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
                    ImageButton2.ImageUrl = "~/Images/" + fileName;
                }
                Session["fileName"] = fileName;
            }            
        }
    }
}