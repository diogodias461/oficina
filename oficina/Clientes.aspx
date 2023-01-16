<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="oficina.Clientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ofcConnectionString %>"
                DeleteCommand="DELETE FROM clientes WHERE nif_cliente=@nif_cliente DELETE FROM veiculos where nif_cliente=@nif_cliente" 
                InsertCommand="INSERT INTO [clientes] ([nif_cliente], [nome_cliente] , [morada_cliente])
            VALUES (@nif_cliente , @nome_cliente , @morada_cliente)" SelectCommand="SELECT * FROM [clientes]" UpdateCommand="UPDATE [clientes]
            SET [nif_cliente] = @nif_cliente , [nome_cliente] = @nome_cliente , [morada_cliente] = @morada_cliente
            WHERE nif_cliente = @nif_cliente">
                <DeleteParameters>
                    <asp:Parameter Name="nif_cliente" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nif_cliente" />
                    <asp:Parameter Name="nome_cliente" />
                    <asp:Parameter Name="morada_cliente" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nif_cliente" />
                    <asp:Parameter Name="nome_cliente" />
                    <asp:Parameter Name="morada_cliente" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nif_cliente" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="nif_cliente" HeaderText="nif_cliente" ReadOnly="True" SortExpression="nif_cliente" />
                <asp:BoundField DataField="nome_cliente" HeaderText="nome_cliente" SortExpression="nome_cliente" />
                <asp:BoundField DataField="morada_cliente" HeaderText="morada_cliente" SortExpression="morada_cliente" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" />
        <asp:Button ID="Button2" runat="server" Text="Voltar!" OnClick="Button2_Click" />
    </form>
</body>
</html>
