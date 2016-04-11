using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (!Calendar1.Visible)
            {
                Calendar1.Visible = true;
                DropDownListMonth.Visible = true;
                DropDownListYear.Visible = true;
            }
            else
            {
                Calendar1.Visible = false;
                DropDownListMonth.Visible = false;
                DropDownListYear.Visible = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/success.html");
        }

        protected void DropDownListMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            int months = Convert.ToInt16(DropDownListMonth.SelectedIndex) + 1;
            int years = Convert.ToInt16(DropDownListYear.SelectedValue);
            Calendar1.VisibleDate = new DateTime(years, months, 1);
        }

        protected void DropDownListYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            int months = Convert.ToInt16(DropDownListMonth.SelectedIndex) + 1;
            int years = Convert.ToInt16(DropDownListYear.SelectedValue);
            Calendar1.VisibleDate = new DateTime(years, months, 1);
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedValue == "Fresher")
            {
                txtExp.Text = "0";
                txtExp.ReadOnly = true;
            }
            else
            {
                txtExp.ReadOnly = false;
                txtExp.Text = "";
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            DropDownList1.SelectedIndex = -1;
            txtPositions.Text = "";
            RadioButtonList1.SelectedIndex = -1;
            txtExp.Text = "";
            txtLocation.Text = "";
            txtDomain.Text = "";
            txtDOB.Text = "";
            Calendar1.Visible = false;
            DropDownListMonth.Visible = false;
            DropDownListYear.Visible = false;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e) { 
        
            txtDOB.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
            Calendar1.Visible = false;
            DropDownListMonth.Visible = false;
            DropDownListYear.Visible = false;
        }
    }
}