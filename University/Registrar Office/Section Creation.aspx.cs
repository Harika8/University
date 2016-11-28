using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Registrar_Office
{
    public partial class Section_Creation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SectionSubmitButton_Click(object sender, EventArgs e)
        {
            SqlSection.InsertParameters["section_id"].DefaultValue = SectionIDTxt.Text;
            SqlSection.InsertParameters["course_id"].DefaultValue = selCourse.SelectedValue;
            SqlSection.InsertParameters["fuser_id"].DefaultValue = selFaculty.SelectedValue;
            SqlSection.InsertParameters["section_availabilty"].DefaultValue = SectionAvailabilityTxt.Text;
            SqlSection.InsertParameters["credits"].DefaultValue = CreditsTxt.Text;
            SqlSection.InsertParameters["semester"].DefaultValue = SemesterTxt.Text;
            SqlSection.Insert();
        }

        
    }
}