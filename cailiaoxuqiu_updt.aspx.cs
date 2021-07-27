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

public partial class cailiaoxuqiu_updt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
   
        if (!IsPostBack)
        {
			// xingbie.Items.Add("male"); 
			// xingbie.Items.Add("female");
            string sql;
            sql = "select * from cailiaoxuqiu where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                dingdanhao.Text = result.Tables[0].Rows[0]["dingdanhao"].ToString().Trim();dingdanmingcheng.Text = result.Tables[0].Rows[0]["dingdanmingcheng"].ToString().Trim();xuqiucailiao.Text = result.Tables[0].Rows[0]["xuqiucailiao"].ToString().Trim();shuliang.Text = result.Tables[0].Rows[0]["shuliang"].ToString().Trim();gongyingshang.Text = result.Tables[0].Rows[0]["gongyingshang"].ToString().Trim();beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();
                
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        string sql;
        
        sql = "update cailiaoxuqiu set dingdanhao='" + dingdanhao.Text.ToString().Trim() + "',dingdanmingcheng='" + dingdanmingcheng.Text.ToString().Trim() + "',xuqiucailiao='" + xuqiucailiao.Text.ToString().Trim() + "',shuliang='" + shuliang.Text.ToString().Trim() + "',gongyingshang='" + gongyingshang.Text.ToString().Trim() + "',beizhu='" + beizhu.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            this.Controls.Add(new LiteralControl("<script>ShowMsg('修改成功');</script>"));
        }
        else
        {
            this.Controls.Add(new LiteralControl("<script>ShowMsg('系统错误');</script>"));
        }
    }
}

