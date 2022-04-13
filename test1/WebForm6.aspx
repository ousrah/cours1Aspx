<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="test1.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:DropDownList ID="lstClassification" runat="server" Height="38px" Width="445px" AutoPostBack="True" OnSelectedIndexChanged="lstClassification_SelectedIndexChanged">
        </asp:DropDownList>
    </p>
    <p>
    </p>
    <div id="lstOuvrages" runat="server">
    </div>
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
