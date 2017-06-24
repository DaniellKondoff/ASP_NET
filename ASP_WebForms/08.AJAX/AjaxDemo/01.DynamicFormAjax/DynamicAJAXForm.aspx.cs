using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _01.DynamicFormAjax
{
    public partial class DynamicAJAXForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonBeer_CheckedChanged(object sender, EventArgs e)
        {
            this.PanelBeers.Visible = true;
            this.PanelWines.Visible = false;
            this.ShowSelectedDrinks();
            this.LastUpdatePanel.Update();
        }

        protected void RadioButtonWine_CheckedChanged(object sender, EventArgs e)
        {
            this.PanelWines.Visible = true;
            this.PanelBeers.Visible = false;
            this.ShowSelectedDrinks();
            this.LastUpdatePanel.Update();
        }

        protected void CheckBoxListBeers_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ShowSelectedDrinks();
        }

        protected void CheckBoxListWines_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ShowSelectedDrinks();
        }

        private void ShowSelectedDrinks()
        {
            this.LiteralFavoriteDrink.Text = "(none)";
            if (this.RadioButtonBeer.Checked)
            {
                this.LiteralFavoriteDrink.Text = this.RadioButtonBeer.Text;
                this.LiteralSelectedDrinks.Text =
                    ExtractSelectedItemsAsString(this.CheckBoxListBeers);
            }
            else if (this.RadioButtonWine.Checked)
            {
                this.LiteralFavoriteDrink.Text = this.RadioButtonWine.Text;
                this.LiteralSelectedDrinks.Text =
                    ExtractSelectedItemsAsString(this.CheckBoxListWines);
            }

            this.PanelResults.Visible = true;
        }

        private static IList<string> ExtractSelectedItems(ListControl itemsControl)
        {
            var selectedItems = new List<string>();
            for (int i = 0; i < itemsControl.Items.Count; i++)
            {
                ListItem item = itemsControl.Items[i];
                if (item.Selected)
                {
                    selectedItems.Add(item.Text);
                }
            }

            return selectedItems;
        }

        private static string ExtractSelectedItemsAsString(ListControl itemsControl)
        {
            var selectedItems = ExtractSelectedItems(itemsControl);
            var result = "(none)";
            if (selectedItems.Count > 0)
            {
                result = string.Join(", ", selectedItems);
            }

            return result;
        }
    }
}