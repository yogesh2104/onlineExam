﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Session.Abandon();
        Response.Redirect("Default.aspx");

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            lnkLogin.Text = "Welcome " + Session["Username"];
            lnkLogout.Visible = true;
            lnkLogin.Enabled = false;
        }
        else
        {
            lnkLogin.Text = "Login";
            lnkLogin.Enabled = true;
            lnkLogout.Visible = false;


        }
    }
}
