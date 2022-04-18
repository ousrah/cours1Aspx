using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class serverVariqbles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            content.InnerHtml = Request.ServerVariables["HTTP_USER_AGENT"];
            /*foreach(string a in Request.ServerVariables)
            {
                content.InnerHtml += a +  " = " + Request.ServerVariables[a] + "<br />";
            }*/
        }
    }
}