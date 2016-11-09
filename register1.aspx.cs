using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class _Default : System.Web.UI.Page
{
    string username;
    protected void Page_Load(object sender, EventArgs e)
    {
        username = (string)(Session["username"]);
        if(username==null)
        {
            Response.Redirect("register.aspx");
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["pattern"] = back.Text;
        Response.Redirect("register2.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        back.Text = "";
        front.Text = "";
    }
}