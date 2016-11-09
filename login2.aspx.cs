using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Net.Mail;
using System.IO;


public partial class Default2 : System.Web.UI.Page
{
    static int random, random1;
    static string username, email;
    OleDbCommand cm;
    OleDbConnection con;
    OleDbParameter p1, p2;
    string constr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Shubham Singh\\Documents\\tlpas.accdb";
    string cmstr = "insert into tlpas1 values(@username,@password,@email,@pattern)";
    protected void Page_Load(object sender, EventArgs e)
    {
        username = (string)(Session["username"]);
        if(username==null)
        {
            Response.Redirect("login.aspx");
        }
        string cmstr1 = "select * from tlpas1 where username=@username";
        con = new OleDbConnection(constr);
        con.Open();
        cm = new OleDbCommand(cmstr1, con);
        OleDbParameter o1 = new OleDbParameter("@username", OleDbType.VarChar, 40);
        cm.Parameters.Add(o1);
        o1.Value = username;
        OleDbDataReader dr = cm.ExecuteReader();
        try
        {
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    email = dr["emailid"].ToString();
                }
            }
        }
        catch (System.Exception ex)
        {            
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
            Response.Redirect("Default.aspx");
         }              
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('OTP doesn't match');", true);
           // ClientScript.RegisterStartupScript(GetType(), "alert", "alert('OTP doesn't match');", true);
        }
}
}
