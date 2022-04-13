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
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
                cn.Open();
                SqlCommand cmd = new SqlCommand("select * from classification", cn);
                SqlDataReader dr = cmd.ExecuteReader();

                DataTable dt = new DataTable();
                dt.Load(dr);

                lstClassification.DataTextField = "LIBRUB";
                lstClassification.DataValueField = "NUMRUB";
                lstClassification.DataSource = dt;
                lstClassification.DataBind();

                dt = null;
                dr.Close();
                dr = null;
                cmd = null;


                cn.Close();
                cn = null;



                chargerOuvrages();
            }
        }


        private void chargerOuvrages()
        {
SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from ouvrage where numrub = " +lstClassification.SelectedValue , cn);
            SqlDataReader dr = cmd.ExecuteReader();
           lstOuvrages.InnerHtml = "";
            while (dr.Read())
            {
                lstOuvrages.InnerHtml +=dr["NOMOUVR"] + "<br />\n";


            }


            dr.Close();
            dr = null;
            cmd = null;


            cn.Close();
            cn = null;
        }

        protected void lstClassification_SelectedIndexChanged(object sender, EventArgs e)
        {
            chargerOuvrages();
        }
    }
}