<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgramCreation.aspx.cs" Inherits="University.Academics.Department" StyleSheetTheme="" MasterPageFile="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>Create Program</title>
    <%-- ------ css ------ --%>
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/prettyPhoto.css" rel="stylesheet" type="text/css" />
    <link href="../css/main.css" rel="stylesheet" type="text/css" />
    <link href="../css/responsive.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    <!--[if lt IE 9]>
    <script src="../js/html5shiv.js"></script>
    <script src="../js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="../images/favicon.ico" />
</head>
<body>
    <form id="ProgramCreationForm" runat="server">
       <header id="header">
    <nav class="navbar navbar-inverse" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../Default.aspx">University - Home</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="AcademicsHome.aspx">Academics - Home</a></li>
                        <li><a href="DepartmentCreation.aspx">Create Department</a></li>
                        <li><a href="ProgramCreation.aspx">Create Program</a></li>                        
                        <li><a href="CourseCreation.aspx">Create Course</a></li>                  
                        <li><a href="AssignFacultyToCourse.aspx">Faculty Course Assignments</a></li> 
                        <li><a href="FacultyLoadReport.aspx">Faculty Load Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
      <div>

        <p style="width: 203px; margin-left: 600px">
        <b>Program Creation Form</b></p><br />
        <asp:Label ID="DeptName" runat="server" Text="Department ID:"></asp:Label>
        <asp:DropDownList ID="DepartmentIDDDList" runat="server" DataSourceID="UniversityDatabase" DataTextField="department_id" DataValueField="department_id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="UniversityDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [department_id] FROM [department]"></asp:SqlDataSource>
        <p>
        <asp:Label ID="CourseLevel" runat="server" Text="Course Level:"></asp:Label>
        <asp:DropDownList ID="CourseLevelDDList" runat="server">
                <asp:ListItem>Grad</asp:ListItem>
                <asp:ListItem>PhD</asp:ListItem>
                <asp:ListItem>UnderGrad</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p style="margin-left: 200px">
            <asp:Button ID="NewProgramButton" runat="server" Text="Enter New" OnClick="NewProgramButton_Click" />
            <asp:Button ID="DeleteProgramButton" runat="server" Text="Delete Existing" Width="112px" />
        </p>
        <p>

            <asp:Label ID="ProgramName" runat="server" Text="Program Name:"></asp:Label>
            <asp:TextBox ID="ProgramNameTB" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="ProgramCode" runat="server" Text="Program Code:"></asp:Label>
            <asp:TextBox ID="ProgramCodeTB" runat="server" Width="125px"></asp:TextBox>
        </p>
        <p style="margin-left: 200px">
            <asp:Button ID="ProgramSubmitButton" runat="server" Text="Submit" OnClick="ProgramSubmitButton_Click" />
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
      </div>
    </form>
</body>
</html>
