using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace University.Registrar_Office
{
    public partial class Course_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton6_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void ApplicationButton_Click(object sender, EventArgs e)
        {
            DateTime dt = DateTime.Now;
            Sqlsectionregistration.InsertParameters["suser_id"].DefaultValue = StudentId.Text;
            Sqlsectionregistration.InsertParameters["section_id"].DefaultValue = SectionDropDown.SelectedValue;
            SqlSection.SelectCommand = "Select * from section where section_id= '" + SectionDropDown.SelectedValue + "'";
            DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
            DataView dvView = new DataView();
            dvView = (DataView)SqlSection.Select(dsArguments);
            string strcurrentavailability = dvView[0].Row["section_availabilty"].ToString();
            int currentavailability = 0;
            currentavailability = Convert.ToInt32(strcurrentavailability);
            if (currentavailability > 0)
            {
                Sqlsectionregistration.InsertParameters["registration_status"].DefaultValue ="Y";
                int newcurrentavailability = currentavailability - 1;
                SqlSectionUpdate.UpdateParameters["section_availabilty"].DefaultValue = Convert.ToString(newcurrentavailability);
                SqlSectionUpdate.UpdateParameters["original_section_id"].DefaultValue = SectionDropDown.SelectedValue;
                SqlSectionUpdate.UpdateParameters["original_section_availabilty"].DefaultValue = Convert.ToString(currentavailability);
                SqlSectionUpdate.Update();
                RegistrationStatusTextBox.Text = "Registered" + dt.ToString();
            }

            if (currentavailability <= 0)
            {
                Sqlsectionregistration.InsertParameters["registration_status"].DefaultValue ="N";
            }
            Sqlsectionregistration.InsertParameters["registration_date"].DefaultValue = dt.ToString();

            Sqlsectionregistration.Insert();
        }
    }
}