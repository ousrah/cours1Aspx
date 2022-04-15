using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.Net.Mail;
using System.Net;

namespace test1
{
    public partial class inscription : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

         

        }

        public static byte[] GetHash(string inputString)
        {
            using (HashAlgorithm algorithm = SHA256.Create())
                return algorithm.ComputeHash(Encoding.UTF8.GetBytes(inputString));
        }

        protected void btnIns_Click(object sender, EventArgs e)
        {
   SqlConnection cn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=librairie;User ID=sa;Password=P@ssw0rd");
            cn.Open();
            SqlCommand cmd = new SqlCommand("select * from [user] where email = '" + txtEmail.Text + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();
           Boolean exist = false;
            if (dr.Read())
                   exist = true;
            


            dr.Close();
            dr = null;
          

            if (exist)
                 lblExist.Visible = true;
            else
            {
                StringBuilder sb = new StringBuilder();
                foreach (byte b in GetHash(DateTime.Now.ToString()))
                    sb.Append(b.ToString("X2"));
                string hash = sb.ToString();





                cmd.CommandText = "insert into [user] (nom, email, password,hash, valide) values (@nom, @email, @password, @hash, 0)";
                cmd.Parameters.AddWithValue("@nom", txtNom.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPwd1.Text);
                cmd.Parameters.AddWithValue("@hash", hash);
                cmd.ExecuteNonQuery();


                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("tdi2022@outlook.fr");
                mail.Subject = "inscription ismo tétouan";
               mail.Body = "votre inscription à <b> ismo.ma</b> à été effectuée avec succés, cliquez sur le lien suivant pour valider votre inscription <br /><br /><a href = 'https://localhost:44357/validationInscription.aspx?email=" + txtEmail.Text + "&hash=" + hash + "' > https://localhost:44357/validationInscription.aspx?email=" + txtEmail.Text + "&hash=" + hash + "</ a > ";
            

                mail.IsBodyHtml = true;
               

                mail.To.Add(txtEmail.Text);

                SmtpClient smtp = new SmtpClient("smtp.live.com", 587); 

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


            cmd = null;
            cn.Close();
            cn = null;

            if (!exist)
                Response.Redirect("inscriptionEffectuee.aspx");


        }
    }
}