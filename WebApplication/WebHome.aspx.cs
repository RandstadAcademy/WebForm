using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class WebHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                //this.SqlDataSource1.SelectParameters[]...;
                //this.SqlDataSource1.DataBind();
            }
            this.txtNome.Text = "123";
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.txtCognome.Text = this.DropDownList1.SelectedValue.ToString();
            this.txtNome.Text = "ho cliccato";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.txtNome.Text = "";
        }
    }
}