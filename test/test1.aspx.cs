using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

public partial class test_test1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        string conn = "server=localhost;user id=root;password=123456;database=web";
        MySqlConnection con = new MySqlConnection(conn);
        con.Open();

        MySqlCommand cmd = new MySqlCommand("select * from allusers where username='hsg' and pwd='hsg' ", con);

        MySqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        dr.Close();
        con.Close();


    }
}