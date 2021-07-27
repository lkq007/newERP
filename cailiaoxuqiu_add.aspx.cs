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

public partial class cailiaoxuqiu_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		if (!IsPostBack)
        {
			gongyingshang.Text = Session["username"].ToString().Trim();
			// xingbie.Items.Add("male"); 
			// xingbie.Items.Add("female");
            dingdanhao.Items.Add("请选择");
            addxiala("dingdanxinxi", "dingdanbianhao", "kehubianhao");
            addxiala2("gongyingshangxinxi", "bianhao", "上游供应商");
			//ghdhdnuuks  string sql = "select * from yifngpsiafnxfinxgi where id=" + Request.QueryString["id"].ToString().Trim();
            //ghdhdnuuks  DataSet result = new DataSet();
            //ghdhdnuuks  result = new Class1().hsggetdata(sql);
            //ghdhdnuuks  if (result != null)
            //ghdhdnuuks  {
            //ghdhdnuuks    if (result.Tables[0].Rows.Count > 0)
            //ghdhdnuuks     {
                    //lsiebigsaodguqdufz

            //ghdhdnuuks     }
            //ghdhdnuuks  }
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql;
	//sfdigdh ischongfu("zhujianquchong");

        sql="insert into cailiaoxuqiu(dingdanhao,dingdanmingcheng,xuqiucailiao,shuliang,gongyingshang,beizhu) values('"+dingdanhao.Text.ToString().Trim()+"','"+dingdanmingcheng.Text.ToString().Trim()+"','"+xuqiucailiao.Text.ToString().Trim()+"','"+shuliang.Text.ToString().Trim()+"','"+gongyingshang.Text.ToString().Trim()+"','"+beizhu.Text.ToString().Trim()+"') ";
        int result;
        result = new Class1().hsgexucute(sql);
        if (result == 1)
        {
            this.Controls.Add(new LiteralControl("<script>ShowMsg('添加成功');</script>"));
        }
        else
        {
            this.Controls.Add(new LiteralControl("<script>ShowMsg('系统错误，请检查数据库设置问题');</script>"));
        }
    }
    private void addxiala(string ntable, string nzd, string nxlk)
    {
        string sql;
        sql = "select " + nzd + " from " + ntable + " order by id desc";
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            if (result.Tables[0].Rows.Count > 0)
            {
                int i = 0;
                for (i = 0; i < result.Tables[0].Rows.Count; i++)
                {
                    dingdanhao.Items.Add(result.Tables[0].Rows[i][0].ToString().Trim());
                }
            }
        }
    }

	public void ischongfu(string sql)
    {
        DataSet result = new DataSet();
            result = new Class1().hsggetdata(sql);
            if (result != null)
            {
                if (result.Tables[0].Rows.Count > 0)
                {
                    Response.Write("<script>javascript:alert('提示,该数据已存在,不要重复添加');location.href='cailiaoxuqiu_add.aspx';</script>");
                    Response.End();
                }
            }
    }
    protected void dingdanhao_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        string sql;
        sql = "select dingdanmingcheng from dingdanxinxi where dingdanbianhao='" + dingdanhao.Text.ToString().Trim() + "'";
        
        DataSet result = new DataSet();
        result = new Class1().hsggetdata(sql);
        if (result != null)
        {
            
            if (result.Tables[0].Rows.Count > 0)
            {
                dingdanmingcheng.Text = result.Tables[0].Rows[0][0].ToString().Trim();
            }
        }
    }
}

