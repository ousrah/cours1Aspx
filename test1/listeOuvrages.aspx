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
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="NUMOUVR" DataSourceID="SqlDataSource1" GridLines="Horizontal" PageSize="20" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="978px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="NUMOUVR" HeaderText="ISBN" ReadOnly="True" SortExpression="NUMOUVR" />
                    <asp:TemplateField HeaderText="Titre" SortExpression="NOMOUVR">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NOMOUVR") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ficheOuvrage.aspx?c=" + Eval("NUMOUVR") %>' Text='<%# Eval("NOMOUVR") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ANNEEPARU" HeaderText="Année" SortExpression="ANNEEPARU" />
                    <asp:BoundField DataField="NUMRUB" HeaderText="Thème" SortExpression="NUMRUB" />
                    <asp:BoundField DataField="NOMED" HeaderText="Editeur" SortExpression="NOMED" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" SelectCommand="SELECT * FROM [OUVRAGE] WHERE ([NOMOUVR] LIKE '%' + @NOMOUVR + '%') ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox2" Name="NOMOUVR" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
