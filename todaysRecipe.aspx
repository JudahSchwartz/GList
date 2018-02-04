<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="todaysRecipe.aspx.cs" Inherits="Default2" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    How many people are you serving?    
    
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CausesValidation="True">
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
    <asp:DetailsView ID="DetailsView1"  HorizontalAlign ="Center" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="RecipeInfo" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="RecipeID">
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="RecipeName" HeaderText="RecipeName" SortExpression="RecipeName" />
            <asp:BoundField DataField="DPMStatus" HeaderText="DPMStatus" SortExpression="DPMStatus" />
            <asp:BoundField DataField="Dish" HeaderText="Dish" SortExpression="Dish" />
            <asp:BoundField DataField="CookTime" HeaderText="CookTime" SortExpression="CookTime" />
            <asp:BoundField DataField="PrepTime" HeaderText="PrepTime" SortExpression="PrepTime" />
            <asp:BoundField DataField="RecipeID" HeaderText="RecipeID" SortExpression="RecipeID" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <asp:ObjectDataSource ID="RecipeInfo" runat="server" SelectMethod="GetRecipeInfo" TypeName="Recipe">
        <SelectParameters>
            <asp:Parameter DefaultValue="2" Name="recipeID" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    &nbsp;<asp:GridView ID="GridView1"  HorizontalAlign ="Center" runat="server" CellPadding="4" DataSourceID="IngredientInfo" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:ObjectDataSource ID="IngredientInfo" runat="server" OnSelecting="IngredientInfo_Selecting" SelectMethod="GetIngredientInfo" TypeName="Recipe">
        <SelectParameters>
            <asp:ControlParameter ControlID="DetailsView1" Name="recipeID" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="4" Name="peopleServing" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:GridView ID="GridView2"  HorizontalAlign ="Center"  runat="server" DataSourceID="ObjectDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetInstructions" TypeName="Recipe">
        <SelectParameters>
            <asp:ControlParameter ControlID="DetailsView1" DefaultValue="" Name="recipeId" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>

