using System;
using System.Web.UI;

namespace WebformCalender.Views
{
    public partial class UserControlDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void imgBtnCalender_Click(object sender, ImageClickEventArgs e)
        {
            CalDate.Visible = !CalDate.Visible;
        }

        protected void CalDate_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = CalDate.SelectedDate.ToString("MM-dd-yy");
            CalDate.Visible = false;
        }
    }
}