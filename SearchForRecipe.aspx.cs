using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["ImageClicked"] != null)
        {
            TextBox1.Text = Session["ImageClicked"].ToString();
            Session["ImageClicked"] = null;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
    }
}