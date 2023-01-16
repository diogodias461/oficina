<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="procurar_intrevencao.aspx.cs" Inherits="oficina.procurar_intrevencao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="ID Manutenção"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Procurar" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ofcConnectionString %>" SelectCommand="SELECT * FROM [intrevencao]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_intrevencao" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="id_intrevencao" HeaderText="id_intrevencao" ReadOnly="True" SortExpression="id_intrevencao" />
                <asp:BoundField DataField="id_manutencao" HeaderText="id_manutencao" SortExpression="id_manutencao" />
                <asp:BoundField DataField="nif_mecanico" HeaderText="nif_mecanico" SortExpression="nif_mecanico" />
                <asp:BoundField DataField="desc_intrevencao" HeaderText="desc_intrevencao" SortExpression="desc_intrevencao" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
