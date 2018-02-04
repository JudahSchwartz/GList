<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2"  ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="PictureOfMe" runat="server" AlternateText="Picture of handsome guy" ImageUrl="~/Pictures/00355.jpg" Width="300px" CssClass="PictureOfMe" />
    <p>My name is Judah Schwartz, I was born and raised in Queens, NY. I&#39;ve recently gotten married to my wonderful wife, Shoshana, after dating her for four years.</p>
<p>I&#39;m a computer science major at <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="https://lcm.touro.edu/">Lander College</asp:HyperLink>
    , and expect to graduate by December of 2018. Yes, <em>I am currently looking for an internship this summer!</em></p>
<p>Look me up on
    <asp:HyperLink ID="HyperLink3" Target="_blank" runat="server" NavigateUrl="https://www.linkedin.com/in/judahschwartz/">Linkedin</asp:HyperLink>
    , or
    <asp:HyperLink ID="HyperLink4" Target="_blank" runat="server" NavigateUrl="https://github.com/JudahSchwartz">Github</asp:HyperLink>
</p>
    <asp:HyperLink ID="HyperLink2" Target="_blank" runat="server" NavigateUrl="~/contact.aspx">Contact Me</asp:HyperLink>
    <br />
</asp:Content>

