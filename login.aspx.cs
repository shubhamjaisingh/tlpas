


using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
public partial class preview_dotnet_templates_akshara_multi_master_login : System.Web.UI.Page

{
    OleDbCommand cm;
    OleDbConnection con;
    OleDbParameter p1, p2;
    string constr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Users\\Shubham Singh\\Documents\\tlpas.accdb";
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {       
    }
    protected void username_TextChanged(object sender, EventArgs e)
    {
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {      
        string cmstr = "select * from  tlpas1 where username=@username and password=@pwd";
        con = new OleDbConnection(constr);
        con.Open();
        cm = new OleDbCommand(cmstr, con);
        p1 = new OleDbParameter("@username", OleDbType.VarChar, 40);
        p2 = new OleDbParameter("@pwd", OleDbType.VarChar, 40);
        cm.Parameters.Add(p1);
        cm.Parameters.Add(p2);       
        p1.Value = username.Text;
        p2.Value = password.Text;       
        OleDbDataReader dr = cm.ExecuteReader();
        if (dr.HasRows)
        {
            Session["username"] = username.Text;            
            Response.Redirect("login1.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Incorrect Username/ Password');", true);
        }      
    }
    protected void password_TextChanged(object sender, EventArgs e)
    {

    }
}
