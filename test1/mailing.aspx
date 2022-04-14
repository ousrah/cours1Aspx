<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mailing.aspx.cs" Inherits="test1.mailing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Sujet :
            <asp:TextBox ID="TextBox1" runat="server" Width="528px"></asp:TextBox>
            <br />
            Déstinaitaire :
            <asp:TextBox ID="TextBox2" runat="server" Width="527px"></asp:TextBox>
            <br />
            Message :<br />
            <asp:TextBox ID="TextBox3" runat="server" Height="214px" TextMode="MultiLine" Width="650px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="envoyer" />
        </div>
    </form>
</body>
</html>
