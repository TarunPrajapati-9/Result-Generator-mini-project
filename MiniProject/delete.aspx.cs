using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MiniProject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=TARUN\\SQLEXPRESS;Initial Catalog=ASP;Integrated Security=True";
            cn.Open();

            String sql1 = "delete from results where ER='" + TextBox1.Text + "'";
            String sql2 = "delete from grades where ER='" + TextBox1.Text + "'";
            String sql3 = "select * from results";
            String sql4 = "select * from grades";
            try
            {
                SqlCommand cmd = new SqlCommand(sql1, cn);
                SqlCommand cmd2 = new SqlCommand(sql3, cn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd2.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                cmd.Dispose();
                cmd2.Dispose();
                Label1.Text = "Record Deleted Successfully!";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            cn.Close();

            SqlConnection cn1 = new SqlConnection();
            cn1.ConnectionString = "Data Source=TARUN\\SQLEXPRESS;Initial Catalog=ASP;Integrated Security=True";
            cn1.Open();
            try
            {
                SqlCommand cmd1 = new SqlCommand(sql2, cn1);
                SqlCommand cmd3 = new SqlCommand(sql4, cn1);
                cmd1.ExecuteNonQuery();
                SqlDataReader dr1 = cmd3.ExecuteReader();
                GridView2.DataSource = dr1;
                GridView2.DataBind();
                cmd1.Dispose();
                cmd3.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            cn1.Close();
        }
    }
}