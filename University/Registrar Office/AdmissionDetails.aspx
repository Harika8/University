<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmissionDetails.aspx.cs" Inherits="University.Registrar_Office.Applicant_Admission_details_update_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     Applicant Admission details update Form<br />
        <br />
        <br />
        ApplicationID :&nbsp; <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlApplication" DataTextField="application_id" DataValueField="application_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlApplication" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [application_id] FROM [student_application]"></asp:SqlDataSource>
        <br />
        <br />
        Registartion Details:
        <asp:TextBox ID="RegistrationDetailTextBox" runat="server" Width="138px"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Font-Size="Medium" Height="41px" Text="Submit Application" Width="167px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
    </form>
</body>
</html>
