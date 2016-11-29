using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Campus_Services
{
    public partial class Service_AllotedForm : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            servicesource1.InsertParameters["service_alloted_time"].DefaultValue = DropDownList4.SelectedValue;
            servicesource1.InsertParameters["service_alloted_date"].DefaultValue = TextBox4.Text;
            servicesource1.InsertParameters["status"].DefaultValue = DropDownList5.SelectedValue;
            servicesource1.InsertParameters["room_no"].DefaultValue = TextBox6.Text;
            servicesource1.InsertParameters["service_id"].DefaultValue = TextBox7.Text;


            servicesource1.Insert();

            TextBox6.Text = string.Empty;
            TextBox4.Text = string.Empty;
            TextBox7.Text = string.Empty;
        }
    }
}