using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace University.Registrar_Office
{
    public partial class Course_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    CourseDropdown.AppendDataBoundItems = true;
            //    SqlCourse.SelectCommand = "select course_name,course_id from course";
            //    CourseDropdown.DataTextField = "course_name";
            //    CourseDropdown.DataValueField = "course_id";
            //    CourseDropdown.DataBind();
            //}
            //SectionDropDown.Items.Clear();
            //SectionDropDown.Items.Add(new ListItem("--Select Section--", ""));
        }

        protected void ApplicationButton_Click(object sender, EventArgs e)
        {
           // try { 
            DateTime dt = DateTime.Now;
            
            SqlSection.SelectCommand = "Select * from section where section_id= '" + SectionDropDown.SelectedValue + "'";
            DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
            DataView dvView = new DataView();
            dvView = (DataView)SqlSection.Select(dsArguments);
            string strcurrentavailability = dvView[0].Row["section_availabilty"].ToString();
            int currentavailability = 0;
            currentavailability = Convert.ToInt32(strcurrentavailability);
            String index = RegordropRadioButton.SelectedValue;
            if (currentavailability > 0)
            {
                int newcurrentavailability = 0;
                if (index.Equals("0"))
                {
                    Sqlsectionregistration.InsertParameters["suser_id"].DefaultValue = StudentId.Text;
                    Sqlsectionregistration.InsertParameters["section_id"].DefaultValue = SectionDropDown.SelectedValue;
                    Sqlsectionregistration.InsertParameters["registration_status"].DefaultValue = "Y";
                    Sqlsectionregistration.InsertParameters["registration_date"].DefaultValue = dt.ToString();
                    Sqlsectionregistration.Insert();
                    newcurrentavailability = currentavailability - 1;
                    string message = "Student is successfully registered for the section.";
                    string script = "window.onload = function(){ alert('";
                    script += message;
                    script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                    SqlSectionUpdate.UpdateParameters["section_availabilty"].DefaultValue = Convert.ToString(newcurrentavailability);
                    SqlSectionUpdate.UpdateParameters["original_section_id"].DefaultValue = SectionDropDown.SelectedValue;
                    SqlSectionUpdate.UpdateParameters["original_section_availabilty"].DefaultValue = Convert.ToString(currentavailability);
                    SqlSectionUpdate.Update();
                    RegistrationStatusLabel.Text = "Registered Successfully" + dt.ToString();
                    SqlGrade.InsertParameters["suser_id"].DefaultValue = StudentId.Text;
                    SqlGrade.InsertParameters["section_id"].DefaultValue = SectionDropDown.SelectedValue;
                    SqlGrade.Insert();

                }
                else if (index.Equals("1"))
                {
                    Sqlsectionregistration.DeleteParameters["original_suser_id"].DefaultValue = StudentId.Text;
                    Sqlsectionregistration.DeleteParameters["Original_section_id"].DefaultValue = SectionDropDown.SelectedValue;
                    Sqlsectionregistration.Delete();
                    newcurrentavailability = currentavailability + 1;
                    SqlSectionUpdate.UpdateParameters["section_availabilty"].DefaultValue = Convert.ToString(newcurrentavailability);
                    SqlSectionUpdate.UpdateParameters["original_section_id"].DefaultValue = SectionDropDown.SelectedValue;
                    SqlSectionUpdate.UpdateParameters["original_section_availabilty"].DefaultValue = Convert.ToString(currentavailability);
                    SqlSectionUpdate.Update();
                    string message = "Student is successfully section dropped.";
                    string script = "window.onload = function(){ alert('";
                    script += message;
                    script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                 }

               

            }

            if (currentavailability <= 0)
            {
                Sqlsectionregistration.InsertParameters["registration_status"].DefaultValue = "N";
                RegistrationStatusLabel.Text = "No Availability";
                string message = "Seats are not available for the section.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            

            
          // }
            //catch (Exception ex)
            //{
             //   throw new ApplicationException("Sorry for the inconvenience", ex);
            //}
        }


        //protected void course_changed(object sender, EventArgs e)
        //{
        //    try {
        //        SectionDropDown.Items.Clear();

        //        SectionDropDown.AppendDataBoundItems = true;
        //        SqlSection.SelectCommand = "select section_id from section as s " +
        //                           "where s.course_id = '" + CourseDropdown.SelectedValue + "'";
        //        SectionDropDown.DataTextField = "section_id";
        //        SectionDropDown.DataValueField = "section_id";
        //        SectionDropDown.DataBind();

        //    }
        //    catch(Exception ex)
        //    {
        //        throw new ApplicationException("Sorry for the inconvenience",ex);
        //    }
        //}

        protected void SemDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            /*try
            {
                CourseDropdown.Items.Clear();
                CourseDropdown.AppendDataBoundItems = true;
                SqlSection.SelectCommand = "select c.course_name,c.course_id from course as c,section as s " +
                                   "where s.semester = '" + SemDropdown.SelectedValue + "' and s.course_id = c.course_id";
                CourseDropdown.DataTextField = "course_name";
                CourseDropdown.DataValueField = "course_id";
                CourseDropdown.DataBind();
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Sorry for the inconvenience", ex);
            }*/
        }

        protected void SqlGrade_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}