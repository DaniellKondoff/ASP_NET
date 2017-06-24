using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTML_Escaping
{
    public partial class DemoEscaping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonJustShowText_Click(object sender, EventArgs e)
        {
            string enteredText = TextBoxSampleText.Text;
            LabelEnteredText.Text = enteredText;
            LiteralEnteredText.Text = enteredText;
        }

        protected void ButtonShowHtmlEncoded_Click(object sender, EventArgs e)
        {
            string enteredText = TextBoxSampleText.Text;
            LabelEnteredText.Text = Server.HtmlEncode(enteredText);
            LiteralEnteredText.Text = Server.HtmlEncode(enteredText);
        }
    }
}