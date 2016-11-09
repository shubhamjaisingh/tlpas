using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.IO;
using System.Net;
using System.Net.Mail;
public partial class _Default : System.Web.UI.Page
{
    string username, password, pattern, email;
    static int random,random1;
    OleDbCommand cm;
    OleDbConnection con;
    OleDbParameter p1, p2,p3,p4;
    string constr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Shubham Singh\\Documents\\tlpas.accdb";
    string cmstr = "insert into tlpas1 values(@username,@password,@email,@pattern)";
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new OleDbConnection(constr);
        con.Open();
        username = (string)(Session["username"]);
        password = (string)(Session["password"]);
        email = (string)(Session["email"]);
        pattern = (string)(Session["pattern"]);
        Label3.Text = email;
        if(username==null)
        {
            Response.Redirect("register.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {            
            try
            {
                Random r = new Random();
                random = r.Next(0000, 9999);
               random1 = random;
                MailMessage mail = new MailMessage();
                mail.To.Add(email);
                mail.From = new MailAddress("singh5754@gmail.com");
                mail.Subject = "One Time Password For User " + username;
                mail.Body = "The One Time Password For the " + username + "is " + Convert.ToString(random);
                mail.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.UseDefaultCredentials = true;
                smtp.Port = 587;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new System.Net.NetworkCredential("singh5754@gmail.com", "9971712432");
                smtp.EnableSsl = true;
                smtp.Send(mail);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email Sent');", true);
            }
            catch (Exception Ex2)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email Sending Failed');", true);
            }        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == Convert.ToString(random1))
        {
            try
            {
                cm = new OleDbCommand(cmstr, con);
                p1 = new OleDbParameter("@username", OleDbType.VarChar, 40);
                p2 = new OleDbParameter("@password", OleDbType.VarChar, 40);
                p3 = new OleDbParameter("@email", OleDbType.VarChar, 40);
                p4 = new OleDbParameter("@pattern", OleDbType.VarChar, 40);
                cm.Parameters.Add(p1);
                cm.Parameters.Add(p2);
                cm.Parameters.Add(p3);
                cm.Parameters.Add(p4);
                p1.Value = username;
                p2.Value = password;
                p3.Value = email;
                p4.Value = pattern;
                int i = cm.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Redirect("Default2.aspx");
                }
                else
                {
                  //  ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Unknown Error encountered');", true);
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Unknown Error encountered');", true);
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Unknown Error encountered');", true);
                //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Unknown Error encountered');", true);
            }
            finally
            {
                con.Close();
            }
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('OTP Error encountered');", true);
           // ClientScript.RegisterStartupScript(GetType(), "alert", "alert('OTP doesn't match');", true);
        }
    }
}