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

public partial class cailiaoxuqiu_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
	    // xingbie.Items.Add("所有"); 
	    // xingbie.Items.Add("male"); 
	    // xingbie.Items.Add("female");
            gongyingshang.Items.Add("所有");
            addxiala2("gongyingshangxinxi", "bianhao", "上游供应商");
            string sql;
            sql = "select * from cailiaoxuqiu order by id desc";
            getdata(sql);
        }
    }
    private void addxiala2(string ntable, string nzd, string nxlk)
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
                DataGrid1.DataSource = result.Tables[0];
                DataGrid1.DataBind();
                Label1.Text = "以上数据中共" + result.Tables[0].Rows.Count+"条";
            }
            else
            {
                DataGrid1.DataSource = null;
                DataGrid1.DataBind();
                Label1.Text = "暂无任何数据";
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
        sql = "select * from cailiaoxuqiu where 1=1";
        if (dingdanhao.Text.ToString().Trim()!="所有" ){ sql=sql+" and dingdanhao like '%" + dingdanhao.Text.ToString().Trim() + "%'";}if (dingdanmingcheng.Text.ToString().Trim()!="" ){ sql=sql+" and dingdanmingcheng like '%" + dingdanmingcheng.Text.ToString().Trim() + "%'";}if (xuqiucailiao.Text.ToString().Trim()!="" ){ sql=sql+" and xuqiucailiao like '%" + xuqiucailiao.Text.ToString().Trim() + "%'";}if (gongyingshang.Text.ToString().Trim()!="所有" ){ sql=sql+" and gongyingshang like '%" + gongyingshang.Text.ToString().Trim() + "%'";}
        sql = sql + " order by id desc";

        getdata(sql);
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        string sql;
        sql = "select * from cailiaoxuqiu order by id desc";
        getdata(sql);
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        DataGrid1.DataBind();
    }
	public string riqigeshi(object str)
    {
        string strTmp = str.ToString();
        DateTime dt = Convert.ToDateTime(strTmp);
        string ss = dt.ToShortDateString();
        return ss;
        
    } 
}

