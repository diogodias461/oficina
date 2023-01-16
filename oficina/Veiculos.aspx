<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veiculos.aspx.cs" Inherits="oficina.Veiculos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="StyleSheet1.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>



        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ofcConnectionString %>" DeleteCommand="DELETE FROM veiculos
                 WHERE matricula_veiculo= @matricula_veiculo" InsertCommand="INSERT INTO [veiculos] ([nif_cliente], [matricula_veiculo] , [marca], [modelo], [ano])
            VALUES (@nif_cliente , @matricula_veiculo , @marca, @modelo , @ano)" SelectCommand="SELECT * FROM [veiculos]" UpdateCommand="UPDATE [veiculos]
            SET [matricula_veiculo] = @matricula_veiculo, [nif_cliente] = @nif_cliente , [marca] = @marca , [modelo]=@modelo, [ano]=@ano
            WHERE matricula_veiculo = @matricula_veiculo">
            <DeleteParameters>
                <asp:Parameter Name="matricula_veiculo" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nif_cliente" />
                <asp:Parameter Name="matricula_veiculo" />
                <asp:Parameter Name="marca" />
                <asp:Parameter Name="modelo" />
                <asp:Parameter Name="ano" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nif_cliente" />
                <asp:Parameter Name="matricula_veliculo" />
                <asp:Parameter Name="marca" />
                <asp:Parameter Name="modelo" />
                <asp:Parameter Name="ano" />
                <asp:Parameter Name="matricula_veiculo" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Voltar!" />
        <asp:Button ID="Button3" runat="server" Text="Manutenções" OnClick="Button3_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="matricula_veiculo" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="matricula_veiculo" HeaderText="matricula_veiculo" ReadOnly="True" />
                <asp:BoundField DataField="nif_cliente" HeaderText="nif_cliente" SortExpression="nif_cliente" />
                <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                <asp:BoundField DataField="modelo" HeaderText="modelo" SortExpression="modelo" />
                <asp:BoundField DataField="ano" HeaderText="ano" SortExpression="ano" />
                <asp:CommandField ButtonType="Button" HeaderText="Ações" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
                
                
               
                
                
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
