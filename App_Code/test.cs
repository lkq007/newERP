using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

/// <summary>
/// test 的摘要说明
/// </summary>
public class test
{
    public test()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public MySqlConnection getConn()
    {
        string connetStr = "server=localhost;user id=root;database=erp webform; Charset =utf8;";
        MySqlConnection conn = new MySqlConnection(connetStr);
        return conn;
    }



}