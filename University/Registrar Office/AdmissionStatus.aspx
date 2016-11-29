<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmissionStatus.aspx.cs" Inherits="University.Registrar_Office.Student_Admitted_or_rejected_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        <asp:SqlDataSource ID="SqlApplication" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [application_id] FROM [student_application] WHERE ([admission_status] = @admission_status)">
            <SelectParameters>
                <asp:Parameter Name="admission_status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="119px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Admitted</asp:ListItem>
            <asp:ListItem>Rejected</asp:ListItem>
            <asp:ListItem>OnHold</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:SqlDataSource ID="SqlAdmission" runat="server" OnSelecting="SqlDataSource1_Selecting" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [student_application] WHERE [application_id] = @original_application_id AND [suser_id] = @original_suser_id AND [degree] = @original_degree AND [major] = @original_major AND [gre_score] = @original_gre_score AND (([gre_test_date] = @original_gre_test_date) OR ([gre_test_date] IS NULL AND @original_gre_test_date IS NULL)) AND (([ielts_score] = @original_ielts_score) OR ([ielts_score] IS NULL AND @original_ielts_score IS NULL)) AND (([ielts_test_date] = @original_ielts_test_date) OR ([ielts_test_date] IS NULL AND @original_ielts_test_date IS NULL)) AND (([toefl] = @original_toefl) OR ([toefl] IS NULL AND @original_toefl IS NULL)) AND (([toefl_test_date] = @original_toefl_test_date) OR ([toefl_test_date] IS NULL AND @original_toefl_test_date IS NULL)) AND [admission_status] = @original_admission_status" InsertCommand="INSERT INTO [student_application] ([suser_id], [degree], [major], [gre_score], [gre_test_date], [ielts_score], [ielts_test_date], [toefl], [toefl_test_date], [admission_status]) VALUES (@suser_id, @degree, @major, @gre_score, @gre_test_date, @ielts_score, @ielts_test_date, @toefl, @toefl_test_date, @admission_status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [student_application]" UpdateCommand="UPDATE [student_application] SET [suser_id] = @suser_id, [degree] = @degree, [major] = @major, [gre_score] = @gre_score, [gre_test_date] = @gre_test_date, [ielts_score] = @ielts_score, [ielts_test_date] = @ielts_test_date, [toefl] = @toefl, [toefl_test_date] = @toefl_test_date, [admission_status] = @admission_status WHERE [application_id] = @original_application_id AND [suser_id] = @original_suser_id AND [degree] = @original_degree AND [major] = @original_major AND [gre_score] = @original_gre_score AND (([gre_test_date] = @original_gre_test_date) OR ([gre_test_date] IS NULL AND @original_gre_test_date IS NULL)) AND (([ielts_score] = @original_ielts_score) OR ([ielts_score] IS NULL AND @original_ielts_score IS NULL)) AND (([ielts_test_date] = @original_ielts_test_date) OR ([ielts_test_date] IS NULL AND @original_ielts_test_date IS NULL)) AND (([toefl] = @original_toefl) OR ([toefl] IS NULL AND @original_toefl IS NULL)) AND (([toefl_test_date] = @original_toefl_test_date) OR ([toefl_test_date] IS NULL AND @original_toefl_test_date IS NULL)) AND [admission_status] = @original_admission_status">
            <DeleteParameters>
                <asp:Parameter Name="original_application_id" Type="Int16" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_degree" Type="String" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_gre_test_date" />
                <asp:Parameter Name="original_ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_ielts_test_date" />
                <asp:Parameter Name="original_toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_toefl_test_date" />
                <asp:Parameter Name="original_admission_status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="degree" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="gre_test_date" />
                <asp:Parameter Name="ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="ielts_test_date" />
                <asp:Parameter Name="toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="toefl_test_date" />
                <asp:Parameter Name="admission_status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="degree" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="gre_test_date" />
                <asp:Parameter Name="ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="ielts_test_date" />
                <asp:Parameter Name="toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="toefl_test_date" />
                <asp:Parameter Name="admission_status" Type="String" />
                <asp:Parameter Name="original_application_id" Type="Int16" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_degree" Type="String" />
                <asp:Parameter Name="original_major" Type="String" />
                <asp:Parameter Name="original_gre_score" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_gre_test_date" />
                <asp:Parameter Name="original_ielts_score" Type="Decimal" />
                <asp:Parameter DbType="Date" Name="original_ielts_test_date" />
                <asp:Parameter Name="original_toefl" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_toefl_test_date" />
                <asp:Parameter Name="original_admission_status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="SubmitButton" />
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
