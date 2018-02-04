using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Globalization;
using System.Threading;

public partial class Default2 : System.Web.UI.Page
{
    static ArrayList IngredientQuantityControls = new ArrayList();
   // List<string> idList = new List<string>(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        displayIngOpt();

    }
    //protected override void LoadViewState(object savedState)
    //{
    //    base.LoadViewState(savedState);
    //    idList =(List<string>) ViewState["ControlIdList"];
    //    foreach(string id in idList)
    //    {
    //        IngredientQuantityControl uc = (IngredientQuantityControl)Page.LoadControl("IngredientQuantityControl.ascx");
    //        uc.ID = id;
    //        Panel1.Controls.Add(uc);
    //    }
    //}

        protected void displayIngOpt()
    {
        IngredientQuantityControls = new ArrayList();
        bool oneSelected = false;
        foreach (ListItem item in IngredientsListBox.Items)
        {
            if (item.Selected)
            {
                oneSelected = true;
                break;
            }
        }
        var instructLabel = new Label();
        instructLabel.Text = "Please add quantities for each ingredient, as well as the unit";
        if(oneSelected)
        {
            Panel1.Controls.Add(new LiteralControl("<br />"));
            Panel1.Controls.Add(instructLabel);
            Panel1.Controls.Add(new LiteralControl("<br />"));
        }


        
        Dictionary<string, int> items = new Dictionary<string, int>();
        foreach (ListItem item in IngredientsListBox.Items)
        {
            if (item.Selected)
            {
                items.Add(item.Text,Int32.Parse(item.Value));
            }
        }
                if (ViewState["ControlIdList"] == null) {
                    ViewState["ControlIdList"] = new List<string>();
                } 
                var idList =(List<string>) ViewState["ControlIdList"];
        foreach (string id in idList)
        {
                IngredientQuantityControl uc = (IngredientQuantityControl)Page.LoadControl("IngredientQuantityControl.ascx");
                uc.ID = id;
          
            
            if (items.ContainsValue(uc.GetIngredientID()))//in case of deselect
            {
                Panel1.Controls.Add(uc);
                Panel1.Controls.Add(new LiteralControl("<br />"));
                IngredientQuantityControls.Add(uc);
                foreach (var item in items.Where(kvp => kvp.Value == uc.GetIngredientID()).ToList())
                {
                    items.Remove(item.Key);
                }

            }
           
        }
        //the new one

        foreach (var x in items)
        {
            IngredientQuantityControl uc = (IngredientQuantityControl)Page.LoadControl("IngredientQuantityControl.ascx");
            uc.SetIngredientID(x.Value);
            uc.ID = "IQC" + x.Key;

            idList.Add(uc.ID);
            uc.SetLabelText(x.Key);
            ViewState["ControlIdList"] = idList;
            IngredientQuantityControls.Add(uc);
            Panel1.Controls.Add(uc);
        }    
        
    }


    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        Page.Validate();
        if (Page.IsValid)
        {
            //plan here is to generate a new recipe object, and for it to send to db.
            CultureInfo cultureInfo = Thread.CurrentThread.CurrentCulture;
            TextInfo textInfo = cultureInfo.TextInfo;
            Recipe recipe = new Recipe(textInfo.ToTitleCase(RecipeNameTB.Text.Trim()), Int32.Parse(CookTimeTB.Text),Int32.Parse( PrepTimeTB.Text) ,dpmRB.Text, DishDD.Text, InstructionsTA.Value.Trim());

            foreach (IngredientQuantityControl ingredient in IngredientQuantityControls)
            {
                Ingredient ing = new Ingredient(ingredient.GetIngredientID(), ingredient.GetQuantity()/Int32.Parse(NumServesTB.Text),ingredient.GetUnit());
                recipe.AddIngredient(ing);
                // OutputLabel.Text += " \n " + "Ingredient: " + ingredient.getIngredientName();
            }
            recipe.InsertIntoDB();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
               "alertMessage", "alert('Thank you for your contribution to our recipe database! Your recipe will need to be" +
               " approved by an admin before it is put into use.');" +
              "window.location='Default.aspx'", true);
        }
    }
}