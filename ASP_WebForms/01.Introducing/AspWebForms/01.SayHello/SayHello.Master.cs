using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.SayHello
{
    public partial class SayHello : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string currentName = this.TextBoxName.Text.ToString();
            this.LiteralResult.Text = $"Hello, {currentName}";
        }
    }
}