<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="oficina.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="StyleSheet1.css" />
    <title>Login-AMT</title>
</head>
<body>
    <form id="form1" runat="server">

        <div class="recLogin">
            <h1 class="h1Login">Login</h1>
            <input type="text" required="" placeholder="NIF" class="inputLogin" />
            <input type="password" required="" placeholder="Password" class="inputLogin" style="margin-top:10px" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="48px" OnClick="Button1_Click" Text="Login" Width="96px"  CssClass="loginButton" />
            <asp:Label ID="Label1" runat="server" Text="X Utilizador Inválido" CssClass="msgErro"></asp:Label>
        </div>
         
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
         
    </form>
</body>
</html>
