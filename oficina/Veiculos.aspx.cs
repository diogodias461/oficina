using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace oficina
{
    public partial class Veiculos : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ofcConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adicionar_veiculos.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("manutencoes_veiculo.aspx");
        }

        protected void btnManu_Click(object sender, EventArgs e)
        {
            
           /* Button btnManu = (Button)sender;
            GridViewRow grv = (GridViewRow)btnManu.NamingContainer;
            int rowindex = grv.RowIndex;*/
            SqlCommand cmd = new SqlCommand("select * from manutencao where matricula_veiculo = veiculos.matricula_veiculo",con);
            SqlDataReader rd = cmd.ExecuteReader();
           

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("manutencoes_veiculo.aspx");
        }
    }
}