using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2.Escaping
{
    public partial class EscapingHtml : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string inputText = this.TextBoxText.Text;
            this.TextBoxResult.Text = Server.HtmlEncode(inputText);
        }
    }
}