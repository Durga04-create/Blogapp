using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class ForgetPage : System.Web.UI.Page
    {
        SqlConnection forcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            forcon.Open();
            SqlCommand cmd = new SqlCommand("select passwords from register where userid=" + TextBox1.Text + "", forcon);
            string i = Convert.ToString(cmd.ExecuteScalar());
            Label4.Text = i;
            forcon.Close();
        }
    }
}