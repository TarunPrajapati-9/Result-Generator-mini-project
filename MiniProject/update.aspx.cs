using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MiniProject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=TARUN\\SQLEXPRESS;Initial Catalog=ASP;Integrated Security=True";
            cn.Open();

            string sql1 = "update results set [ASP.NET]='" + asp.Text + "',ENS='" + ens.Text + "',ICN='" + icn.Text + "',JAVA='" + java.Text + "',PROJECT='" + prj.Text + "' where ER=" + er.Text + "";
         
            try
            {
                SqlCommand cmd = new SqlCommand(sql1, cn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
                Label8.Text = "Record Updated Successfully";
             
            }
            catch (Exception ex)
            {
               Label8.Text = ex.Message;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=TARUN\\SQLEXPRESS;Initial Catalog=ASP;Integrated Security=True";
            cn.Open();

            string sql1 = "update grades set [ASP.NET]='" + aspgrade.Text + "',ENS='" + ensgrade.Text + "',ICN='" + icngrade.Text + "',JAVA='" + javagrade.Text + "',PROJECT='" + projectgrade.Text + "' where ER='"+ er.Text + "'";
            try
            {
                SqlCommand cmd = new SqlCommand(sql1, cn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;

            Label1.Text = er.Text.ToString();
            Label2.Text = asp.Text.ToString();
            Label3.Text = ens.Text.ToString();
            Label4.Text = icn.Text.ToString();
            Label5.Text = java.Text.ToString();
            Label6.Text = prj.Text.ToString();

            int asp_net, ensm, icnm, javam, project;

            asp_net = Int32.Parse(asp.Text);
            ensm = Int32.Parse(ens.Text);
            icnm = Int32.Parse(icn.Text);
            javam = Int32.Parse(java.Text);
            project = Int32.Parse(prj.Text);

            int total = (asp_net + ensm + icnm + javam + project / 500) * 100;
            Label7.Text = (asp_net + ensm + icnm + javam + project).ToString();


            //ASP_NET GRADE
            if (asp_net >= 90 && asp_net < 100)
            {
                aspgrade.Text = "AA";
            }
            else if (asp_net >= 80)
            {
                aspgrade.Text = "AB";
            }
            else if (asp_net >= 70)
            {
                aspgrade.Text = "BB";
            }
            else if (asp_net >= 60)
            {
                aspgrade.Text = "BC";
            }
            else if (asp_net >= 50)
            {
                aspgrade.Text = "CC";
            }
            else if (asp_net >= 40)
            {
                aspgrade.Text = "DD";
            }
            else if (asp_net >= 33)
            {
                aspgrade.Text = "EE";
            }
            else
            {
                aspgrade.Text = "You're Fail";
            }

            //ENS GRADE
            if (ensm >= 90 && ensm < 100)
            {
                ensgrade.Text = "AA";
            }
            else if (ensm >= 80)
            {
                ensgrade.Text = "AB";
            }
            else if (ensm >= 70)
            {
                ensgrade.Text = "BB";
            }
            else if (ensm >= 60)
            {
                ensgrade.Text = "BC";
            }
            else if (ensm >= 50)
            {
                ensgrade.Text = "CC";
            }
            else if (ensm >= 40)
            {
                ensgrade.Text = "DD";
            }
            else if (ensm >= 33)
            {
                ensgrade.Text = "EE";
            }
            else
            {
                ensgrade.Text = "You're Fail";
            }

            //ICN GRADE
            if (icnm >= 90 && icnm < 100)
            {
                icngrade.Text = "AA";
            }
            else if (icnm >= 80)
            {
                icngrade.Text = "AB";
            }
            else if (icnm >= 70)
            {
                icngrade.Text = "BB";
            }
            else if (icnm >= 60)
            {
                icngrade.Text = "BC";
            }
            else if (icnm >= 50)
            {
                icngrade.Text = "CC";
            }
            else if (icnm >= 40)
            {
                icngrade.Text = "DD";
            }
            else if (icnm >= 33)
            {
                icngrade.Text = "EE";
            }
            else
            {
                icngrade.Text = "You're Fail";
            }

            //JAVA GRADE
            if (javam >= 90 && javam < 100)
            {
                javagrade.Text = "AA";
            }
            else if (javam >= 80)
            {
                javagrade.Text = "AB";
            }
            else if (javam >= 70)
            {
                javagrade.Text = "BB";
            }
            else if (javam >= 60)
            {
                javagrade.Text = "BC";
            }
            else if (javam >= 50)
            {
                javagrade.Text = "CC";
            }
            else if (javam >= 40)
            {
                javagrade.Text = "DD";
            }
            else if (javam >= 33)
            {
                javagrade.Text = "EE";
            }
            else
            {
                javagrade.Text = "You're Fail";
            }

            //PROJECT GRADE
            if (project >= 90 && project < 100)
            {
                projectgrade.Text = "AA";
            }
            else if (project >= 80)
            {
                projectgrade.Text = "AB";
            }
            else if (project >= 70)
            {
                projectgrade.Text = "BB";
            }
            else if (project >= 60)
            {
                projectgrade.Text = "BC";
            }
            else if (project >= 50)
            {
                projectgrade.Text = "CC";
            }
            else if (project >= 40)
            {
                projectgrade.Text = "DD";
            }
            else if (project >= 33)
            {
                projectgrade.Text = "EE";
            }
            else
            {
                projectgrade.Text = "You're Fail";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
    }
}