using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oficina
{

    public partial class Mecanicos : System.Web.UI.Page
    {
        //public event System.Web.UI.WebControls.GridViewCommandEventHandler RowDeleting;

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {


        }


        protected void GridViewInsert(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }
        protected void GridView1_PreRender(object sender, EventArgs e)
        {
            for (int index = 0; index < GridView1.Rows.Count - 1; index++)
            {

                GridView1.Rows[index].Cells[1].Controls[1].Visible = false;
            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
                
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adicionar_mecanico.aspx");
        }

        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("adicionar_mecanico.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}