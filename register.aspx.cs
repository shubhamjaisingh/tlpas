using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Net;
using System.Net.Mail;
using System.IO;
public partial class _Default : System.Web.UI.Page
{
    string cmd="select * from tlpas1 where username=@user";
     OleDbCommand cm;
    OleDbConnection con;
    OleDbParameter p1, p2, p3;
    string constr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Shubham Singh\\Documents\\tlpas.accdb";
    protected void Page_Load(object sender, EventArgs e)
    {      
    }    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            con = new OleDbConnection(constr);
            con.Open();
            cm = new OleDbCommand(cmd, con);
            p1 = new OleDbParameter("@user", OleDbType.VarChar, 40);
            cm.Parameters.Add(p1);
            p1.Value = TextBox1.Text;
            OleDbDataReader dr = cm.ExecuteReader();
            if (dr.HasRows)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Username Already exist');", true);
            }
            else
            {
                Session["username"] = TextBox1.Text;
                Session["password"] = TextBox3.Text;
                Session["email"] = txtemail.Text;
                Response.Redirect("register1.aspx");
            }
        }
        catch(OleDbException ex)
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Unknown Error encountered');", true);
        }
        finally
        {
            con.Close();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
    }
}