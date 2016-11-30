using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace University.FinancialAid
{
    public partial class Application_Status_FA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {

            String url = Request.Url.AbsoluteUri;

            string[] arr = url.Split('=');


            SqlDataSource1.SelectCommand = "select * from financial_aid_application where suser_id ='" + arr[1] + "'";
            SqlDataSource1.DataBind();
            GridView1.DataBind();



        }
    }
}