<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback ="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="addRecipe.aspx.cs" Inherits="Default2" %>
<%@ Reference Control="IngredientQuantityControl.ascx" %>
<%@ Register src="IngredientQuantityControl.ascx" tagname="IngredientQuantityControl" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" >
    <style type="text/css">
        .auto-style3 {
            width: 66%;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            height: 26px;
            width: 201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style ="width :30%;
margin: auto

">
    
    <table class="auto-style3">
        <tr>
            <td class="auto-style5">Name of Recipe</td>
            
            <td class="auto-style4">
                <asp:TextBox ID="RecipeNameTB" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RecipeNameTB" ErrorMessage="Recipe Must Have a Name">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Cook Time (In minutes)</td>
            
            <td class="auto-style4">
                <asp:TextBox ID="CookTimeTB" runat="server" MaxLength="40"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Must have a cook time" ControlToValidate="CookTimeTB">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="CookTimeTB" ErrorMessage="Time must be numeric" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Prep Time (In minutes)</td>
            <td>
                <asp:TextBox ID="PrepTimeTB" runat="server" MaxLength="30"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="PrepTimeTB" ErrorMessage="Must put in prep time">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="PrepTimeTB" ErrorMessage="Time must be numeric" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Serves How Many?</td>
            <td>
                <asp:TextBox ID="NumServesTB" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="NumServesTB" ErrorMessage="Must put in number of people served">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="NumServesTB" ErrorMessage="Must be an integer" Operator="DataTypeCheck" Type="Integer">*</asp:CompareValidator>
            </td>
        </tr>

        <tr>
            <td class="auto-style5">Dish</td>
            
            <td class="auto-style4">
                <asp:DropDownList ID="DishDD" runat="server">
                    <asp:ListItem Value=null>Select A Dish</asp:ListItem>
                    <asp:ListItem>Appetizer</asp:ListItem>
                    <asp:ListItem>Main </asp:ListItem>
                    <asp:ListItem>Side</asp:ListItem>
                    <asp:ListItem>Dessert</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DishDD" ErrorMessage="Must select which dish it is" InitialValue="null">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">The Recipe Is</td>
            
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dpmRB" ErrorMessage="Must choose if dairy meat or parev">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>

                <asp:RadioButtonList ID="dpmRB" runat="server" Width="189px">
                    <asp:ListItem>Dairy</asp:ListItem>
                    <asp:ListItem>Parev</asp:ListItem>
                    <asp:ListItem>Meat</asp:ListItem>
                </asp:RadioButtonList>

            </td>
        </tr>
    </table>
    
    <br />
    Please Select Ingredients. (Hold down ctrl to select multiple.)<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="IngredientsListBox" ErrorMessage="Must select at least one ingredient">*</asp:RequiredFieldValidator>
    <br />
    If the ingredient is &quot;To Taste,&quot; please put a 0 in the amount field.<br />
    <asp:ListBox ID="IngredientsListBox" runat="server" DataSourceID="SqlDataSource1" DataTextField="IngredientName" DataValueField="IngredientsID" SelectionMode="Multiple" AutoPostBack="True" Rows="15" ></asp:ListBox>
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GListDBConnectionString %>" SelectCommand="SELECT * FROM [Ingredients] ORDER BY [IngredientName]"></asp:SqlDataSource>
    
<asp:Panel ID="Panel1" runat="server">
    </asp:Panel>
        &nbsp;<br />
    Instructions for the Recipe<br />
    <textarea id="InstructionsTA" cols="20" name="S1" rows="2" runat="server" maxlength="999"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="InstructionsTA" ErrorMessage="Must have instructions">*</asp:RequiredFieldValidator>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <br />
        <div style ="width:auto; float:right">
    <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" /></div>
        </div>
    <br />
    </asp:Content>

