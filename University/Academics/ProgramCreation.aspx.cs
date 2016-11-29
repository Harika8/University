using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class ProgramCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ProgramSubmitButton_Click(object sender, EventArgs e)
        {
            //int prgmid;
            //prgmid = Convert.ToInt16(ProgramCodeTB.Text);
            
            sqlprogram.InsertParameters["program_name"].DefaultValue = ProgramNameTB.Text.ToUpper().Trim();
            sqlprogram.InsertParameters["program_id"].DefaultValue = (string)ProgramCodeTB.Text;
            sqlprogram.InsertParameters["department_id"].DefaultValue = DepartmentIDDDList.SelectedValue;
            sqlprogram.InsertParameters["course_level"].DefaultValue = CourseLevelDDList.SelectedValue;
            sqlprogram.Insert();
        }

        protected void ProgramClearButton_Click(object sender, EventArgs e)
        {
            ProgramNameTB.Text = string.Empty;
            ProgramCodeTB.Text = string.Empty;
            Response.Redirect("ProgramCreation.aspx");
        }

        
    }
}