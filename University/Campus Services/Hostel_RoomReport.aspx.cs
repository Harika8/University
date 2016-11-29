using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class Hostel_RoomReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            roomSource2.SelectCommand = "Select * from room where date between" + TextBox1.Text + " and '" + TextBox2.Text + "' and room_no ='" + DropDownList2.SelectedValue + "'";
            DataSourceSelectArguments data = new DataSourceSelectArguments();
            GridView view = new GridView();
            view = (GridView)roomSource2.Select(data);
        }
    }
}