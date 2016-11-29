using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class Hostel_Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            roomSource1.SelectCommand = "Select room_no,duration_stay,date from room where user_id='" + TextBox8.Text + "'";
            
           DataSourceSelectArguments data = new DataSourceSelectArguments();
            DataView view = new DataView();
            view = (DataView)roomSource1.Select(data);
           /* TextBox4.Text = view[0].Row["first_name"].ToString();*/
            TextBox9.Text = view[0].Row["duration_stay"].ToString();
            TextBox8.Text = view[0].Row["date"].ToString();
            
        }
    }
}