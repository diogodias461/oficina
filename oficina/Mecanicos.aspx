<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mecanicos.aspx.cs" Inherits="oficina.Mecanicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ofcConnectionString %>" 
            DeleteCommand="DELETE FROM mecanico
                 WHERE nif_mecanico = @nif_mecanico" SelectCommand="SELECT * FROM [mecanico]" 
        UpdateCommand="
              UPDATE [mecanico]
            SET [nif_mecanico] = @nif_mecanico , [nome_mecanico] = @nome_mecanico , [morada_mecanico] = @morada_mecanico
            WHERE nif_mecanico = @nif_mecanico" 
        InsertCommand="INSERT INTO [mecanicio] ([nif_mecanico], [nome_mecanico] , [morada_mecanico])
            VALUES (@nif_mecanico , @nome_mecanico , @morada_mecanico)">
            <DeleteParameters>
                <asp:Parameter Name="nif_mecanico" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nif_mecanico" />
                <asp:Parameter Name="nome_mecanico" />
                <asp:Parameter Name="morada_mecanico" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nif_mecanico" />
                <asp:Parameter Name="nome_mecanico" />
                <asp:Parameter Name="morada_mecanico" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nif_mecanico" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2">
            <Columns>
                <asp:BoundField DataField="nif_mecanico" HeaderText="nif_mecanico" ReadOnly="True" SortExpression="nif_mecanico" />
                <asp:BoundField DataField="nome_mecanico" HeaderText="nome_mecanico" SortExpression="nome_mecanico" />
                <asp:BoundField DataField="morada_mecanico" HeaderText="morada_mecanico" SortExpression="morada_mecanico" />
                <asp:CommandField HeaderText="Ações" ShowDeleteButton="True" ShowHeader="True" ButtonType="Button" ShowEditButton="True" ShowInsertButton="true" />
            </Columns>
        </asp:GridView>
       


        




        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click2" Text="Adicionar" />
       


        




        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Voltar!" />
       


        




    </form>
</body>
</html>
