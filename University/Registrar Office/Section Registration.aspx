<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Section Registration.aspx.cs" Inherits="University.Registrar_Office.Course_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label8" runat="server" Font-Size="XX-Large" Text="Course Registration/Drop Form:"></asp:Label>
        <br />
        <br />
        Student ID: <asp:TextBox ID="StudentId" runat="server" Width="196px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:RadioButton ID="Registerbutton" runat="server" OnCheckedChanged="RadioButton6_CheckedChanged" Text="Register" />
&nbsp;<br />
        <asp:RadioButton ID="DropRadiobutton" runat="server" Text="Drop" />
        <br />
        &nbsp;&nbsp;&nbsp;
        <br />
        Semester:<br />
        <br />
        <asp:RadioButton ID="SpringRadioButton" runat="server" Text="Spring" />
        <br />
        <asp:RadioButton ID="MaymesterRadioButton" runat="server" Text="Maymester" />
        <br />
        <asp:RadioButton ID="SummerRadioButton" runat="server" Text="Summer" />
        <br />
        <asp:RadioButton ID="LSummerRadioButton" runat="server" Text="Long Summer" />
        <br />
        <asp:RadioButton ID="FallRadioButton" runat="server" Text="Fall" />
        <br />
        <br />
        Year:&nbsp;
        <asp:TextBox ID="YearTextBox" runat="server" Width="398px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        Courses:&nbsp;
        <asp:DropDownList ID="CourseDropdown" runat="server" DataSourceID="SqlCourse" DataTextField="course_name" DataValueField="course_id">
            <asp:ListItem>MIS</asp:ListItem>
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Psychology</asp:ListItem>
            <asp:ListItem>Physics</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <br />
        <br />
        Section :&nbsp;
        <asp:DropDownList ID="SectionDropDown" runat="server" DataSourceID="SqlSection" DataTextField="section_id" DataValueField="section_id">
            <asp:ListItem>MIS</asp:ListItem>
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Psychology</asp:ListItem>
            <asp:ListItem>Physics</asp:ListItem>
        </asp:DropDownList>
&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="Sqlsectionregistration" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [section_registration] WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND [registration_status] = @original_registration_status AND [registration_date] = @original_registration_date" InsertCommand="INSERT INTO [section_registration] ([suser_id], [section_id], [registration_status], [registration_date]) VALUES (@suser_id, @section_id, @registration_status, @registration_date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [section_registration]" UpdateCommand="UPDATE [section_registration] SET [registration_status] = @registration_status, [registration_date] = @registration_date WHERE [suser_id] = @original_suser_id AND [section_id] = @original_section_id AND [registration_status] = @original_registration_status AND [registration_date] = @original_registration_date">
            <DeleteParameters>
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_registration_status" Type="String" />
                <asp:Parameter DbType="Date" Name="original_registration_date" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="suser_id" Type="Int32" />
                <asp:Parameter Name="section_id" Type="Int16" />
                <asp:Parameter Name="registration_status" Type="String" />
                <asp:Parameter DbType="Date" Name="registration_date" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="registration_status" Type="String" />
                <asp:Parameter DbType="Date" Name="registration_date" />
                <asp:Parameter Name="original_suser_id" Type="Int32" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_registration_status" Type="String" />
                <asp:Parameter DbType="Date" Name="original_registration_date" />
            </UpdateParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        <asp:SqlDataSource ID="SqlCourse" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [course_id], [course_name], [Effective_start_date], [course_description], [course_level], [department_id], [program_id] FROM [course]"></asp:SqlDataSource>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ApplicationButton" runat="server" Font-Size="Medium" Height="41px" Text="Submit Application" Width="167px" OnClick="ApplicationButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Font-Size="Medium" Height="40px" Text="Clear Fields" Width="183px" />
        <br />
    </div>
        <asp:SqlDataSource ID="SqlSection" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [section_id], [course_id], [fuser_id], [section_availabilty], [semester], [credits] FROM [section] WHERE ([course_id] = @course_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="CourseDropdown" Name="course_id" PropertyName="SelectedValue" Type="Int16" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlSectionUpdate" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [section] WHERE [section_id] = @original_section_id AND (([section_availabilty] = @original_section_availabilty) OR ([section_availabilty] IS NULL AND @original_section_availabilty IS NULL))" InsertCommand="INSERT INTO [section] ([section_id], [section_availabilty]) VALUES (@section_id, @section_availabilty)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [section_id], [section_availabilty] FROM [section]" UpdateCommand="UPDATE [section] SET [section_availabilty] = @section_availabilty WHERE [section_id] = @original_section_id AND (([section_availabilty] = @original_section_availabilty) OR ([section_availabilty] IS NULL AND @original_section_availabilty IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_section_availabilty" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="section_id" Type="Int16" />
                <asp:Parameter Name="section_availabilty" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="section_availabilty" Type="Int16" />
                <asp:Parameter Name="original_section_id" Type="Int16" />
                <asp:Parameter Name="original_section_availabilty" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Status:&nbsp;
        <asp:TextBox ID="RegistrationStatusTextBox" runat="server" Width="398px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>
