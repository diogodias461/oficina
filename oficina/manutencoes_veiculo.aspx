<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manutencoes_veiculo.aspx.cs" Inherits="oficina.manutencoes_veiculo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ofcConnectionString %>" DeleteCommand="
DELETE FROM manutencao WHERE id_manutencao=@id_manutencao DELETE FROM intrevencao where id_manutencao=@id_manutencao
" InsertCommand="
INSERT INTO [manutencao] ([id_manutencao], [matricula_veiculo] , [data_manutencao],[preco],[ultima_manutencao],[proxima_manutencao])
            VALUES (@id_manutencao , @matricula_veiculo, @data_manutencao,@preco,@ultima_manutencao,@proxima_manutencao)" SelectCommand="SELECT * FROM [manutencao]" UpdateCommand="UPDATE [manutencao]
            SET [id_manutencao] = @id_manutencao , [matricula_veiculo] = @matricula_veiculo, [data_manutencao] = @data_manutencao , [preco]=@preco, [ultima_manutencao]=@ultima_manutencao,[proxima_manutencao]=@proxima_manutencao
            WHERE id_manutencao= @id_manutencao">
            <DeleteParameters>
                <asp:Parameter Name="id_manutencao" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_manutencao" />
                <asp:Parameter Name="matricula_veiculo" />
                <asp:Parameter Name="data_manutencao" />
                <asp:Parameter Name="preco" />
                <asp:Parameter Name="ultima_manutencao" />
                <asp:Parameter Name="proxima_manutencao" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_manutencao" />
                <asp:Parameter Name="matricula_veiculo" />
                <asp:Parameter Name="data_manutencao" />
                <asp:Parameter Name="preco" />
                <asp:Parameter Name="ultima_manutencao" />
                <asp:Parameter Name="proxima_manutencao" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>

           



        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_manutencao" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id_manutencao" HeaderText="id_manutencao" ReadOnly="True" SortExpression="id_manutencao" />
                <asp:BoundField DataField="matricula_veiculo" HeaderText="matricula_veiculo" SortExpression="matricula_veiculo" />
                <asp:BoundField DataField="data_manutencao" HeaderText="data_manutencao" SortExpression="data_manutencao" />
                <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" />
                <asp:BoundField DataField="ultima_manutencao" HeaderText="ultima_manutencao" SortExpression="ultima_manutencao" />
                <asp:BoundField DataField="proxima_manutencao" HeaderText="proxima_manutencao" SortExpression="proxima_manutencao" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Adicionar !" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Voltar !" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click1" Text="Procurar Matrícula!" />
    </form>
</body>
</html>
