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
    public partial class adicionar_intrevencao : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ofcConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string sqlquery = "select id_manutencao from manutencao";
            string sqlquery2 = "select nif_mecanico from mecanico";
            SqlDataAdapter sda = new SqlDataAdapter(sqlquery, con);
            SqlDataAdapter sda2 = new SqlDataAdapter(sqlquery2, con);
            con.Open();
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();

            //id_manutencao
            sda.Fill(dt);
            Select1.DataSource = dt;
            Select1.DataTextField = "id_manutencao";
            Select1.DataValueField = "id_manutencao";
            Select1.DataBind();

            //nif_mecanico
            sda2.Fill(dt2);
            Select2.DataSource = dt2;
            Select2.DataTextField = "nif_mecanico";
            Select2.DataValueField = "nif_mecanico";
            Select2.DataBind();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into intrevencao values('" + TextBox1.Text + "','" + Select1.Value + "','" + Select2.Value + "','" + TextArea1.Value + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Manutencão adicionada com sucesso!"; ;
            TextBox1.Text = "";
            Select1.Items[Select1.SelectedIndex].Text = "";
            Select2.Items[Select2.SelectedIndex].Text = "";
            TextArea1.Value = "";

        }
    }
}