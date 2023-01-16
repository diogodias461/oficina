using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oficina
{
    public partial class manutencoes_veiculo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("procurar_manutencoes.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("procurar_manutencoes.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adicionar_manutencao.aspx");
        }
    }
}