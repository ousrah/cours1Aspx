<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="test1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #content{
            width:400px;
            height:250px;
            margin:auto;
            border: solid 2px black;

        }



    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br /> <br /> <br /> <br />
        <div id="content">
              <br /> <br /> <br />
            <table style="width:100%;">
                <tr>
                    <td>E-mail :</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mot de passe :</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnConnextion" runat="server" Text="se connecter" OnClick="btnConnextion_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblErr" runat="server" ForeColor="Red" Text="Login ou mot de passe incorrect" Visible="False"></asp:Label>

        </div>
    </form>
</body>
</html>
