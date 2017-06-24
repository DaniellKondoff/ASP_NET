using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.DataBindingSimpleDemo
{
    public partial class DataBindingExample : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //BindYesNo
                var answers = new string[] { "Yes", "No" };
                this.DropDownYesNo.DataSource = answers;
                this.DropDownYesNo.DataBind();

                //Towns Binding
                var towns = new[]
                {
                new {ID=1,Name="Sofia"},
                new {ID=2,Name="Plovdiv"},
                new {ID=3,Name="Varna"}
                };

                this.ListBoxTowns.DataSource = towns;
                this.ListBoxTowns.DataBind();
            }
        }

        protected void ListBoxTowns_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.LabelSelectedTown.Text = this.ListBoxTowns.SelectedValue;
        }

        protected void DropDownYesNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.LabelSelectedYesNo.Text = this.DropDownYesNo.SelectedValue;
        }
    }
}