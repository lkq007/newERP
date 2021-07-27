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

public partial class kehuxinxi_updt2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
   
        if (!IsPostBack)
        {
            xingbie.Items.Add("男");
            xingbie.Items.Add("女");
            string sql;
            sql = "select * from kehuxinxi where bianhao='" + Session["username"].ToString().Trim() + "'";
            getdata(sql);
        }
    }



    private void getdata(string sql)
    {
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                bianhao.Text = result.Tables[0].Rows[0]["bianhao"].ToString().Trim();xingming.Text = result.Tables[0].Rows[0]["xingming"].ToString().Trim();shenfenzheng.Text = result.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim();xingbie.Text = result.Tables[0].Rows[0]["xingbie"].ToString().Trim();dianhua.Text = result.Tables[0].Rows[0]["dianhua"].ToString().Trim();dizhi.Text = result.Tables[0].Rows[0]["dizhi"].ToString().Trim();youxiang.Text = result.Tables[0].Rows[0]["youxiang"].ToString().Trim();mima.Text = result.Tables[0].Rows[0]["mima"].ToString().Trim();beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        
        sql = "update kehuxinxi set bianhao='" + bianhao.Text.ToString().Trim() + "',xingming='" + xingming.Text.ToString().Trim() + "',shenfenzheng='" + shenfenzheng.Text.ToString().Trim() + "',xingbie='" + xingbie.Text.ToString().Trim() + "',dianhua='" + dianhua.Text.ToString().Trim() + "',dizhi='" + dizhi.Text.ToString().Trim() + "',youxiang='" + youxiang.Text.ToString().Trim() + "',mima='" + mima.Text.ToString().Trim() + "',beizhu='" + beizhu.Text.ToString().Trim() + "' where bianhao='" + Session["username"].ToString().Trim() + "'";
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            this.Controls.Add(new LiteralControl("<script>ShowMsg('修改成功');</script>"));
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }
}

