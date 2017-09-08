using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebformCalender.Models
{
    public class CalenderModels
    {
        public class DateSelectedEventArgs : EventArgs
        {
            private DateTime selectedDate;

            public DateTime SelectedDate
            {
                get { return selectedDate; }
                set { selectedDate = value; }
            }

            public DateSelectedEventArgs(DateTime selectedDate)
            {
                this.selectedDate = selectedDate;
            }
        }

        public delegate void DateSelectedEventHandler(object sender, DateSelectedEventArgs e);
    }
}