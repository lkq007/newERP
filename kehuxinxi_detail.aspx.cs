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

public partial class kehuxinxi_detail : System.Web.UI.Page
{
	public string nbianhao,nxingming,nshenfenzheng,nxingbie,ndianhua,ndizhi,nyouxiang,nmima,nbeizhu;
    protected void Page_Load(object sender, EventArgs e)
    {
   
        if (!IsPostBack)
        {
            string sql;
            sql = "select * from kehuxinxi where id=" + Request.QueryString["id"].ToString().Trim() ;
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
                nbianhao = result.Tables[0].Rows[0]["bianhao"].ToString().Trim();nxingming = result.Tables[0].Rows[0]["xingming"].ToString().Trim();nshenfenzheng = result.Tables[0].Rows[0]["shenfenzheng"].ToString().Trim();nxingbie = result.Tables[0].Rows[0]["xingbie"].ToString().Trim();ndianhua = result.Tables[0].Rows[0]["dianhua"].ToString().Trim();ndizhi = result.Tables[0].Rows[0]["dizhi"].ToString().Trim();nyouxiang = result.Tables[0].Rows[0]["youxiang"].ToString().Trim();nmima = result.Tables[0].Rows[0]["mima"].ToString().Trim();nbeizhu = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();
                
            }
        }
    }
    
}

