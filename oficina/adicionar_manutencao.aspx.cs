using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace oficina
{
    public partial class adicionar_manutencao : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ofcConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlquery = "select matricula_veiculo from veiculos";
            SqlDataAdapter sda = new SqlDataAdapter(sqlquery, con);
            con.Open();
            DataTable dt = new DataTable();
            sda.Fill(dt);
            Select1.DataSource = dt;
            Select1.DataTextField = "matricula_veiculo";
            Select1.DataValueField = "matricula_veiculo";
            Select1.DataBind();

           
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into manutencao values('" + TextBox1.Text + "','" + Select1.Value + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Manutencão adicionada com sucesso!";;
            TextBox1.Text = "";
            Select1.Items[Select1.SelectedIndex].Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("manutencoes_veiculo.aspx");
        }
    }
}