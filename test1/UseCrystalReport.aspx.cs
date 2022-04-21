using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test1
{
    public partial class UseCrystalReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CrystalReport1 cr = new CrystalReport1();
            cr.SetDatabaseLogon("sa", "P@ssw0rd");
            CrystalReportViewer1.ReportSource = cr;

        }
    }
}