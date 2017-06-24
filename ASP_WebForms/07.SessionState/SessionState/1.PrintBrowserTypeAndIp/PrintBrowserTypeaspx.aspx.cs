using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1.PrintBrowserTypeAndIp
{
    public partial class PrintBrowserTypeaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label.Text = Request.Browser.Type + "<br/>";
            Label.Text += Environment.NewLine;
            Label.Text += Request.UserHostAddress;
        }
    }
}