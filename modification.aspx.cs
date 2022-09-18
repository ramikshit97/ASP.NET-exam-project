using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class modification : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    string qry;
    string cqry;

    public SqlCommand rcmd;
    public SqlDataReader rdr;
    public string rqry;
    Int16 ans;

    public string settype;
    int qid;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.Open();
        settype = System.Convert.ToString(Request.QueryString["settype"]);
        qid = System.Convert.ToInt16(Request.QueryString["qid"]);
        rqry = "select * from question where qid=" + qid;
        rcmd = new SqlCommand(rqry, con);
        rdr = rcmd.ExecuteReader();

        while (rdr.Read()) {
            TextBox2.Text = Convert.ToString(rdr.GetValue(1));
            TextBox3.Text = Convert.ToString(rdr.GetValue(2));
            TextBox4.Text = Convert.ToString(rdr.GetValue(3));
            TextBox5.Text = Convert.ToString(rdr.GetValue(4));
            TextBox6.Text = Convert.ToString(rdr.GetValue(5));
            ans = Convert.ToInt16(rdr.GetValue(6));
            
           if (ans == 1) {
               RadioButton1.Checked=true;       
               RadioButton2.Checked=false;
               RadioButton3.Checked=false;
               RadioButton4.Checked=false;
           }
           if (ans == 2)
           {
               RadioButton1.Checked=false;       
               RadioButton2.Checked=true;
               RadioButton3.Checked=false;
               RadioButton4.Checked=false;

           }
           if (ans == 3)
           {
               RadioButton1.Checked=false;       
               RadioButton2.Checked=false;
               RadioButton3.Checked=true;
               RadioButton4.Checked=false;

           }
           if (ans == 4)
           {
               RadioButton1.Checked=false;       
               RadioButton2.Checked=false;
               RadioButton3.Checked=false;
               RadioButton4.Checked=true;

           }
        }
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked==true)
            ans = 1;
        if (RadioButton2.Checked==true)
            ans = 2;
        if (RadioButton3.Checked==true)
            ans = 3;
        if (RadioButton4.Checked==true)
            ans = 4;
        con.Open();
        qry = "update question set choiced='" + TextBox6.Text + "'where qid=" + qid;
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        qry = "delete from question where qid=" + qid;
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("preview.aspx?settype" + settype);
    }
}