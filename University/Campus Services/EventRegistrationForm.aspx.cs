using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class EventRegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            eventsource_info.InsertParameters["event_title"].DefaultValue = TextBox7.Text.ToUpper().Trim();
            eventsource_info.InsertParameters["multi_day_event"].DefaultValue = RadioButtonList1.SelectedValue;
            eventsource_info.InsertParameters["event_start_date"].DefaultValue = TextBox10.Text.ToUpper().Trim();
            eventsource_info.InsertParameters["event_start_time"].DefaultValue = TextBox11.SelectedValue;
            eventsource_info.InsertParameters["event_end_date"].DefaultValue = TextBox12.Text.ToUpper().Trim();
            eventsource_info.InsertParameters["event_end_time"].DefaultValue = TextBox24.Text.ToUpper().Trim();
            eventsource_info.InsertParameters["event_place"].DefaultValue = CheckBoxList1.SelectedValue();
            eventsource_info.InsertParameters["event_capacity"].DefaultValue = TextBox15.Text.ToUpper().Trim();
            eventsource_info.InsertParameters["audio_visual"].DefaultValue = RadioButtonList2.Text.ToUpper().Trim();


            TextBox7.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox11.Text = string.Empty;

            TextBox12.Text = string.Empty;
            TextBox24.Text = string.Empty;
            TextBox15.Text = string.Empty;
           
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox7.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox11.Text = string.Empty;

            TextBox12.Text = string.Empty;
            TextBox24.Text = string.Empty;
            TextBox15.Text = string.Empty;
        }
    }
}