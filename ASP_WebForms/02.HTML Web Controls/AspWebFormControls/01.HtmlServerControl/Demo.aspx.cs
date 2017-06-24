using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.HtmlServerControl
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            Response.Write("Value: <b>" + this.TextField.Value + "</b>");
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {

        }
    }
}