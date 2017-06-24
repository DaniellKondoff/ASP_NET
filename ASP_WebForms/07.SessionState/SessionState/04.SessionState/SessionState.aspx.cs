using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _04.SessionState
{
    public partial class SessionState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonAddLoad_Click(object sender, EventArgs e)
        {
            Session["Clicks"] = (int)Session["Clicks"] + 1;
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            if (Session["Clicks"] == null)
            {
                Session["Clicks"] = 0;
            }
            LabelPageLoads.Text = Session["Clicks"].ToString();
        }
    }
}