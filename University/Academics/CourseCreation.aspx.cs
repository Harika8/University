using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class CourseCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CourseClearButton_Click(object sender, EventArgs e)
        {
            CourseNameTB.Text = string.Empty;
            CourseNumberTB.Text = string.Empty;
            CourseDescriptionTB.Text = string.Empty;
            Response.Redirect("CourseCreation.aspx");
        }

        protected void CourseSubmitButton_Click(object sender, EventArgs e)
        {
            //CourseInsertSqlDataSource.InsertParameters["course_id"].DefaultValue = CourseNumberTB.Text.ToUpper().Trim();--AutoIncrement Field
            CourseInsertSqlDataSource.InsertParameters["course_name"].DefaultValue = CourseNameTB.Text.ToUpper().Trim();
            CourseInsertSqlDataSource.InsertParameters["Effective_start_date"].DefaultValue = CourseEffectiveDateTB.Text;
            CourseInsertSqlDataSource.InsertParameters["course_description"].DefaultValue = CourseDescriptionTB.Text.Trim();
            CourseInsertSqlDataSource.InsertParameters["department_id"].DefaultValue = DepartmentIDDDList.Text;
            CourseInsertSqlDataSource.InsertParameters["course_level"].DefaultValue = CourseLevelDDList.Text.ToUpper().Trim();
            CourseInsertSqlDataSource.InsertParameters["program_id"].DefaultValue = ProgramIDDDL.Text;
            CourseInsertSqlDataSource.Insert();
            //eventsource.SelectCommand = "Select first_name,last_name,email_id,contact_no from user_info where user_id='" + TextBox25.Text + "'";
        }

        
    }
}