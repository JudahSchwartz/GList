using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
     
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        Recipe.MealPlanMaker(Int32.Parse(MeatMain.SelectedValue), Int32.Parse(DairyMain.SelectedValue), Int32.Parse(ParevMain.SelectedValue), Int32.Parse(MeatSide.SelectedValue),
            Int32.Parse(DairySide.SelectedValue), Int32.Parse(ParevSide.SelectedValue), Int32.Parse(MeatAppetizer.SelectedValue), Int32.Parse(DairyAppetizer.SelectedValue), Int32.Parse(ParevAppetizer.SelectedValue),
            Int32.Parse(MeatDessert.SelectedValue), Int32.Parse(DairyDessert.SelectedValue), Int32.Parse(ParevDessert.SelectedValue));
        

    }




 //var query = "SELECT TOP @MealNumber RecipeID, RecipeName, DPMStatus, Cooktime, Dish, Instructions FROM Recipes WHERE (Active = 1) ORDER BY NEWID()";
 //       RecipesDataSource.SelectCommand = query;

    protected void MealNumberDD_SelectedIndexChanged(object sender, EventArgs e)
    {
        
       
    }



    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}