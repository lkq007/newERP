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

public partial class gongyingshangxinxi_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
   
        if (!IsPostBack)
        {
            leixing.Items.Add("上游供应商");
            leixing.Items.Add("下游供应商");
			// xingbie.Items.Add("male"); 
			// xingbie.Items.Add("female");
            string sql;
            sql = "select * from gongyingshangxinxi where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                bianhao.Text = result.Tables[0].Rows[0]["bianhao"].ToString().Trim();mingcheng.Text = result.Tables[0].Rows[0]["mingcheng"].ToString().Trim();leixing.Text = result.Tables[0].Rows[0]["leixing"].ToString().Trim();zhuyingchanpin.Text = result.Tables[0].Rows[0]["zhuyingchanpin"].ToString().Trim();dianhua.Text = result.Tables[0].Rows[0]["dianhua"].ToString().Trim();chuanzhen.Text = result.Tables[0].Rows[0]["chuanzhen"].ToString().Trim();fuzeren.Text = result.Tables[0].Rows[0]["fuzeren"].ToString().Trim();youxiang.Text = result.Tables[0].Rows[0]["youxiang"].ToString().Trim();dizhi.Text = result.Tables[0].Rows[0]["dizhi"].ToString().Trim();beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();mima.Text = result.Tables[0].Rows[0]["mima"].ToString().Trim();
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        
        sql = "update gongyingshangxinxi set bianhao='" + bianhao.Text.ToString().Trim() + "',mingcheng='" + mingcheng.Text.ToString().Trim() + "',leixing='" + leixing.Text.ToString().Trim() + "',zhuyingchanpin='" + zhuyingchanpin.Text.ToString().Trim() + "',dianhua='" + dianhua.Text.ToString().Trim() + "',chuanzhen='" + chuanzhen.Text.ToString().Trim() + "',fuzeren='" + fuzeren.Text.ToString().Trim() + "',youxiang='" + youxiang.Text.ToString().Trim() + "',dizhi='" + dizhi.Text.ToString().Trim() + "',beizhu='" + beizhu.Text.ToString().Trim() + "',mima='" + mima.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
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

