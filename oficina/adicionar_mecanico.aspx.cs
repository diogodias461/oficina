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
    public partial class adicionar_mecanico : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ofcConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into mecanico values('" +TextBox1.Text+"','"+TextBox2.Text+"','" + TextBox3.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Mecânico adicionado com sucesso!";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("mecanicos.aspx");
        }
    }
}