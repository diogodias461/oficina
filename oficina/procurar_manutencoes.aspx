<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="procurar_manutencoes.aspx.cs" Inherits="oficina.procurar_manutencoes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Matricula!"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Procurar" OnClick="Button1_Click" />
        </div>
        <div>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ofcConnectionString %>" SelectCommand="SELECT * FROM [manutencao]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_manutencao" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id_manutencao" HeaderText="id_manutencao" ReadOnly="True" SortExpression="id_manutencao" />
                <asp:BoundField DataField="matricula_veiculo" HeaderText="matricula_veiculo" SortExpression="matricula_veiculo" />
                <asp:BoundField DataField="data_manutencao" HeaderText="data_manutencao" SortExpression="data_manutencao" />
                <asp:BoundField DataField="preco" HeaderText="preco" SortExpression="preco" /> 
            </Columns>
        </asp:GridView>

        
        
    </form>
</body>
</html>
