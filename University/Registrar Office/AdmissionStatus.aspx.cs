using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Registrar_Office
{
    public partial class Student_Admitted_or_rejected_form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlAdmission.InsertParameters["admission_status"].DefaultValue = RadioButtonList1.SelectedValue;
            SqlAdmission.Insert();

        }
    }
}