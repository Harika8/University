<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseCreation.aspx.cs" Inherits="University.Academics.CourseCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>Create Course</title>
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
    <form id="CourseCreation" runat="server">
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
                        <li><a href="ProgramManagement.aspx">Program Management</a></li>                         
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
        <b>Course Creation Form</b></p><br />
    
        <asp:Label ID="DeptName" runat="server" Text="Department Name:"></asp:Label>
        <asp:DropDownList ID="DeptNameDDList" runat="server" DataSourceID="UniversityDatabase" DataTextField="department_name" DataValueField="department_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="UniversityDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [department_name] FROM [department]"></asp:SqlDataSource>
        <p>
        <asp:Label ID="CourseLevelLbl" runat="server" Text="Course Level:"></asp:Label>
        <asp:DropDownList ID="CourseLevelDDList" runat="server">
                <asp:ListItem>Grad</asp:ListItem>
                <asp:ListItem>PhD</asp:ListItem>
                <asp:ListItem>UnderGrad</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="ProgramNameLbl" runat="server" Text="Program Name:"></asp:Label>
            <asp:DropDownList ID="ProgramNameDDL" runat="server">
            </asp:DropDownList>
        </p>
        <p>
            &nbsp;</p>
        <p style="margin-left: 200px">
            <asp:Button ID="NewProgramButton" runat="server" Text="Create" />
            <asp:Button ID="ProgramSubmitButton0" runat="server" Text="Update" />
            <asp:Button ID="DeleteProgramButton" runat="server" Text="Delete Existing" Width="112px" />
        </p>
        <p style="margin-left: 200px">
            &nbsp;</p>
        <p>
            <asp:Label ID="CourseNameLbl" runat="server" Text="Course Name:"></asp:Label>
            <asp:TextBox ID="ProgramNameTB" runat="server"></asp:TextBox>
            <asp:Label ID="CourseNumberLbl" runat="server" Text="Course Number:"></asp:Label>
            <asp:TextBox ID="CourseNumberTB" runat="server" Width="125px" Enabled="False"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="ProgramEffDtLbl" runat="server" Text="Effective Date:"></asp:Label>
            <asp:Calendar ID="ProgramEffDtCal" runat="server"></asp:Calendar>
        </p>
        <p>
            <asp:Label ID="CourseDescriptionLbl" runat="server" Text="Course Description:"></asp:Label>
            <asp:TextBox ID="CourseDescriptionTB" runat="server" Width="372px" Height="56px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p style="margin-left: 200px">
            <asp:Button ID="ProgramSubmitButton" runat="server" Text="Submit" />
            <asp:Button ID="ProgramClearButton" runat="server" Text="Clear" />
        </p>
    
    </div>
    </form>
</body>
</html>
