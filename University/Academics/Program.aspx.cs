using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.Academics
{
    public partial class Department : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ProgramSubmitButton_Click(object sender, EventArgs e)
        {
            SqlUser_info.InsertParameters["first_name"].DefaultValue = ProgramNameTB.Text.ToUpper().Trim();
        }
    }
}