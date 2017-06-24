using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace _4.StudentsAndCourses
{
    public partial class StudentsCourses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            HtmlGenericControl wrapper = new HtmlGenericControl("div");

            HtmlGenericControl heading = new HtmlGenericControl("h1");
            heading.InnerText = "Student registration Result";
            wrapper.Controls.Add(heading);

            wrapper.Controls.Add(new HtmlGenericControl("div")
            {
                InnerText=$"Student name: {this.TextBoxFirstName.Text} {this.TextBoxLastName.Text}"
            });

            wrapper.Controls.Add(new HtmlGenericControl("div")
            {
                InnerText = $"Student Faculty Number: {this.TextBoxFacNumber.Text}"
            });

            wrapper.Controls.Add(new HtmlGenericControl("p")
            {
                InnerText=$"University: {this.DropDownUniversity.SelectedValue}"
            });

            wrapper.Controls.Add(new HtmlGenericControl("p")
            {
                InnerText = $"Speciality: {this.DropDownSpeciality.SelectedValue}"
            });

            List<string> courese = new List<string>();
            for (int i = 0; i < this.ListBoxCourses.Items.Count; i++)
            {
                if (this.ListBoxCourses.Items[i].Selected)
                {
                    courese.Add(this.ListBoxCourses.Items[i].Text);
                }
            }
            wrapper.Controls.Add(new HtmlGenericControl("p")
            {
                InnerText = $"Courses: {string.Join(",",courese)}"
            });

            Page.Controls.Add(wrapper);
        }
    }
}