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
            private DateTime _selectedDate;
            public DateTime SelectedDate
            {
                get
                {
                    return _selectedDate;
                }
            }
            public DateSelectedEventArgs(DateTime selectedDate)
            {
                _selectedDate = selectedDate;
            }

        }
    }
}