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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection blogcon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");
        SqlConnection blogscon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            //dis_data();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            blogcon.Open();
            try
            {
                SqlCommand cmd = new SqlCommand("insert into blog values('" + TextBox1.Text + "')", blogcon);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Published Sucessfully')</script>");
                //dis_data();
            }
            catch (SqlException e2)
            {
                Response.Write("<script>alert('Try Again')</script>");
            }
            blogcon.Close();
        }

        public void dis_data()
        {
            blogscon.Open();
            SqlCommand cmd = blogscon.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from blog";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            blogscon.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            dis_data();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            blogscon.Open();
            try
            {
                SqlCommand cmd = blogscon.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update blog set content ='" + TextBox1.Text + "' where sno= '"+ TextBox2.Text + "'";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Modified Sucessfully')</script>");
            }
            catch (SqlException e3)
            {
                Response.Write("<script>alert('Try Again')</script>");
            }
            blogscon.Close();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            blogscon.Open();
            try
            {
                SqlCommand cmd = blogscon.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from blog where sno= '" + TextBox2.Text + "'";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Deleted Sucessfully')</script>");
            }
            catch (SqlException e3)
            {
                Response.Write("<script>alert('Try Again')</script>");
            }
            blogscon.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[1].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        }
    }
}