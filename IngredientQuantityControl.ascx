<%@ Control Language="C#" AutoEventWireup="true" CodeFile="IngredientQuantityControl.ascx.cs" Inherits="IngredientQuantityControl" %>
<style type="text/css">
    .auto-style1 {
        width: 147px;
    }
    .auto-style2 {
        width: 120px;
    }
</style>
<table style="width:100%;">
    <tr>
        <td class="auto-style2">
<asp:Label ID="IngredientDisplay" runat="server" Text="Label"></asp:Label>

        </td>
        <td class="auto-style1">
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </td>
        <td>

<asp:DropDownList ID="DropDownList1" runat="server" >
    <asp:ListItem Value=null >Please Choose a Unit</asp:ListItem>
    <asp:ListItem Value="Unit/Count">Unit/Count</asp:ListItem>
    <asp:ListItem>Package</asp:ListItem>
    <asp:ListItem>Pound</asp:ListItem>
    <asp:ListItem>Ounce</asp:ListItem>
    <asp:ListItem>Cup</asp:ListItem>
    <asp:ListItem>Tbsp</asp:ListItem>
   <asp:ListItem>Tsp</asp:ListItem>
    <asp:ListItem>To Taste</asp:ListItem>
    <asp:ListItem>Milligrams</asp:ListItem>
</asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must Put in an Amount">*</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Must choose a unit" InitialValue="null">*</asp:RequiredFieldValidator>
            <%--<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must be numeric" Type="Double">*</asp:CompareValidator>--%>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Must be numeric (fractions not currently supported)" Type="Double" Operator="DataTypeCheck">*</asp:CompareValidator>
        </td>
    </tr>
   
</table>


