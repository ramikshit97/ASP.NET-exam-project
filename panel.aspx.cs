using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class panel : System.Web.UI.Page
{
    public SqlConnection con;
    public SqlCommand cmd;
    HttpCookie ck;
    SqlDataReader dr;
    public SqlDataReader rdr;
    public SqlCommand scmd;
    SqlCommand ccmd, rcmd;
    SqlDataReader cdr;
    public string rqry, testtype;
    public string qry, sqry, uname;
    public int ans, n = 0, count, marks = 0, totalmarks, qid, c;
    static int mm, ss;//Original hh, mm, ss

    static double TimeAllSecondes = 601;



    protected void Page_Load(object sender, EventArgs e)
    {
        ck = Request.Cookies["cook"];
        if (ck == null) {
            Response.Redirect("userLogin.aspx");
        }
        uname = ck.Values["un"].ToString();
        testtype = System.Convert.ToString(Request.QueryString["testtype"]);
        count = System.Convert.ToInt16(Request.QueryString["count"]);
        marks = System.Convert.ToInt16(Request.QueryString["marks"]);
        if (count == 0)
        {
            count = 1;
        }
        con = new SqlConnection();
        con.Open();

        qry = "select * from question where Subject='" + testtype + "'";
        cmd = new SqlCommand(qry, con);
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            n += 1;
        }
        con.Close();
        if (count <= n)
        {
            Label1.Text = count + " of " + n;
        }
        else
        {
            Label1.Text = "Last ";
        }
        con.Open();
        rqry = "select * from question where Subject='" + testtype + "'order by qid";
        rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
        rdr = rcmd.ExecuteReader();
        c = 1;
        while (rdr.Read())
        {
            if (c != count)
            {
                c = c + 1;
            }
            else
            {
                qid = Convert.ToInt16(rdr.GetValue(0));
                c = c + 1;
            }
        }
        
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        count = count - 1;
        Response.Redirect("panel.aspx?testtype=" + testtype + "&count=" + count);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Close();
        if (count < n)
        {
            if (RadioButton1.Checked == true)
            {
                ans = 1;
            }
            if (RadioButton2.Checked == true)
            {
                ans = 2;
            }
            if (RadioButton3.Checked == true)
            {
                ans = 3;
            }
            if (RadioButton4.Checked == true)
            {
                ans = 4;
            }

            con.Open();
            ccmd = new SqlCommand("select * from question where qid=" + qid + "and answer=" + ans, con);
            cdr = ccmd.ExecuteReader();
            if (cdr.HasRows)
            {
                marks = marks + 1;
            }
            con.Close();
            count = count + 1;
            Response.Redirect("~/panel.aspx?testtype=" + testtype + "&count=" + count + "&marks" + marks);
        }
        else
        {
            Label1.Text = "This is last question";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Close();
        con.Open();
        totalmarks = n;
        string date = DateTime.Now.ToString();
        sqry = "insert into results values('" + uname + "','" + date + "','" + testtype + "','" + marks + "','" + totalmarks + "')";
        scmd = new SqlCommand(sqry, con);
        scmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Success')</script>");
        Response.Redirect("userLogin.aspx");
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        if (TimeAllSecondes > 0)
        {
            TimeAllSecondes = TimeAllSecondes - 1;
        }

        TimeSpan time_Span = TimeSpan.FromSeconds(TimeAllSecondes);
        // hh = time_Span.Hours;
        mm = time_Span.Minutes;
        ss = time_Span.Seconds;

        Label3.Text = "  " + mm + ":" + ss;//Original "  " + hh + ":" + mm + ":" + ss
    }
    
}