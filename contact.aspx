<%@ Page Title=""  Language="C#"  MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 194px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    Please feel free to offer any suggestions or report any bugs!<br />
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">First Name</td>
            <td>
                <asp:TextBox ID="FNameTB" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name Field Required" ControlToValidate="FNameTB">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Last Name</td>
            <td>
                <asp:TextBox ID="LNameTB" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name Field Required" ControlToValidate="LNameTB">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Your Email Address</td>
            <td>
                <asp:TextBox ID="EmailTB" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Address Required" ControlToValidate="EmailTB">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTB" ErrorMessage="Must be a valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Message</td>
            <td>
                <textarea id="MessageTA" cols="20" name="S1" rows="2" runat ="server"></textarea><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Message Can not be blank" ControlToValidate="MessageTA">*</asp:RequiredFieldValidator>
            </td>
        </tr>
      <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <br />
                <asp:Button ID="submitButton" runat="server" OnClick="Button1_Click" Text="Submit" />
                <asp:Label ID="OutputLabel" runat="server"
                   ></asp:Label>
            </td>
        </tr>
    </table>
        
</asp:Content>

