using System;
using System.Data;
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

        protected void CourseIDDDL_SelectedIndexChanged(object sender, EventArgs e)
        {

           /* CourseIDs_DeptIDbased_DataSource.SelectCommand = "select distinct Course_Name from course where course_id '" + CourseIDDDL.SelectedValue + "'";
            DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
            DataView dvView = new DataView();
            dvView = (DataView)CourseIDs_DeptIDbased_DataSource.Select(dsArguments);
            CourseNameTB.Text = dvView[0].Row["Course_Name"].ToString();*/
            
            CourseNameTB.Text = "select Course_Name from course where course_id = @courseDDList.SelectedValue";
        }

        protected void FacultyIDDDL_SelectedIndexChanged(object sender, EventArgs e)
        {
             FacultyNameTB.Text = "select first_name from user_info where user_id = @FacultyIDDDL.SelectedValue";
        }

        protected void FacCrsSubmitBtn_Click(object sender, EventArgs e)
        {
            Faculty_Course_TBL.InsertParameters["fuser_id"].DefaultValue = FacultyIDDDL.SelectedValue;
            Faculty_Course_TBL.InsertParameters["course_id"].DefaultValue = CourseIDDDL.SelectedValue;
            Faculty_Course_TBL.InsertParameters["department_id"].DefaultValue = DeptIDDDList.SelectedValue;
            Faculty_Course_TBL.Insert();
        }

        protected void FacCrsResetBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyCourseAssignment.aspx");
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AssignFacultyToCourse1Management.aspx");
        }
    }
}