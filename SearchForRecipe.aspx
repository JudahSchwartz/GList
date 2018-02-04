<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchForRecipe.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Id Number:
    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" CausesValidation="True"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must be an Integer" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
    <br />
    Numer Serving:<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CausesValidation="True">
    <asp:ListItem Value="0">Select a number</asp:ListItem>
    <asp:ListItem>1</asp:ListItem>
    <asp:ListItem>2</asp:ListItem>
    <asp:ListItem>3</asp:ListItem>
    <asp:ListItem>4</asp:ListItem>
    <asp:ListItem>5</asp:ListItem>
    <asp:ListItem>6</asp:ListItem>
    <asp:ListItem>7</asp:ListItem>
    <asp:ListItem>8</asp:ListItem>
    <asp:ListItem>9</asp:ListItem>
    <asp:ListItem>10</asp:ListItem>
    <asp:ListItem>11</asp:ListItem>
    <asp:ListItem>12</asp:ListItem>
    <asp:ListItem>13</asp:ListItem>
    <asp:ListItem>14</asp:ListItem>
    <asp:ListItem>15</asp:ListItem>
    <asp:ListItem>16</asp:ListItem>
    <asp:ListItem>17</asp:ListItem>
    <asp:ListItem>18</asp:ListItem>
    <asp:ListItem>19</asp:ListItem>
    <asp:ListItem>20</asp:ListItem>
</asp:DropDownList>
<br />
    <asp:DetailsView  HorizontalAlign ="Center" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="RecipeDS" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="RecipeID" HeaderText="RecipeID" SortExpression="RecipeID" />
            <asp:BoundField DataField="RecipeName" HeaderText="RecipeName" SortExpression="RecipeName" />
            <asp:BoundField DataField="DPMStatus" HeaderText="DPMStatus" SortExpression="DPMStatus" />
            <asp:BoundField DataField="Dish" HeaderText="Dish" SortExpression="Dish" />
            <asp:BoundField DataField="CookTime" HeaderText="CookTime" SortExpression="CookTime" />
            <asp:BoundField DataField="PrepTime" HeaderText="PrepTime" SortExpression="PrepTime" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="RecipeDS" runat="server" SelectMethod="GetRecipeInfo" TypeName="Recipe">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="recipeID" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:GridView ID="GridView1"  HorizontalAlign ="Center" runat="server" DataSourceID="IngredientDS" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:ObjectDataSource ID="IngredientDS" runat="server" SelectMethod="GetIngredientInfo" TypeName="Recipe">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="recipeID" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList1" Name="peopleServing" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:GridView ID="GridView3"  HorizontalAlign ="Center" runat="server" DataSourceID="InstructionsDS" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:ObjectDataSource ID="InstructionsDS" runat="server" SelectMethod="GetInstructions" TypeName="Recipe">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="recipeId" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
</asp:Content>

