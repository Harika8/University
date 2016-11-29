using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class FacultyCourseAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       protected void ProgramSubmitButton_Click(object sender, EventArgs e)
        {
            Faculty_Course_TBL.InsertParameters["fuser_id"].DefaultValue = FacultyIDDDL.SelectedValue;
            Faculty_Course_TBL.InsertParameters["course_id"].DefaultValue = CourseIDDDL.SelectedValue;
            Faculty_Course_TBL.InsertParameters["department_id"].DefaultValue = DeptIDDDList.SelectedValue;

            Faculty_Course_TBL.Insert();
        }

        protected void ProgramClearButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyCourseAssignment.aspx");
        }
    }
}