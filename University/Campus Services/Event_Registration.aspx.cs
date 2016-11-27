using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            eventsource.InsertParameters["event_title"].DefaultValue = TextBox7.Text.ToUpper().Trim();
            eventsource.InsertParameters["event_start_date"].DefaultValue = TextBox10.Text.ToUpper().Trim();
            eventsource.InsertParameters["event_end_date"].DefaultValue = TextBox12.Text.ToUpper().Trim();
            eventsource.InsertParameters["evnt_end_time"].DefaultValue = TextBox24..Text.ToUpper().Trim(); 
            eventsource.InsertParameters["evnt_start_time"].DefaultValue = TextBox11.Text.ToUpper().Trim();
            eventsource.InsertParameters["event_place"].DefaultValue = CheckBoxList1.SelectedValue;
             eventsource.InsertParameters["event_capacity"].DefaultValue = TextBox15.Text.Trim();
            eventsource.InsertParameters["multi_day_event"].DefaultValue = RadioButtonList1.SelectedValue;
            eventsource.InsertParameters["audio_visual"].DefaultValue = RadioButtonList2.SelectedValue;


            eventsource.Insert();

            TextBox7.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox12.Text = string.Empty;

            TextBox24.Text = string.Empty;
            TextBox11.Text = string.Empty;
            TextBox5.Text = string.Empty;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox7.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox12.Text = string.Empty;

            TextBox24.Text = string.Empty;
            TextBox11.Text = string.Empty;
            TextBox5.Text = string.Empty;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            eventsource.SelectCommand = "Select first_name,last_name,email_id,contact_no from user_info where user_id=" +TextBox25.ToString()+ "";
            DataSourceSelectArguments data = new DataSourceSelectArguments();
            DataView view = new DataView();
            TextBox2.Text = view[0].Row["first_name"].ToString();
            TextBox3.Text = view[0].Row["last_name"].ToString();
            TextBox5.Text = view[0].Row["contact_no"].ToString();
            TextBox6.Text = view[0].Row["email_id"].ToString();


        }
    }
    }
}