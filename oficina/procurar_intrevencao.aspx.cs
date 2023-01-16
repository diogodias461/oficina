using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oficina
{
    public partial class procurar_intrevencao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                string search = TextBox1.Text;
                string selectCommand = "SELECT * FROM intrevencao WHERE ID Manutencao LIKE '%" + search;
                SqlDataSource1.SelectCommand = selectCommand;
                GridView1.DataSource = SqlDataSource1;
                TextBox1.Focus();
            }
        }
    }
}