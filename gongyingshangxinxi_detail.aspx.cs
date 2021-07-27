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

public partial class gongyingshangxinxi_detail : System.Web.UI.Page
{
    public string nbianhao, nmingcheng, nleixing, nzhuyingchanpin, ndianhua, nchuanzhen, nfuzeren, nyouxiang, ndizhi, nbeizhu, nmima;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            string sql;
            sql = "select * from gongyingshangxinxi where id=" + Request.QueryString["id"].ToString().Trim();
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
                nbianhao = result.Tables[0].Rows[0]["bianhao"].ToString().Trim(); nmingcheng = result.Tables[0].Rows[0]["mingcheng"].ToString().Trim(); nleixing = result.Tables[0].Rows[0]["leixing"].ToString().Trim(); nzhuyingchanpin = result.Tables[0].Rows[0]["zhuyingchanpin"].ToString().Trim(); ndianhua = result.Tables[0].Rows[0]["dianhua"].ToString().Trim(); nchuanzhen = result.Tables[0].Rows[0]["chuanzhen"].ToString().Trim(); nfuzeren = result.Tables[0].Rows[0]["fuzeren"].ToString().Trim(); nyouxiang = result.Tables[0].Rows[0]["youxiang"].ToString().Trim(); ndizhi = result.Tables[0].Rows[0]["dizhi"].ToString().Trim(); nbeizhu = result.Tables[0].Rows[0]["beizhu"].ToString().Trim(); nmima = result.Tables[0].Rows[0]["mima"].ToString().Trim();

            }
        }
    }

}

