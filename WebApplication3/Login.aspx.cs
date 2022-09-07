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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection logcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            logcon.Open();
            Session["userid"] = TextBox3.Text;
            SqlCommand cmd = new SqlCommand("select * from register where userid=" + TextBox3.Text + " and passwords='" + TextBox2.Text + "'", logcon);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Response.Write("<script>alert('Login Sucessfully')</script>");
                Response.Redirect("BlogPage.aspx");

            }
            else
            {
                Response.Write("<script>alert('Please Go for New Registration')</script>");
            }
            logcon.Close();

        }
    }
}