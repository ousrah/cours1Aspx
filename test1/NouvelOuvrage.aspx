<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NouvelOuvrage.aspx.cs" Inherits="test1.NouvelOuvrage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="NUMOUVR" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="739px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="NUMOUVR" HeaderText="NUMOUVR" ReadOnly="True" SortExpression="NUMOUVR" />
                    <asp:BoundField DataField="NOMOUVR" HeaderText="NOMOUVR" SortExpression="NOMOUVR" />
                    <asp:BoundField DataField="ANNEEPARU" HeaderText="ANNEEPARU" SortExpression="ANNEEPARU" />
                    <asp:BoundField DataField="NUMRUB" HeaderText="NUMRUB" SortExpression="NUMRUB" />
                    <asp:BoundField DataField="NOMED" HeaderText="NOMED" SortExpression="NOMED" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" DeleteCommand="DELETE FROM [OUVRAGE] WHERE [NUMOUVR] = @original_NUMOUVR AND [NOMOUVR] = @original_NOMOUVR AND (([ANNEEPARU] = @original_ANNEEPARU) OR ([ANNEEPARU] IS NULL AND @original_ANNEEPARU IS NULL)) AND (([NUMRUB] = @original_NUMRUB) OR ([NUMRUB] IS NULL AND @original_NUMRUB IS NULL)) AND (([NOMED] = @original_NOMED) OR ([NOMED] IS NULL AND @original_NOMED IS NULL))" InsertCommand="INSERT INTO [OUVRAGE] ([NUMOUVR], [NOMOUVR], [ANNEEPARU], [NUMRUB], [NOMED]) VALUES (@NUMOUVR, @NOMOUVR, @ANNEEPARU, @NUMRUB, @NOMED)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [OUVRAGE]" UpdateCommand="UPDATE [OUVRAGE] SET [NOMOUVR] = @NOMOUVR, [ANNEEPARU] = @ANNEEPARU, [NUMRUB] = @NUMRUB, [NOMED] = @NOMED WHERE [NUMOUVR] = @original_NUMOUVR AND [NOMOUVR] = @original_NOMOUVR AND (([ANNEEPARU] = @original_ANNEEPARU) OR ([ANNEEPARU] IS NULL AND @original_ANNEEPARU IS NULL)) AND (([NUMRUB] = @original_NUMRUB) OR ([NUMRUB] IS NULL AND @original_NUMRUB IS NULL)) AND (([NOMED] = @original_NOMED) OR ([NOMED] IS NULL AND @original_NOMED IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_NUMOUVR" Type="Int32" />
                    <asp:Parameter Name="original_NOMOUVR" Type="String" />
                    <asp:Parameter Name="original_ANNEEPARU" Type="Int16" />
                    <asp:Parameter Name="original_NUMRUB" Type="Int32" />
                    <asp:Parameter Name="original_NOMED" Type="String" />
                </DeleteParameters>
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
    </form>
</body>
</html>
