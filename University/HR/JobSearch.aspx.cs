using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace University.HR
{
    public partial class JobSearch : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void lnkView_Click(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            GridViewRow row = btn.NamingContainer as GridViewRow;
            string vacancyid = gvSearchResults.DataKeys[row.RowIndex].Values[0].ToString();
            Session["vacancyId"] = vacancyid;
            Response.Redirect("JobDetails.aspx");
        }

        protected void lnkApply_Click(object sender, EventArgs e)
        {
            LinkButton btn = sender as LinkButton;
            GridViewRow row = btn.NamingContainer as GridViewRow;
            string vacancyid = gvSearchResults.DataKeys[row.RowIndex].Values[0].ToString();
            Session["vacancyId"] = vacancyid;
            Response.Redirect("JobApplication.aspx");

        }

        protected void btnClearsearch_Click(object sender, EventArgs e)
        {
        

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {

        }
    }
}