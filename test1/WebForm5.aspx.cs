using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace test1
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
                cn.Open();
                SqlCommand cmd = new SqlCommand("select * from ouvrage", cn);
                SqlDataReader dr = cmd.ExecuteReader();
            lstOuvrages.InnerHtml = "<select >";
            while(dr.Read())
            {
                lstOuvrages.InnerHtml += "<option value= '" + dr["numouvr"] + "'>" + dr["nomouvr"] + "</option>";
            }

            lstOuvrages.InnerHtml += "</select >";
            dr.Close();
                dr = null;
                cmd = null;
                cn.Close();
                cn = null;
           
        }

       
    }
}