using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MiniProject
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void insert_Click(object sender, EventArgs e)
        {
            Response.Redirect("Input.aspx");
        }

        protected void update_Click(object sender, EventArgs e)
        {
            Response.Redirect("update.aspx");
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            Response.Redirect("delete.aspx");
        }

        protected void search_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }
    }
}