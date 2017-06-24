using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1.RandomNumberGenerator
{
    public partial class RndNumberGen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_ServerClick(object sender, EventArgs e)
        {
            try
            {
                int minNum = int.Parse(this.MinNumber.Value);
                int maxNum = int.Parse(this.MaxNumber.Value);
                Random rnd = new Random();
                int result = rnd.Next(minNum, maxNum + 1);
                this.Result.InnerText = result.ToString();
            }
            catch (Exception ex)
            {

                this.Result.InnerText = ex.Message;
            }

        }
    }
}