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
        Session["Username"] = null;
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
            "alertMessage", "alert('Successfully Logged Out.');" +
            "window.location='Default.aspx'", true);
    }
}