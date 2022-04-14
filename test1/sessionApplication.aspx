<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sessionApplication.aspx.cs" Inherits="test1.sessionApplication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    Les variables Session</p>
<p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Ecrire variable session" />
</p>
<p>
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="lire variable session" />
&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    Les variables Application</p>
<p>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Ecrire variable application" />
</p>
<p>
    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="lire variable application" />
&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
