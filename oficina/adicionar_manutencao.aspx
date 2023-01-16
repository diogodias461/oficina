<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar_manutencao.aspx.cs" Inherits="oficina.adicionar_manutencao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Text="ID Manutencao"></asp:Label> 
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
        </div>
        <div>
        <asp:Label ID="Label2" runat="server" Text="Matricula"></asp:Label>
            <select id="Select1" name="D1" runat="server">
                
            </select></div>
        <div>
        <asp:Label ID="Label3" runat="server" Text="Data da Manutencção" ></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
          </div>
         <div>
        <asp:Label ID="Label4" runat="server" Text="Preco"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
          </div>
         <div>
        <asp:Label ID="Label5" runat="server" Text="Ultima Manutencao"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" TextMode="Date"></asp:TextBox>
          </div>
         <div>
        <asp:Label ID="Label6" runat="server" Text="Próxima Manutencção"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
          </div>

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Adicionar" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Voltar!" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ofcConnectionString %>" 
            DeleteCommand="DELETE FROM [id_manutencao] WHERE [id_manutencao] = @id_manutencao" 
            InsertCommand="INSERT INTO [manutencao] ([id_manutencao], [matricula], [data_manutencao] , [preco], [ultima_manutencao], [proxima_manutencao]) VALUES (@id_manutencao, @matricula_veiculo, @data_mautencao,@preco,@ultima_manutencao,@proxima_manutencao)" 
            SelectCommand="SELECT * FROM [manutencao]" 
            UpdateCommand="UPDATE [manutencao] SET [id_manutencao] = @id_manutencao, [data_manutencao]=@data_manutencao , [preco]=@preco,[ultima_manutencao]=@ultima_manutencao, [proxima_manutencao]=@proxima_manutencao WHERE [id_manutencao] = @id_manutencao">
            <DeleteParameters>
                <asp:Parameter Name="id_manutencao" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id_manutencao" Type="String" />
                <asp:Parameter Name="data_manutencao" Type="String" />
                <asp:Parameter Name="preco" Type="String" />
                <asp:Parameter Name="ultima_manutencao" Type="String" />
                <asp:Parameter Name="proxima_manutencao" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="data_manutencao" Type="String" />
                <asp:Parameter Name="preco" Type="String" />
                <asp:Parameter Name="ultima_manutencao" Type="String" />
                <asp:Parameter Name="proxima_manutencao" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
