<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssignFacultyToCourse.aspx.cs" Inherits="University.Academics.AssignFcaultyToCourse" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>FacultyCourseAssignment</title>
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
    <form id="AssignFacultyToCourseForm" runat="server">
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
                        <li><a href="DepartmentManagement.aspx">Manage Department</a></li>
                        <li><a href="ProgramManagement.aspx">Manage Program</a></li>                        
                        <li><a href="CourseManagement.aspx">Manage Course</a></li>                     
                        <li><a href="AssignFacultyToCourse.aspx">Faculty Course Assignments</a></li> 
                        <li><a href="FacultyLoadReport.aspx">Faculty Load Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>

        <p style="width: 203px; margin-left: 600px">
            <b>Form to Assign a Faculty to a Course</b></p>
    
        <asp:Label ID="DeptName" runat="server" Text="Department Name:"></asp:Label>
        <asp:DropDownList ID="DeptNameDDList" runat="server" DataSourceID="FacultyDeptNameDataSource" DataTextField="department_name" DataValueField="department_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="FacultyDeptNameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="select dept.department_name from dbo.department as dept, dbo.program as prg where dept.department_id = prg.department_id;"></asp:SqlDataSource>
        <p>
        <asp:Label ID="CourseLevelLbl" runat="server" Text="Course Level:"></asp:Label>
        <asp:DropDownList ID="CourseLevelDDList" runat="server" DataSourceID="FacultyCrsLvlDataSource" DataTextField="course_level" DataValueField="course_level">
                <asp:ListItem>Grad</asp:ListItem>
                <asp:ListItem>PhD</asp:ListItem>
                <asp:ListItem>UnderGrad</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="FacultyCrsLvlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [course_level] FROM [program] WHERE ([program_name] = @program_name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="CourseLevelDDList" DefaultValue="Grad" Name="program_name" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Label ID="ProgramNameLbl" runat="server" Text="Program Name:"></asp:Label>
            <asp:DropDownList ID="ProgramNameDDL" runat="server" DataSourceID="FacultyPrgmDataSource" DataTextField="program_name" DataValueField="program_name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="FacultyPrgmDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT [program_name] FROM [program]"></asp:SqlDataSource>
        </p>
        <br />
    
        <asp:Label ID="FacultyNameLbl" runat="server" Text="Faculty Name:"></asp:Label>
        <asp:DropDownList ID="FacultyNameDDL" runat="server" DataSourceID="NewFacultyDataSource" DataTextField="department_name" DataValueField="department_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="NewFacultyDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="select user.first_name from dbo.user_info as user, dbo.employee as emp where user.user_id = emp.euser_id;"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="AssignNewButton" runat="server" Text="Assign Newly" />
        <br />
        <br />
        <asp:Button ID="UpdateAssignmentButton" runat="server" Text="Update Faculty Assignment" />
        <br />
        <br />
        <asp:Label ID="FacultySpecializationLbl" runat="server" Text="Specialization:"></asp:Label>
        <asp:TextBox ID="FacultySpecializationTB" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="FacultyEducationLbl" runat="server" Text="Education:"></asp:Label>
        <asp:TextBox ID="FacultyEducationTB" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="ContractHoursLbl" runat="server" Text="Contract (Total Eligible Credits Dealt Per Year):"></asp:Label>
        <asp:TextBox ID="ContractHoursTB" runat="server"></asp:TextBox>
        <br />
        <p>
            &nbsp;</p>
    
        <asp:Label ID="CourseNameTB" runat="server" Text="Course Name:"></asp:Label>
        <asp:DropDownList ID="DeptNameDDList1" runat="server" DataSourceID="FacultyCourseDataSource" DataTextField="course_name" DataValueField="course_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="FacultyCourseDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="select crs.course_name from dbo.course as crs, dbo.program as prg where crs.program_id = prg.program_id;"></asp:SqlDataSource>
        <br />
        
        <asp:Button ID="FacultyAssignSubmitButton" runat="server" Text="Submit" OnClick="ProgramSubmitButton_Click" />
        <asp:Button ID="FacultyAssignClearButton" runat="server" Text="Clear" />

            
    </form>
</body>
</html>
