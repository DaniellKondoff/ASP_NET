using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02.HtmlGenericControl
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.MetaInfo.Attributes["name"] = "description";
            this.MetaInfo.Attributes["content"] =
                "The page was generated on: " + DateTime.Now.ToString();
        }
    }
}