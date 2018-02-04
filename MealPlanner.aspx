<%@ Page Title="" Language="C#" MaintainScrollPositionOnPostback ="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MealPlanner.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 154px;
        }
        .auto-style3 {
            width: 72%;
        }
        .auto-style4 {
            width: 167px;
        }
        .auto-style5 {
            width: 188px;
        }
        .auto-style6 {
            width: 188px;
            height: 5px;
        }
        .auto-style7 {
            width: 154px;
            height: 5px;
        }
        .auto-style8 {
            width: 167px;
            height: 5px;
        }
        .auto-style9 {
            height: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style2">Meat</td>
            <td class="auto-style4">Dairy</td>
            <td>Parev</td>
        </tr>
        <tr>
            <td class="auto-style6">Mains</td>
            <td class="auto-style7">
                <asp:DropDownList ID="MeatMain" runat="server" Height="16px">
                    <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style8">
                <asp:DropDownList ID="DairyMain" runat="server">
                    <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td>
             <td class="auto-style9">
                 <asp:DropDownList ID="ParevMain" runat="server">
                     <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                     <asp:ListItem>1</asp:ListItem>
                     <asp:ListItem>2</asp:ListItem>
                     <asp:ListItem>3</asp:ListItem>
                     <asp:ListItem>4</asp:ListItem>
                     <asp:ListItem>5</asp:ListItem>
                     <asp:ListItem>6</asp:ListItem>
                     <asp:ListItem>7</asp:ListItem>
                 </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Sides</td>
            <td class="auto-style2">
                <asp:DropDownList ID="MeatSide" runat="server">
                    <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="DairySide" runat="server">
                    <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td>
             <td>
                 <asp:DropDownList ID="ParevSide" runat="server">
                     <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                     <asp:ListItem>1</asp:ListItem>
                     <asp:ListItem>2</asp:ListItem>
                     <asp:ListItem>3</asp:ListItem>
                     <asp:ListItem>4</asp:ListItem>
                     <asp:ListItem>5</asp:ListItem>
                     <asp:ListItem>6</asp:ListItem>
                     <asp:ListItem>7</asp:ListItem>
                 </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Appetizers</td><td class="auto-style2">
            <asp:DropDownList ID="MeatAppetizer" runat="server">
                <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
            </asp:DropDownList>
            </td><td class="auto-style4">
                <asp:DropDownList ID="DairyAppetizer" runat="server">
                    <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td><td>
                <asp:DropDownList ID="ParevAppetizer" runat="server">
                    <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Desserts</td><td class="auto-style2">
            <asp:DropDownList ID="MeatDessert" runat="server">
                <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
            </asp:DropDownList>
            </td><td class="auto-style4">
                <asp:DropDownList ID="DairyDessert" runat="server">
                    <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td><td>
                <asp:DropDownList ID="ParevDessert" runat="server">
                    <asp:ListItem Selected="True" Value="0">Select A Value</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr><td colspan="2">How Many People are you serving?</td><td class="auto-style4">
                <asp:DropDownList ID="numServing" runat="server" AutoPostBack="True">
                    <asp:ListItem Value="0">Choose a number</asp:ListItem>
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
            </td><td>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            </td></tr>
    </table>
    <p>Be sure to select the number of people that youre serving.</p>
<p>If the wrong amount of recipes shows up, its because there arent enough recipes in the database. Go add recipes!</p></panel><br />
    <asp:GridView ID="RecipeGV" HorizontalAlign ="Center" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RecipeID" DataSourceID="NewRecipeDS" ForeColor="#333333" GridLines="None" Caption="Click Select to View that Recipe's Ingredients ">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="RecipeID" HeaderText="RecipeID" SortExpression="RecipeID" />
            <asp:BoundField DataField="RecipeName" HeaderText="RecipeName" SortExpression="RecipeName" />
            <asp:BoundField DataField="DPMStatus" HeaderText="DPMStatus" SortExpression="DPMStatus" />
            <asp:BoundField DataField="Instructions" HeaderText="Instructions" SortExpression="Instructions" />
            <asp:BoundField DataField="Dish" HeaderText="Dish" SortExpression="Dish" />
            <asp:BoundField DataField="CookTime" HeaderText="CookTime" SortExpression="CookTime" />
            <asp:BoundField DataField="PrepTime" HeaderText="PrepTime" SortExpression="PrepTime" />
        </Columns>
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
    <asp:ObjectDataSource ID="NewRecipeDS" runat="server" SelectMethod="MealPlanMaker" TypeName="Recipe">
        <SelectParameters>
            <asp:ControlParameter ControlID="MeatMain" Name="MainMeat" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DairyMain" Name="MainDairy" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="ParevMain" Name="MainParev" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="MeatSide" Name="SideMeat" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DairySide" Name="SideDairy" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="ParevSide" Name="SideParev" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="MeatAppetizer" Name="AppMeat" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DairyAppetizer" Name="AppDairy" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="ParevAppetizer" Name="AppParev" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="MeatDessert" Name="DesMeat" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DairyDessert" Name="DesDairy" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="ParevDessert" Name="DesParev" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:GridView ID="GridView4" HorizontalAlign ="Center" runat="server" AllowPaging="True" CellPadding="4" DataSourceID="specificing" ForeColor="#333333" GridLines="None" Caption="Ingredients for Selected Recipe">
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
    <br />
    
    <asp:ObjectDataSource ID="specificing" runat="server" SelectMethod="GetIngredientInfo" TypeName="Recipe">
        <SelectParameters>
            <asp:ControlParameter ControlID="RecipeGV" DefaultValue="" Name="recipeID" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="numServing" DefaultValue="" Name="peopleServing" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:GridView ID="GridView5" runat="server" HorizontalAlign ="Center" AllowPaging="True" CellPadding="4" DataSourceID="CollectedIng" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" Caption="Sum of All of the Ingredients">
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
    <asp:ObjectDataSource ID="CollectedIng" runat="server" SelectMethod="collectedIngredients" TypeName="Recipe">
        <SelectParameters>
            <asp:ControlParameter ControlID="numServing" Name="numServing" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="MeatMain" Name="MainMeat" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DairyMain" Name="MainDairy" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="ParevMain" Name="MainParev" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="MeatSide" Name="SideMeat" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DairySide" Name="SideDairy" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="ParevSide" Name="SideParev" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="MeatAppetizer" Name="AppMeat" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DairyAppetizer" Name="AppDairy" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="ParevAppetizer" Name="AppParev" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="MeatDessert" Name="DesMeat" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="DairyDessert" Name="DesDairy" PropertyName="SelectedValue" Type="Int32" />
            <asp:ControlParameter ControlID="ParevDessert" Name="DesParev" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    </asp:Content>

