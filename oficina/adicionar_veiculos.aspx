<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar_veiculos.aspx.cs" Inherits="oficina.adicionar_veiculos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

              
            <asp:Label ID="Label1" runat="server" Text="Matricula do Veiculo"></asp:Label>
            
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
        </div>
        <div>
        <asp:Label ID="Label2" runat="server" Text="Nif do Cliente"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <div>
        <asp:Label ID="Label3" runat="server" Text="Marca do Veículo"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
          </div>
        <div>
        <asp:Label ID="Label4" runat="server" Text="Modelo do Veículo"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
          </div>
        <div>
        <asp:Label ID="Label5" runat="server" Text="Ano do Veículo"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
          </div>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Voltar!" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ofcConnectionString %>" 
            DeleteCommand="DELETE FROM [veiculos] WHERE [matricula_veiculo] = @matricula_veiculo" 
            InsertCommand="INSERT INTO [veiculos] ([matricula_veiculo], [nif_cliente], [marca],[modelo],[ano]) VALUES (@matricula_veiculo,@nif_cliente, @marca,@modelo,@ano)" 
            SelectCommand="SELECT * FROM [veiculos]" 
            UpdateCommand="UPDATE [veiculos] SET [matricula_veiculo]=@matricula_veiculo,[nif_cliente]=@nif_cliente,[marca]=@marca,[modelo]=@modelo,[ano]=@ano WHERE [matricula_veiculo] = @matricula_veiculo">
            <DeleteParameters>
                <asp:Parameter Name="matricula_veiculo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="matricula_veiculo" Type="String" />
                <asp:Parameter Name="nif_cliente" Type="String" />
                <asp:Parameter Name="marca" Type="String" />
                <asp:Parameter Name="modelo" Type="String" />
                <asp:Parameter Name="ano" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="matricula_veiculo" Type="String" />
                <asp:Parameter Name="nif_cliente" Type="String" />
                <asp:Parameter Name="marca" Type="String" />
                <asp:Parameter Name="modelo" Type="String" />
                <asp:Parameter Name="ano" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>



        </div>
    </form>
</body>
</html>
