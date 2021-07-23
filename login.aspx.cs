using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            cx.Items.Add("管理员");
            cx.Items.Add("客户");
            cx.Items.Add("上游供应商");
            cx.Items.Add("下游供应商");
            
            
        }
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox2.Text.ToString().Trim() == "" || TextBox1.Text.ToString().Trim() == "")
        {
            Response.Write("<script>javascript:alert('请输入完整');history.back();</script>");
            Response.End();
        }
        string sql="";
        if (cx.Text.ToString().Trim() == "管理员")
        {
            Console.WriteLine("Hello world");
            sql = "select * from allusers where username='" + TextBox1.Text.ToString().Trim() + "' and pwd='" + TextBox2.Text.ToString().Trim() + "' ";
        }
        if (cx.Text.ToString().Trim() == "客户")
        {
            sql = "select * from kehuxinxi where bianhao='" + TextBox1.Text.ToString().Trim() + "' and mima='" + TextBox2.Text.ToString().Trim() + "' ";
        }
        if (cx.Text.ToString().Trim() == "上游供应商" || cx.Text.ToString().Trim() == "下游供应商")
        {
            sql = "select * from gongyingshangxinxi where bianhao='" + TextBox1.Text.ToString().Trim() + "' and mima='" + TextBox2.Text.ToString().Trim() + "' and leixing='"+cx.Text.ToString().Trim()+"' ";
        }
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        // result = new TestOnline.Class1().hsggetdata(sql);

        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                Session["username"] = TextBox1.Text.ToString().Trim();

               if (cx.Text.ToString().Trim() == "管理员")
                {
                Session["cx"] = result.Tables[0].Rows[0]["cx"].ToString().Trim();
               }
               else
                {
                    Session["cx"] = cx.Text.ToString().Trim();
                    
                }


                Response.Redirect("main.aspx");
            }
            else
            {
                Response.Write("<script>javascript:alert('对不起，用户名或密码不正确，或您的帐号未经审核!');</script>");
            }
        }
        else
        {
            Response.Write("<script>javascript:alert('对不起，系统错误，请不要越权操作!');</script>");
        }
    }



}
