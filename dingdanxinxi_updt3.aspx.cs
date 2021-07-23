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

public partial class dingdanxinxi_updt3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // xingbie.Items.Add("male"); 
            // xingbie.Items.Add("female");
            string sql;
            addxiala("gongyingshangxinxi", "bianhao", "下游供应商");
            sql = "select * from dingdanxinxi where id=" + Request.QueryString["id"].ToString().Trim();
            getdata(sql);
        }
    }

    private void addxiala(string ntable, string nzd, string nxlk)
    {
        string sql;
        sql = "select " + nzd + " from " + ntable + " where leixing='" + nxlk + "' order by id desc";
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                for (i = 0; i < result.Tables[0].Rows.Count; i++)
                {
                    gongyingshang.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                }
            }
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
                dingdanbianhao.Text = result.Tables[0].Rows[0]["dingdanbianhao"].ToString().Trim(); dingdanmingcheng.Text = result.Tables[0].Rows[0]["dingdanmingcheng"].ToString().Trim(); tijiaoren.Text = result.Tables[0].Rows[0]["tijiaoren"].ToString().Trim(); xuqiuchanpin.Text = result.Tables[0].Rows[0]["xuqiuchanpin"].ToString().Trim(); shuliang.Text = result.Tables[0].Rows[0]["shuliang"].ToString().Trim(); jiaodanshixian.Text = DateTime.Parse(result.Tables[0].Rows[0]["jiaodanshixian"].ToString().Trim()).ToShortDateString(); dingdanzonge.Text = result.Tables[0].Rows[0]["dingdanzonge"].ToString().Trim(); beizhu.Text = result.Tables[0].Rows[0]["beizhu"].ToString().Trim();

            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string sql;

        sql = "update dingdanxinxi set gongyingshang2='" + gongyingshang.Text.ToString().Trim() + "' where id=" + Request.QueryString["id"].ToString().Trim();
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            Response.Write("<script>javascript:alert('操作成功');</script>");
        }
        else
        {
            Response.Write("<script>javascript:alert('系统错误');</script>");
        }
    }
}

