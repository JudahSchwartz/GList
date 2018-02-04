using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session["ImageClicked"] = 4;
        Response.Redirect("~/SearchForRecipe.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session["ImageClicked"] = 3;
        Response.Redirect("~/SearchForRecipe.aspx");
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Session["ImageClicked"] = 2;
        Response.Redirect("~/SearchForRecipe.aspx");
    }

    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Session["ImageClicked"] = 5;
        Response.Redirect("~/SearchForRecipe.aspx");
    }

    protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
    {
        Session["ImageClicked"] = 6;
        Response.Redirect("~/SearchForRecipe.aspx");
    }
}