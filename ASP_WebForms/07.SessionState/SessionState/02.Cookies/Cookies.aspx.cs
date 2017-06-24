using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02.Cookies
{
    public partial class Cookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonLogMe_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = new HttpCookie("UserName", "You are logged in!");
            cookie.Expires = DateTime.Now.AddMinutes(1);

            Response.Cookies.Add(cookie);
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserName"];
            if (cookie!=null)
            {
                string text = "Cookie was sent hy the Web browser.";
                Response.Write(text);

                LabelLoggedIn.Text = cookie.Value;
            }
        }
    }
}