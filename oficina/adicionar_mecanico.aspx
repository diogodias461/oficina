<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar_mecanico.aspx.cs" Inherits="oficina.adicionar_mecanico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Text="NIF"></asp:Label>
            
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
        </div>
        <div>
        <asp:Label ID="Label2" runat="server" Text="Nome"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="Label3" runat="server" Text="Morada"></asp:Label>
            <asp:TextBox ID="TextBox3"  runat="server"></asp:TextBox>
          </div>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Voltar!" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ofcConnectionString %>" DeleteCommand="DELETE FROM [mecanico] WHERE [nif_mecanico] = @nif_mecanico" InsertCommand="INSERT INTO [mecanico] ([nif_mecanico], [nome_mecanico], [morada_mecanico]) VALUES (@nif_mecanico, @nome_mecanico, @morada_mecanico)" SelectCommand="SELECT * FROM [mecanico]" UpdateCommand="UPDATE [mecanico] SET [nome_mecanico] = @nome_mecanico, [morada_mecanico] = @morada_mecanico WHERE [nif_mecanico] = @nif_mecanico">
            <DeleteParameters>
                <asp:Parameter Name="nif_mecanico" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nif_mecanico" Type="String" />
                <asp:Parameter Name="nome_mecanico" Type="String" />
                <asp:Parameter Name="morada_mecanico" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome_mecanico" Type="String" />
                <asp:Parameter Name="morada_mecanico" Type="String" />
                <asp:Parameter Name="nif_mecanico" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
