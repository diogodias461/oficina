<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar_intrevencao.aspx.cs" Inherits="oficina.adicionar_intrevencao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ofcConnectionString %>" DeleteCommand="DELETE FROM [id_intrevencao] WHERE [id_intrevencao] = @id_intrevencao" InsertCommand="INSERT INTO [intrevencao] ([id_intrevencao],[id_manutencao],[nif_mecanico],[desc_intrevencao]) VALUES(@id_intrevencao, @id_manutencao, @nif_mecanico,@desc_intrevencao)" SelectCommand="SELECT * FROM [intrevencao]" UpdateCommand="UPDATE [intrevencao] SET [id_intrevencao = @id_intrevencao, [id_manutencao]=@id_manutencao , [nif_mecanico]=@nif_mecanico,[des_intrevencao]=@desc_intrevencao, WHERE [id_intrevencao] = @id_intrevencao">
                <DeleteParameters>
                    <asp:Parameter Name="id_intrevencao" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_intrevencao" />
                    <asp:Parameter Name="id_manutencao" />
                    <asp:Parameter Name="nif_mecanico" />
                    <asp:Parameter Name="desc_intrevencao" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="id_manutencao" />
                    <asp:Parameter Name="nif_mecanico" />
                    <asp:Parameter Name="desc_intrevencao" />
                    <asp:Parameter Name="id_intrevencao" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:Label ID="Label1" runat="server" Text="ID Intrevencao"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        </div>
       <div>
           <asp:Label ID="Label2" runat="server" Text="ID Manutencao"></asp:Label>
           <select id="Select1" runat="server">
           </select>
       </div>
        <div>
            <asp:Label ID="Label3" runat="server" Text="NIF Mecanico"></asp:Label>
            <select id="Select2" runat="server">
            </select>
        </div>
        <div>
            <asp:Label ID="Label4" runat="server" Text="Descrição Intrevenção"></asp:Label>
            <textarea id="TextArea1" cols="20" rows="2" runat="server"></textarea>
        </div>
            
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 29px" Text="Adicionar!" />
        <asp:Button ID="Button2" runat="server" Text="Voltar!" />
            
    </form>
</body>
</html>
