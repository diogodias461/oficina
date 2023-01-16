<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="oficina.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="StyleSheet1.css" />
    <title>Mecânicos</title>
</head>
<body>
    <form id="form1" runat="server">
        
   <table class="tabela-home">
    <tr style="margin-left:auto">
        <td>
            <asp:Button ID="Button1" runat="server" Text="Mecânicos" OnClick="Button1_Click" />
        </td>
         <td>
            <asp:Button ID="Button2" runat="server" Text="Clientes" OnClick="Button2_Click" />
        </td>
         <td>
            <asp:Button ID="Button3" runat="server" Text="Veículos" OnClick="Button3_Click" />
        </td>
    </tr>
</table>
        
    </form>
</body>
</html>
