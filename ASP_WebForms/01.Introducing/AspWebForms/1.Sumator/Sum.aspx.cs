using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1.Sumator
{
    public partial class Sum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                var firstNumber = double.Parse(this.TextBoxFirstNum.Text);
                var secondNumber = double.Parse(this.TextBoxSecondNum.Text);
                var sumResult = firstNumber + secondNumber;
                this.TextBoxSum.Text = sumResult.ToString();
            }
            catch (FormatException ex)
            {

                this.TextBoxSum.Text = ex.Message;
            }

        }
    }
}