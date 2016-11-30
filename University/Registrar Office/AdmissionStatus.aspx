<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmissionStatus.aspx.cs" Inherits="University.Registrar_Office.Student_Admitted_or_rejected_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admission Status</title>
    <style>
.highlight
{
  color:red;
  font-weight:bold;
}
</style>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    Application Admitted/Rejected Form<br />
        <br />
        <br />
        ApplicationID :&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlApplication" DataTextField="application_id" DataValueField="application_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlApplication" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [application_id] FROM [student_application] WHERE ([admission_status] = 'Submit')">
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="119px">
            <asp:ListItem>Admitted</asp:ListItem>
            <asp:ListItem>Rejected</asp:ListItem>
            <asp:ListItem>OnHold</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
          <p>
            &nbsp;</p>

         <asp:Label runat="server" id="msg" CssClass="highlight"></asp:Label>
      
        <asp:SqlDataSource ID="SqlAdmission" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" UpdateCommand="UPDATE [student_application] SET [admission_status] = @admission_status WHERE [application_id] = @original_application_id">
        <UpdateParameters>
            <asp:Parameter Name="original_application_id" Type="Int16" />
            <asp:Parameter Name="admission_status" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    </div>
    </form>
</body>
</html>
