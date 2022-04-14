using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace test1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnextion_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from [user] where email = '" +txtLogin.Text + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
           Session["pass"] = "";
          if(dr.Read())
            {
                if(dr["password"].ToString()==txtPwd.Text)
                {
                    Session["pass"] = "ok";
                }

            }


            dr.Close();
            dr = null;
            cmd = null;
           cn.Close();
            cn = null;

            if (Session["pass"].ToString()=="ok")
               Response.Redirect("WebForm3.aspx");
            else
                lblErr.Visible = true;

            

        }
    }
}