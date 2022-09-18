using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class reports : System.Web.UI.Page
{
    public SqlConnection con;
    public SqlCommand cmd;
    public SqlDataReader dr;
    string qry;
    string cqry;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.Open();

        qry = "select * from results";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();
    }
}