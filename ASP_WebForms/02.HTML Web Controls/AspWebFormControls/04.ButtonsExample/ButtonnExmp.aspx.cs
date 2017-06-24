using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _04.ButtonsExample
{
    public partial class ButtonnExmp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LabelMessage.Text = string.Empty;
        }

        protected void OnBtnClick(object sender, EventArgs e)
        {
            var clickedButtond = sender as IButtonControl;

            if (clickedButtond==null)
            {
                return;
            }

            this.LabelMessage.Text = "Button" + sender + " clicked";
        }

        protected void OnCommand(object sender,CommandEventArgs e)
        {
            this.LabelMessage.Text += "<br/> Command: " + e.CommandName;
        }
    }
}