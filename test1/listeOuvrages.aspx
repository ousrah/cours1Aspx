<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listeOuvrages.aspx.cs" Inherits="test1.listeOuvrages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Chercher" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="ajouter" />
            <asp:Button ID="Button3" runat="server"  Text="ajouter par code" OnClick="Button3_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="NUMOUVR" DataSourceID="SqlDataSource1" GridLines="Horizontal" PageSize="20" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="978px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="NUMOUVR" HeaderText="NUMOUVR" ReadOnly="True" SortExpression="NUMOUVR" />
                    <asp:TemplateField HeaderText="NOMOUVR" SortExpression="NOMOUVR">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOMOUVR") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ficheOuvrage.aspx?c="+Eval("numouvr") %>' Text='<%# Eval("NOMOUVR") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ANNEEPARU" HeaderText="ANNEEPARU" SortExpression="ANNEEPARU" />
                    <asp:BoundField DataField="NUMRUB" HeaderText="NUMRUB" SortExpression="NUMRUB" />
                    <asp:BoundField DataField="NOMED" HeaderText="NOMED" SortExpression="NOMED" />
                    <asp:CommandField ButtonType="Image" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" SelectCommand="SELECT * FROM [OUVRAGE] WHERE ([NOMOUVR] LIKE '%' + @NOMOUVR + '%')" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [OUVRAGE] WHERE [NUMOUVR] = @original_NUMOUVR AND [NOMOUVR] = @original_NOMOUVR AND (([ANNEEPARU] = @original_ANNEEPARU) OR ([ANNEEPARU] IS NULL AND @original_ANNEEPARU IS NULL)) AND (([NUMRUB] = @original_NUMRUB) OR ([NUMRUB] IS NULL AND @original_NUMRUB IS NULL)) AND (([NOMED] = @original_NOMED) OR ([NOMED] IS NULL AND @original_NOMED IS NULL))" InsertCommand="INSERT INTO [OUVRAGE] ([NUMOUVR], [NOMOUVR], [ANNEEPARU], [NUMRUB], [NOMED]) VALUES (@NUMOUVR, @NOMOUVR, @ANNEEPARU, @NUMRUB, @NOMED)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [OUVRAGE] SET [NOMOUVR] = @NOMOUVR, [ANNEEPARU] = @ANNEEPARU, [NUMRUB] = @NUMRUB, [NOMED] = @NOMED WHERE [NUMOUVR] = @original_NUMOUVR AND [NOMOUVR] = @original_NOMOUVR AND (([ANNEEPARU] = @original_ANNEEPARU) OR ([ANNEEPARU] IS NULL AND @original_ANNEEPARU IS NULL)) AND (([NUMRUB] = @original_NUMRUB) OR ([NUMRUB] IS NULL AND @original_NUMRUB IS NULL)) AND (([NOMED] = @original_NOMED) OR ([NOMED] IS NULL AND @original_NOMED IS NULL))">
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
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="NOMOUVR" PropertyName="Text" Type="String" />
                </SelectParameters>
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
