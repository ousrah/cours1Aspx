<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="test1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Page des ouvrages</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NUMOUVR" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="NUMOUVR" HeaderText="NUMOUVR" ReadOnly="True" SortExpression="NUMOUVR" />
        <asp:BoundField DataField="NOMOUVR" HeaderText="NOMOUVR" SortExpression="NOMOUVR" />
        <asp:BoundField DataField="ANNEEPARU" HeaderText="ANNEEPARU" SortExpression="ANNEEPARU" />
        <asp:BoundField DataField="NUMRUB" HeaderText="NUMRUB" SortExpression="NUMRUB" />
        <asp:BoundField DataField="NOMED" HeaderText="NOMED" SortExpression="NOMED" />
    </Columns>
    <EditRowStyle BackColor="#999999" />
    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#E9E7E2" />
    <SortedAscendingHeaderStyle BackColor="#506C8C" />
    <SortedDescendingCellStyle BackColor="#FFFDF8" />
    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
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


</asp:Content>
