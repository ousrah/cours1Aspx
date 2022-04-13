using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace test1
{
    public partial class NouvelOuvrageCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("listeOuvrages.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();
            SqlCommand cmd = new SqlCommand("insert into ouvrage values (54454545,'test',2020,7,'EYROLLES')", cn);

            cmd.ExecuteNonQuery();
          

            cmd = null;
            cn.Close();
            cn = null;



            Response.Redirect("listeOuvrages.aspx");
        }
    }
}