using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Registrar_Office
{
    public partial class UniversityApplication : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void SubButton_Click(object sender, EventArgs e)
        {
            SqlStudentAppli.InsertParameters["suser_id"].DefaultValue = SuseridDropDown.SelectedValue;
            SqlStudentAppli.InsertParameters["degree"].DefaultValue = DegreeRadioButton.SelectedValue;
            SqlStudentAppli.InsertParameters["major"].DefaultValue = MajorDropDown.SelectedValue;
            SqlStudentAppli.InsertParameters["gre_score"].DefaultValue = GRETextBox.Text;
            SqlStudentAppli.InsertParameters["gre_test_date"].DefaultValue = GDATETextBox.Text;
            SqlStudentAppli.InsertParameters["ielts_score"].DefaultValue = IELTSTextBox.Text;
            SqlStudentAppli.InsertParameters["ielts_test_date"].DefaultValue = IDATETextBox.Text;
            SqlStudentAppli.InsertParameters["toefl"].DefaultValue = TOEFLTextBox.Text;
            SqlStudentAppli.InsertParameters["toefl_test_date"].DefaultValue = TDATETextBox.Text;
            SqlStudentAppli.InsertParameters["toefl_test_date"].DefaultValue = TDATETextBox.Text;
            SqlStudentAppli.InsertParameters["admission_status"].DefaultValue = DropDownList1.SelectedValue;
            SqlStudentAppli.Insert();
            
            SqlEdu.InsertParameters["user_id"].DefaultValue = SuseridDropDown.SelectedValue;
            SqlEdu.InsertParameters["school_name"].DefaultValue = Schoolname1TextBox.Text;
            SqlEdu.InsertParameters["degree"].DefaultValue = DegreeRadioButton.SelectedValue;
            SqlEdu.InsertParameters["major"].DefaultValue = MajorDropDown.SelectedValue;
            SqlEdu.InsertParameters["gpa"].DefaultValue = GPA1TextBox.Text;
            SqlEdu.InsertParameters["graduated_year"].DefaultValue = Graddate1TextBox.Text;
            SqlEdu.Insert();
            
        }
    }
}