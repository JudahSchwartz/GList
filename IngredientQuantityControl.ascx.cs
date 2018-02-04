    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;

    public partial class IngredientQuantityControl : System.Web.UI.UserControl
    {
        private int IngredientID;
            protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void SetLabelText(String s)
        {
            IngredientDisplay.Text = s;
        
        }
        public void SetIngredientID(int n)
        {
            IngredientID = n;
        }
        public int GetIngredientID()
        {
            return IngredientID;
        }
        public string getIngredientName()
        {
            return IngredientDisplay.Text;
        }
        public double GetQuantity()
        {
            string quantity = TextBox1.Text.Trim();
        try { return Convert.ToDouble(quantity); }
        catch {
            return -1;
        }//quantity);
        }
        public string GetUnit()
        {
            return DropDownList1.Text;
        }

  
    }