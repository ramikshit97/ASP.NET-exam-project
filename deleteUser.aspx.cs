using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class deleteUser : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string qry;
    HttpCookie ad;
    

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        qry = "delete from userLogin where username='" + DropDownList1.Text +"'";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        Label2.Text = "Deleted";
        Response.Redirect("deleteUser.aspx");
       // Label2.Text = "Deleted";
    }
    
}