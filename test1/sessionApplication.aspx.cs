using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class sessionApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["var1"] = TextBox1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                Label1.Text = Session["var1"].ToString();
            }
            catch(Exception ex)
            {

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Application["var1"] = TextBox2.Text;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                Label2.Text = Application["var1"].ToString();
            }
            catch (Exception ex)
            {

            }
        }
    }
}