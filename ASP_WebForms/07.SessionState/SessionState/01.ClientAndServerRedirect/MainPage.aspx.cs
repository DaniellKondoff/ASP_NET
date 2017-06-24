﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.ClientAndServerRedirect
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonServerRedirect_Click(object sender, EventArgs e)
        {
            Page.Server.Transfer("TheNewPage.aspx");
        }

        protected void buttonRedirect_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("TheNewPage.aspx");
        }
    }
}