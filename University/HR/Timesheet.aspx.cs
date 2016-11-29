using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace University.HR
{
    public partial class Timesheet : System.Web.UI.Page
    {
        /* variable declaration*/
        string v_payfrequency;
        int v_payint;
        String v_salaryperhour;
        int v_grosspay;
        int v_deducations;
        int v_netpay;
         




        protected void Page_Load(object sender, EventArgs e)
        {
            PayRollPanel.Visible = false;
            WrknPayPanel.Visible = false;
        }
        protected void SearchBtn_Click(object sender, EventArgs e)
        {


            SqlData.SelectCommand = "select a.euser_id,  a.salaryperhour, a.pay_frequency , b.first_name  from employee a , user_info b where a.euser_id = '" + TextBox1.Text+"' and  b.user_id = a.euser_id";
            DataSourceSelectArguments dsArguments = new DataSourceSelectArguments();
            DataView dvView = new DataView();
            dvView = (DataView)SqlData.Select(dsArguments);


            EmpNameTxtBox.Text = dvView[0].Row["first_name"].ToString();
            v_payfrequency = dvView[0].Row["pay_frequency"].ToString();
            v_salaryperhour = dvView[0].Row["salaryperhour"].ToString();
            
            
            if (v_payfrequency.StartsWith("MON") == true)
            {
                v_payint = 1;
            }
            else
            {
                v_payint = 2;
            }

            if (v_payint ==1)
            {
                WrknPayPanel.Visible = true;
                BiwktimeshtTable.Visible = false;
                MonTimeshtTable.Visible = true;
            }
            else
            {
                WrknPayPanel.Visible = true;
                BiwktimeshtTable.Visible = true;
                MonTimeshtTable.Visible = false;
            }
                  


        }



        protected void TimesheetBtn_Click(object sender, EventArgs e)
        {
            PayRollPanel.Visible = false;

            if (v_payint == 1)
            {
                WrknPayPanel.Visible = true;
                BiwktimeshtTable.Visible = false;
                MonTimeshtTable.Visible = true;
            }
            else
            {
                WrknPayPanel.Visible = true;
                BiwktimeshtTable.Visible = true;
                MonTimeshtTable.Visible = false;
            }
        }

        protected void Payrollbtn_Click(object sender, EventArgs e)
        {
            WrknPayPanel.Visible = false;
            PayRollPanel.Visible = true;
        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {

            

          int  v_totalHours;
           


            if (v_payint == 1)
            {

                v_totalHours = Convert.ToInt32(week1txtbox.Text) + Convert.ToInt32(week2txtbox.Text) + Convert.ToInt32(week3txtbox.Text) + Convert.ToInt32(week4txtbox.Text);
                
             montotalhrs.Text = v_totalHours.ToString();
            }
            else
            {
                
                v_totalHours = Convert.ToInt32(week1txtboxbw.Text) + Convert.ToInt32(weeek2textboxbw.Text);
                totalbwhrs.Text= v_totalHours.ToString();
            }
            SqlTimesheet.InsertParameters["euser_id"].DefaultValue = TextBox1.Text.ToUpper().Trim();
            SqlTimesheet.InsertParameters["total_hours"].DefaultValue = v_totalHours.ToString();


            v_grosspay = v_totalHours * Convert.ToInt32(v_salaryperhour);
            v_deducations = v_grosspay - (v_grosspay * 85 / 100);
            v_netpay = v_grosspay - v_deducations;

            SqlDataPayroll.InsertParameters["euser_id"].DefaultValue = TextBox1.Text.ToUpper().Trim();
            SqlDataPayroll.InsertParameters["timesheet_id"].DefaultValue = /* session variable*/
            SqlDataPayroll.InsertParameters["base_pay"].DefaultValue = v_grosspay.ToString();
            SqlDataPayroll.InsertParameters["total_deduction"].DefaultValue = v_deducations.ToString();
            SqlDataPayroll.InsertParameters["net_pay"].DefaultValue = v_netpay.ToString();

            grosspaylabel.Text = v_grosspay.ToString();
            deducationsLabel.Text = v_deducations.ToString();
            netpaylabel.Text = v_netpay.ToString();






        }
    }
}