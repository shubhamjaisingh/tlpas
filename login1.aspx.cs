using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class Default2 : System.Web.UI.Page
{
    string username;
        OleDbCommand cm;
        OleDbConnection con;
        OleDbParameter p1, p2;
        string constr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Shubham Singh\\Documents\\tlpas.accdb";

    protected void Page_Load(object sender, EventArgs e)
    {
        username = (string)(Session["username"]);
        if(username==null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        back.Text += "987";
        front.Text += "***";

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
         back.Text += "876";
        front.Text += "***";
    
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        back.Text += "765";
        front.Text += "***";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        back.Text = "";
        front.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cmstr = "select * from tlpas1 where username=@username and pattern=@pwd";
        con = new OleDbConnection(constr);
        con.Open();
        cm = new OleDbCommand(cmstr, con);
        p1 = new OleDbParameter("@username", OleDbType.VarChar, 40);
        p2 = new OleDbParameter("@pwd", OleDbType.VarChar, 40);
        cm.Parameters.Add(p1);
        cm.Parameters.Add(p2);
        p1.Value = username;
        p2.Value =back.Text;
        OleDbDataReader dr = cm.ExecuteReader();
        if (dr.HasRows)
        {
            Response.Redirect("login2.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Pattern doesn't match');", true);
        }
    }
}