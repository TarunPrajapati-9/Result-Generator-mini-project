using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=TARUN\\SQLEXPRESS;Initial Catalog=ASP;Integrated Security=True";
            cn.Open();
            string sql1 = "insert into Login values('" + uname.Text + "','" + email.Text + "','" + cpsw.Text + "')";
            try
            {
                SqlCommand cmd = new SqlCommand(sql1, cn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                Response.Redirect("home1.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            cn.Close();
        }
    }
}