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

public partial class dingdanxinxi_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
   
        if (!IsPostBack)
        {
			// xingbie.Items.Add("male"); 
			// xingbie.Items.Add("female");
            string sql;
            sql = "select * from dingdanxinxi where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                dingdanbianhao.Text = result.Tables[0].Rows[0]["dingdanbianhao"].ToString().Trim();dingdanmingcheng.Text = result.Tables[0].Rows[0]["dingdanmingcheng"].ToString().Trim();tijiaoren.Text = result.Tables[0].Rows[0]["tijiaoren"].ToString().Trim();xuqiuchanpin.Text = result.Tables[0].Rows[0]["xuqiuchanpin"].ToString().Trim();shuliang.Text = result.Tables[0].Rows[0]["shuliang"].ToString().Trim();jiaodanshixian.Text = DateTime.Parse(result.Tables[0].Rows[0]["jiaodanshixian"].ToString().Trim()).ToShortDateString();dingdanzonge.Text = result.Tables[0].Rows[0]["dingdanzonge"].ToString().Trim();beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        
        sql = "update dingdanxinxi set dingdanbianhao='" + dingdanbianhao.Text.ToString().Trim() + "',dingdanmingcheng='" + dingdanmingcheng.Text.ToString().Trim() + "',tijiaoren='" + tijiaoren.Text.ToString().Trim() + "',xuqiuchanpin='" + xuqiuchanpin.Text.ToString().Trim() + "',shuliang='" + shuliang.Text.ToString().Trim() + "',jiaodanshixian='" + jiaodanshixian.Text.ToString().Trim() + "',dingdanzonge='" + dingdanzonge.Text.ToString().Trim() + "',beizhu='" + beizhu.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('修改成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }
}

