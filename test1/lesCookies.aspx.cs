using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class lesCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie("maCookie");
            c["nom"]= TextBox1.Text; 
            c["prenom"]=TextBox2.Text;
            c.Expires = DateTime.Now.AddDays(7);
            Response.Cookies.Add(c);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["maCookie"];
            if (c != null)
                Label1.Text = c["nom"] + " " + c["prenom"];
            else
                Label1.Text = "";

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["maCookie"];
            c.Expires= DateTime.Now.AddDays(-1);
            Response.Cookies.Add(c);

        }
    }
}