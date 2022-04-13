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
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" FilterExpression="NUMOUVR = {0}" SelectCommand="SELECT * FROM [OUVRAGE]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [OUVRAGE] WHERE [NUMOUVR] = @original_NUMOUVR AND [NOMOUVR] = @original_NOMOUVR AND (([ANNEEPARU] = @original_ANNEEPARU) OR ([ANNEEPARU] IS NULL AND @original_ANNEEPARU IS NULL)) AND (([NUMRUB] = @original_NUMRUB) OR ([NUMRUB] IS NULL AND @original_NUMRUB IS NULL)) AND (([NOMED] = @original_NOMED) OR ([NOMED] IS NULL AND @original_NOMED IS NULL))" InsertCommand="INSERT INTO [OUVRAGE] ([NUMOUVR], [NOMOUVR], [ANNEEPARU], [NUMRUB], [NOMED]) VALUES (@NUMOUVR, @NOMOUVR, @ANNEEPARU, @NUMRUB, @NOMED)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [OUVRAGE] SET [NOMOUVR] = @NOMOUVR, [ANNEEPARU] = @ANNEEPARU, [NUMRUB] = @NUMRUB, [NOMED] = @NOMED WHERE [NUMOUVR] = @original_NUMOUVR AND [NOMOUVR] = @original_NOMOUVR AND (([ANNEEPARU] = @original_ANNEEPARU) OR ([ANNEEPARU] IS NULL AND @original_ANNEEPARU IS NULL)) AND (([NUMRUB] = @original_NUMRUB) OR ([NUMRUB] IS NULL AND @original_NUMRUB IS NULL)) AND (([NOMED] = @original_NOMED) OR ([NOMED] IS NULL AND @original_NOMED IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_NUMOUVR" Type="Int32" />
                    <asp:Parameter Name="original_NOMOUVR" Type="String" />
                    <asp:Parameter Name="original_ANNEEPARU" Type="Int16" />
                    <asp:Parameter Name="original_NUMRUB" Type="Int32" />
                    <asp:Parameter Name="original_NOMED" Type="String" />
                </DeleteParameters>
                <FilterParameters>
                    <asp:QueryStringParameter Name="newparameter" QueryStringField="c" />
                </FilterParameters>
                <InsertParameters>
                    <asp:Parameter Name="NUMOUVR" Type="Int32" />
                    <asp:Parameter Name="NOMOUVR" Type="String" />
                    <asp:Parameter Name="ANNEEPARU" Type="Int16" />
                    <asp:Parameter Name="NUMRUB" Type="Int32" />
                    <asp:Parameter Name="NOMED" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="NOMOUVR" Type="String" />
                    <asp:Parameter Name="ANNEEPARU" Type="Int16" />
                    <asp:Parameter Name="NUMRUB" Type="Int32" />
                    <asp:Parameter Name="NOMED" Type="String" />
                    <asp:Parameter Name="original_NUMOUVR" Type="Int32" />
                    <asp:Parameter Name="original_NOMOUVR" Type="String" />
                    <asp:Parameter Name="original_ANNEEPARU" Type="Int16" />
                    <asp:Parameter Name="original_NUMRUB" Type="Int32" />
                    <asp:Parameter Name="original_NOMED" Type="String" />
                </UpdateParameters>
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
