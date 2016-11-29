using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace University.HR
{
    public partial class JobApplication : System.Web.UI.Page
    {
        string userid;
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnNewUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("../NewJobApplicant.aspx");            
        }

 

    }
}