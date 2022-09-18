using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class deletepaper : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string qry;
    string cqry;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.Open();

        qry = "delete from question where Subject='" + DropDownList2.SelectedValue +"'";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("deletepaper.aspx");
    }
}