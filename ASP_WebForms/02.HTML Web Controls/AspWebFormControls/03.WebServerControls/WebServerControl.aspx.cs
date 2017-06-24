using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _03.WebServerControls
{
    public partial class WebServerControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            this.LabelResult.Text = "You entered: <b>" + this.TextBoxInput.Text + "</b>.<br/>";
            this.LabelResult.Visible = true;
        }
    }
}