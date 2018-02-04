<%@ Page Title="Random Meals" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p> For all those out there who do not have the time,<br />
energy, and creativity to come up with new and exciting <br />
meals every day, this site can introduce that variety for you. <br /><br />
To come up with a meal plan for the week, and have all of the <br />
ingredients neatly compiled into a shopping list for you, <br />
visit the Meal Planner page!</p>
    
    <div class =carousel>
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Pictures/potpie.jpg" CssClass="incarousel" CausesValidation="False" OnClick="ImageButton1_Click" /> <!--These will have links to recipes --></div>
        <div> <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Pictures/chickenAndRice.jpg" CssClass="incarousel" OnClick="ImageButton2_Click1" /></div>
        <div> <asp:ImageButton ID="ImageButton3" runat="server" CssClass="incarousel" ImageUrl="~/Pictures/meatballs.jpg" OnClick="ImageButton3_Click" /></a></div>
        <div> <asp:ImageButton ID="ImageButton4" runat="server" CssClass="incarousel" ImageUrl="~/Pictures/lasagna.jpg" OnClick="ImageButton4_Click1" /></div>
         <div> <asp:ImageButton ID="ImageButton5" runat="server" CssClass="incarousel" ImageUrl="~/Pictures/breadedsalmon.jpg" OnClick="ImageButton5_Click" /></div>
  

    </div>
 <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="slick/slick.min.js"> </script>

<script type ="text/javascript" src = slickrunner.js>
  
		
</script>


</asp:Content>

