using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace test1
{
    public partial class validationInscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Request.QueryString["email"];
            string hash = Request.QueryString["hash"];

            SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from [user] where email = '" + email + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
            Boolean exist=false;
            if (dr.Read())
            {
                if (dr["hash"].ToString() == hash)
                {
                    exist = true;
                }

            }


            dr.Close();
            dr = null;
           

            if (exist)
            {
                cmd.CommandText = "update [user] set valide=1 where email = '" + email + "'";
                cmd.ExecuteNonQuery();
                Session["pass"] = "ok";
                


            }


 cmd = null;
            cn.Close();
            cn = null;

            if (exist)
                Response.Redirect("WebForm3.aspx");


            }
    }
}