using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace test1
{
    public partial class mailing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("tdi2022@outlook.fr");
            mail.Subject = TextBox1.Text;
            mail.Body = "inscription à <b> ismo.ma</b><br /><br /><a href = 'https://www.ismo.ma' > Suivez le lien</ a > ";
            mail.IsBodyHtml = true;
         /*   foreach (var attachment in attachments)
                mail.Attachments.Add(new Attachment(attachment));
         */
          
            //foreach (var address in toAddresses)
                mail.To.Add(TextBox2.Text);

            SmtpClient smtp = new SmtpClient("smtp.live.com", 587); //smtp.gmail.com port(578 ou 25 ou 64)
         
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("tdi2022@outlook.fr", "ISMO@2022");

            try
            {
                smtp.Send(mail);
            }
            catch (Exception ex)
            {

            }
        }
    }
}