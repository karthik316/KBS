using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class AddConsultant : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Response.Redirect("success.html");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            txtConpass.Text = txtpassword.Text = txtconsultName.Text = "";
            localist.SelectedValue = "Select";
        }
    }
}