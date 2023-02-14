using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MiniProject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=tarun\\sqlexpress;Initial Catalog=ASP;Integrated Security=True";
            cn.Open();

            string sql1 = "select * from grades where ER = '" + TextBox1.Text + "'";
            string sql2 = "select * from results where ER = '" + TextBox1.Text + "'";
            try
            {
                SqlCommand cmd = new SqlCommand(sql1, cn);
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                cmd.Dispose();
                Label1.Text = "Data Displayed!";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            cn.Close();

            SqlConnection cn1 = new SqlConnection();
            cn1.ConnectionString = "Data Source=tarun\\sqlexpress;Initial Catalog=ASP;Integrated Security=True";
            cn1.Open();
            try
            {
                SqlCommand cmd1 = new SqlCommand(sql2, cn1);
                cmd1.ExecuteNonQuery();
                SqlDataReader dr1 = cmd1.ExecuteReader();
                GridView2.DataSource = dr1;
                GridView2.DataBind();
                cmd1.Dispose();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            cn1.Close();
        }
    }
}