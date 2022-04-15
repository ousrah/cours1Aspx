<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inscription.aspx.cs" Inherits="test1.inscription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <strong><span class="auto-style2">Inscription</span></strong><br />
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">Nom :</td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtNom" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNom" ErrorMessage="le nom est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email :</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="L'Email est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="La forme de l'email est incorrecte" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mot de passe :</td>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPwd1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPwd1" ErrorMessage="Le mot de passe est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPwd1" ErrorMessage="Le mot de passe doit contenir des Maj, Min, Chiffres, Caractères spéciaux et mininum 8 caractere de longueure" ForeColor="Red" ValidationExpression="^(?:(?=.*[a-z])(?:(?=.*[A-Z])(?=.*[\d\W])|(?=.*\W)(?=.*\d))|(?=.*\W)(?=.*[A-Z])(?=.*\d)).{8,}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Validation Mot de passe :</td>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtPwd2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPwd2" ErrorMessage="La validation du mot de passe est obligatoire" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd1" ControlToValidate="txtPwd2" ErrorMessage="Les deux mots de passes ne sont pas identiques" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style1">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td class="auto-style1">
                        <asp:Button ID="btnIns" runat="server" OnClick="btnIns_Click" Text="s'inscrire" />
&nbsp;
                        <asp:Label ID="lblExist" runat="server" ForeColor="Red" Text="Cet email existe déjà, choisissez un autre" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
