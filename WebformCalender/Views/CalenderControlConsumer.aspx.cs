using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebformCalender.Views
{
    public partial class CalenderControlConsumer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnGetDate_Click(object sender, EventArgs e)
        {
            lblSelectedDate.Text = cusCalender.SelectedDate.ToString();
            
        }
        
    }
}