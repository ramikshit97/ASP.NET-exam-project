using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class setPaper : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlCommand rcmd;
    SqlDataReader rdr;
    SqlCommand qcmd;
    SqlDataReader qdr;
    HttpCookie ad;

    string qry; string nqry; string test;
    int qid; int ans; int flg = 1;


    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (RadioButton1.Checked)
            ans = 1;
        if (RadioButton2.Checked)
            ans = 2;
        if (RadioButton3.Checked)
            ans = 3;
        if (RadioButton4.Checked)
            ans = 4;

        if (DropDownList1.Visible)
        {
            test = DropDownList1.Text;
        }
        else 
        {
            if (TextBox1.Text == "")
            {
                Label1.Text = "Enter subject";
                flg = 0;
            }
            else {
                con.Open();
                nqry = "select * from question where Subject='" + TextBox1.Text + "'";
                rcmd = new SqlCommand(nqry, con);
                rdr = rcmd.ExecuteReader();
                if (rdr.HasRows) {
                    Label1.Text = "Subject present";
                    flg = 0;
                }
                test = TextBox1.Text;
                con.Close();
            }
        }

        if (TextBox2.Text == "") {
            Label2.Text = "Enter Question";
            flg = 0;
        }
        if (TextBox3.Text == "") {
            Label3.Text = "Give Option";
            flg = 0;
        }
        if (TextBox4.Text == "")
        {
            Label4.Text = "Give Option";
            flg = 0;
        }
        if (TextBox5.Text == "")
        {
            Label5.Text = "Give Option";
            flg = 0;
        }
        if (TextBox6.Text == "")
        {
            Label6.Text = "Give Option";
            flg = 0;
        }

        if (flg != 0) {
            con.Open();
            qcmd = new SqlCommand("select MAX(qid) from question", con);
            qdr = qcmd.ExecuteReader();
            qdr.Read();

            if (qdr.IsDBNull(0))
            {
                qid = 1;
            }
            else {
                qid = Convert.ToInt16(qdr.GetValue(0)) + 1;
            }
            con.Close();

            con.Open();
            qry = "insert into question values(" + qid + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "'," + ans + ",'" + test + "')";
            cmd = new SqlCommand(qry, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Label7.Text = "Scam";
            Response.Redirect("setPaper.aspx");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.Visible)
        {
            TextBox1.Visible = true;
            DropDownList1.Visible = false;
            Button1.Text = "OLD";
        }
        
        else {
            TextBox1.Visible = false;
            DropDownList1.Visible = true;
            Button1.Text = "NEW";
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("preview.aspx");
    }
}
