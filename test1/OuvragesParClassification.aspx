<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OuvragesParClassification.aspx.cs" Inherits="test1.OuvragesParClassification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="LIBRUB" DataValueField="NUMRUB">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" SelectCommand="SELECT * FROM [CLASSIFICATION]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="NUMOUVR" DataSourceID="SqlDataSource2" GridLines="Vertical" PageSize="20">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="NUMOUVR" HeaderText="NUMOUVR" ReadOnly="True" SortExpression="NUMOUVR" />
                    <asp:BoundField DataField="NOMOUVR" HeaderText="NOMOUVR" SortExpression="NOMOUVR" />
                    <asp:BoundField DataField="ANNEEPARU" HeaderText="ANNEEPARU" SortExpression="ANNEEPARU" />
                    <asp:BoundField DataField="NUMRUB" HeaderText="NUMRUB" SortExpression="NUMRUB" />
                    <asp:BoundField DataField="NOMED" HeaderText="NOMED" SortExpression="NOMED" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:librairieConnectionString %>" SelectCommand="SELECT * FROM [OUVRAGE] WHERE ([NUMRUB] = @NUMRUB)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="NUMRUB" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <div>
        </div>
    </form>
</body>
</html>
