using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static WebformCalender.Models.CalenderModels;

namespace WebformCalender.ReusableViews
{
    public partial class FullCalenderControl : System.Web.UI.UserControl
    {
        private string displayText;
        public string DisplayText {
            get
            {
                return displayText;
            }
            set
            {
                lblDisplayText.Text = value;
            }
        }
        public DateTime SelectedDate
        {
            get
            {
                return CalDate.SelectedDate;
            }
        }
        private bool disableFutureDates;
        public bool DisableFutureDates
        {
            set
            {
                disableFutureDates = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CalDate.SelectedDate = DateTime.Now;
            }
        }
        protected void imgBtnCalender_Click(object sender, ImageClickEventArgs e)
        {
            CalDate.Visible = !CalDate.Visible;
        }

        protected void CalDate_SelectionChanged(object sender, EventArgs e)
        {
            var dateSelectedEventData = new DateSelectedEventArgs(CalDate.SelectedDate);
            txtDate.Text = CalDate.SelectedDate.ToString("MM-dd-yy");
            CalDate.Visible = false;
        }

        protected void CalDate_DayRender(object sender, DayRenderEventArgs e)
        {
            
            if (disableFutureDates & e.Day.Date > DateTime.Now)
            {
                e.Day.IsSelectable = false;
            }
        }

        public delegate void DateSelectedEventHandler(object sender, DateSelectedEventArgs e);
    }
}