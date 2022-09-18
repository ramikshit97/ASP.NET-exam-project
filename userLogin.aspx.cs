using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class user : System.Web.UI.Page
{

    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    HttpCookie ck;
    string qry;
    string cqry;
    
    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection();
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cqry = "Select * from userLogin where username='" + (TextBox1.Text).ToUpper() + "' and rollnumber='" + (TextBox2.Text).ToUpper() + "' and password='" + (TextBox3.Text).ToUpper() + "'";
        cmd = new SqlCommand(cqry, con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            
            Label2.Text = "User exist";
        }
        else
        {
            con.Close();
            con.Open();
            ck = new HttpCookie("cook");
            ck.Values.Add("un", TextBox1.Text);
            Response.Cookies.Add(ck);
            Response.Redirect("testselection.aspx");
            qry = "insert into userLogin values('" + (TextBox1.Text).ToUpper() + "','" + (TextBox2.Text).ToUpper() + "', '" + (TextBox3.Text).ToUpper() + "')";
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            Label2.Text = "Record Added";
            con.Close();
        }

        if (Label2.Text == "Record Added")
        {
            Panel1.Visible = true;

        }
        else
        {
            Panel2.Visible = true;
        }

    }
   
}