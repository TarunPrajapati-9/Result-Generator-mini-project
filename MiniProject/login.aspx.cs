using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=tarun\\sqlexpress;Initial Catalog=ASP;Integrated Security=True";
            cn.Open();
            string sql1 = "select * from Login where UserName = '" + TextBox1.Text + "'";
            try
            {
                SqlCommand cmd = new SqlCommand(sql1, cn);
                SqlDataReader dataReader = cmd.ExecuteReader();
                cmd.Dispose();
                if (dataReader.Read())
                {
                    if (TextBox2.Text == dataReader.GetString(2))
                    {
                        HttpCookie userName = new HttpCookie("userName");
                        userName["userName1"] = dataReader.GetString(0);
                        userName["Email"] = dataReader.GetString(1);
                        Response.Cookies.Add(userName);
                        Response.Redirect("home1.aspx");
                    }
                    else
                        Label1.Text = "Invalid Username or Password";
                }
                else
                {
                    Label1.Text = "Invalid Username or Password!";
                }
                cn.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}