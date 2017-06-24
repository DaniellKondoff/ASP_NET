using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _06.ListControls
{
    public partial class ListControlDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListBoxTowns_SelectedIndexChanged(object sender, EventArgs e)
        {
            Showresult();
        }

        protected void DropDownListTransport_SelectedIndexChanged(object sender, EventArgs e)
        {
            Showresult();
        }

        protected void Showresult()
        {
            this.LiteralResult.Text = "Selected Town: " + this.ListBoxTowns.SelectedValue + ";Selected transport: " + this.DropDownListTransport.SelectedValue;
        }
    }
}