using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _03.ApplicationState
{
    public partial class AppState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonAddLoad_Click(object sender, EventArgs e)
        {
            Application.Lock();
            Application["User"] = (int)Application["User"] + 1;
            Application.UnLock();
        }

        protected override void OnPreRender(EventArgs e)
        {
            base.OnPreRender(e);

            Application.Lock();
            if (Application["User"]==null)
            {
                Application["User"] = 0;
            }
            Application.UnLock();
            labelLoads.Text = Application["User"].ToString();
        }
    }
}