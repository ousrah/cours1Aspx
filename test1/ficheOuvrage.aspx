<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ficheOuvrage.aspx.cs" Inherits="test1.ficheOuvrage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="NUMOUVR" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="278px" Width="729px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <Fields>
                    <asp:BoundField DataField="NUMOUVR" HeaderText="NUMOUVR" ReadOnly="True" SortExpression="NUMOUVR" />
                    <asp:BoundField DataField="NOMOUVR" HeaderText="NOMOUVR" SortExpression="NOMOUVR" />
                    <asp:BoundField DataField="ANNEEPARU" HeaderText="ANNEEPARU" SortExpression="ANNEEPARU" />
                    <asp:BoundField DataField="NUMRUB" HeaderText="NUMRUB" SortExpression="NUMRUB" />
                    <asp:BoundField DataField="NOMED" HeaderText="NOMED" SortExpression="NOMED" />
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" FilterExpression="NUMOUVR = {0}" SelectCommand="SELECT * FROM [OUVRAGE]">
                <FilterParameters>
                    <asp:QueryStringParameter Name="newparameter" QueryStringField="c" />
                </FilterParameters>
            </asp:SqlDataSource>
        </div>
        <a href ="listeOuvrages.aspx">Retour à la liste</a>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="listeOuvrages.aspx">HyperLink</asp:HyperLink>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
    </form>
</body>
</html>
