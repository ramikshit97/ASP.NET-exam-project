﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addUser.aspx");
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("deleteUser.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("setPaper.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("preview.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("deletepaper.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("report1.aspx");
    }
}