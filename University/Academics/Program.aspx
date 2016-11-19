<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Program.aspx.cs" Inherits="University.Academics.Department" StyleSheetTheme="" MasterPageFile="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ProgramCreationForm</title>
</head>
<body>
    <form id="ProgramCreationForm" runat="server" title="ProgramCreationForm">
    <div>
    
        <p style="width: 203px; margin-left: 320px">
            Program Creation Form<br />
            <br />
        </p>
    
    </div>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="DeptName" runat="server" Text="Department Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DeptNameDDList" runat="server" DataSourceID="UniversityDatabase" DataTextField="department_name" DataValueField="department_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="UniversityDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [department_name] FROM [department]"></asp:SqlDataSource>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="CourseLevel" runat="server" Text="Course Level:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="CourseLevelDDList" runat="server">
                <asp:ListItem>Grad</asp:ListItem>
                <asp:ListItem>PhD</asp:ListItem>
                <asp:ListItem>UnderGrad</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p style="margin-left: 200px">
            <asp:Button ID="NewProgramButton" runat="server" Text="Enter New" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="DeleteProgramButton" runat="server" Text="Delete Existing" Width="112px" />
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ProgramName" runat="server" Text="Program Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ProgramNameTB" runat="server"></asp:TextBox>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ProgramCode" runat="server" Text="Program Code:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ProgramCodeTB" runat="server" Width="125px"></asp:TextBox>
        </p>
        <p style="margin-left: 200px">
            <asp:Button ID="ProgramSubmitButton" runat="server" Text="Submit" OnClick="ProgramSubmitButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ProgramClearButton" runat="server" Text="Clear" />
        </p>
        <asp:SqlDataSource ID="sqlprogram" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [program] WHERE [program_id] = @original_program_id AND (([program_name] = @original_program_name) OR ([program_name] IS NULL AND @original_program_name IS NULL)) AND (([department_id] = @original_department_id) OR ([department_id] IS NULL AND @original_department_id IS NULL)) AND (([course_level] = @original_course_level) OR ([course_level] IS NULL AND @original_course_level IS NULL))" InsertCommand="INSERT INTO [program] ([program_id], [program_name], [department_id], [course_level]) VALUES (@program_id, @program_name, @department_id, @course_level)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [program]" UpdateCommand="UPDATE [program] SET [program_name] = @program_name, [department_id] = @department_id, [course_level] = @course_level WHERE [program_id] = @original_program_id AND (([program_name] = @original_program_name) OR ([program_name] IS NULL AND @original_program_name IS NULL)) AND (([department_id] = @original_department_id) OR ([department_id] IS NULL AND @original_department_id IS NULL)) AND (([course_level] = @original_course_level) OR ([course_level] IS NULL AND @original_course_level IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_program_id" Type="Int16" />
                <asp:Parameter Name="original_program_name" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
                <asp:Parameter Name="original_course_level" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="program_id" Type="Int16" />
                <asp:Parameter Name="program_name" Type="String" />
                <asp:Parameter Name="department_id" Type="Int16" />
                <asp:Parameter Name="course_level" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="program_name" Type="String" />
                <asp:Parameter Name="department_id" Type="Int16" />
                <asp:Parameter Name="course_level" Type="String" />
                <asp:Parameter Name="original_program_id" Type="Int16" />
                <asp:Parameter Name="original_program_name" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
                <asp:Parameter Name="original_course_level" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
