using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class CreateVacancyReq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("success.html");
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtEmployee.Text = "";
            txtVacancies.Text = "";
        }
    }
}