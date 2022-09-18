using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string qry;
    HttpCookie ad;

    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection();
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        qry = "Select * from login where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();
        if (TextBox1.Text == "admin" && TextBox2.Text == "123")
        {
            ad = new HttpCookie("cook");
            ad.Values.Add("un", TextBox1.Text);
            Response.Cookies.Add(ad);
            Response.Redirect("adminDashboard.aspx");
        }
        else
        {
            Label1.Text = "!Invalid Entry Recheck it";

        }
    }

}
        