using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class Hostel_Accomodation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            roomsource.InsertParameters["room_type"].DefaultValue = RadioButtonList1.SelectedValue;
          
            roomsource.Insert();

            TextBox11.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox12.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox13.Text = string.Empty;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox11.Text = string.Empty;
            TextBox10.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox12.Text = string.Empty;
            TextBox3.Text = string.Empty;
            TextBox5.Text = string.Empty;
            TextBox13.Text = string.Empty;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            roomsource.SelectCommand = "Select first_name,last_name,contact_no,email_id from user_info where user_id='" + TextBox11.Text + "'";
            DataSourceSelectArguments data = new DataSourceSelectArguments();
            DataView view = new DataView();
            view = (DataView)roomsource.Select(data);
            TextBox12.Text = view[0].Row["first_name"].ToString();
            TextBox3.Text = view[0].Row["last_name"].ToString();
            TextBox5.Text = view[0].Row["contact_no"].ToString();
            TextBox13.Text = view[0].Row["email_id"].ToString();
        }
    }
}