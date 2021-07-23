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

public partial class dingdanxinxi_detail : System.Web.UI.Page
{
	public string ndingdanbianhao,ndingdanmingcheng,ntijiaoren,nxuqiuchanpin,nshuliang,njiaodanshixian,ndingdanzonge,nbeizhu;
    protected void Page_Load(object sender, EventArgs e)
    {
   
        if (!IsPostBack)
        {
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
                ndingdanbianhao = result.Tables[0].Rows[0]["dingdanbianhao"].ToString().Trim();ndingdanmingcheng = result.Tables[0].Rows[0]["dingdanmingcheng"].ToString().Trim();ntijiaoren = result.Tables[0].Rows[0]["tijiaoren"].ToString().Trim();nxuqiuchanpin = result.Tables[0].Rows[0]["xuqiuchanpin"].ToString().Trim();nshuliang = result.Tables[0].Rows[0]["shuliang"].ToString().Trim();njiaodanshixian = result.Tables[0].Rows[0]["jiaodanshixian"].ToString().Trim();ndingdanzonge = result.Tables[0].Rows[0]["dingdanzonge"].ToString().Trim();nbeizhu = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();
                
            }
        }
    }
    
}

