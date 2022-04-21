using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class utilisationService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ServiceReference1.WebService1SoapClient c = new test1.ServiceReference1.WebService1SoapClient();
            Label1.Text = c.HelloWorld();
       }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ServiceReference1.WebService1SoapClient c= new test1.ServiceReference1.WebService1SoapClient();
            Label2.Text = c.getTitreById(Convert.ToInt32(TextBox1.Text));
        }
    }
}