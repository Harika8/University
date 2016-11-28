using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class FacultyCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FacultyCreateClearButton_Click(object sender, EventArgs e)
        {
            FacultyNameTB.Text = string.Empty;
            FacultySpecializationTB.Text = string.Empty;
            FacultyEducationTB.Text = string.Empty;
            ContractHoursTB.Text = string.Empty;

        }
    }
}