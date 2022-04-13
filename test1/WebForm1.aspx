<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="test1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <% for (int i = 1; i < 10; i++)
                {
              %>
            <h<%= i %>>ligne <%= i %></h<%= i %>>
           <%
               }
            %>
            
        </div>
    </form>
</body>
</html>
