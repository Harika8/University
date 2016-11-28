<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyCourseAssignment.aspx.cs" Inherits="University.Academics.FacultyCourseAssignment" %>

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
    <form id="FacultyCourseAssignmentForm" runat="server">
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
                        <li><a href="AssignFacultyToCourse1.aspx">Faculty Course Assignments</a></li> 
                        <li><a href="FacultyLoadReport.aspx">Faculty Load Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>

        <p style="width: 203px; margin-left: 600px">
            <b>Form to Assign a Faculty to a Course</b></p>
    
        <asp:Label ID="DeptName" runat="server" Text="Department Name:"></asp:Label>
        <asp:DropDownList ID="DeptNameDDList" runat="server" DataSourceID="UniversityDatabase" DataTextField="department_name" DataValueField="department_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="UniversityDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [department_name] FROM [department]"></asp:SqlDataSource>
        <p>
            Course ID:
            <asp:DropDownList ID="CourseIDDDL" runat="server">
            </asp:DropDownList>
&nbsp;Course Name:<asp:TextBox ID="CourseNameTB" runat="server" Enabled="False"></asp:TextBox>
        </p>
        <p>
            Faculty ID:
            <asp:DropDownList ID="FacultyIDDDL" runat="server">
            </asp:DropDownList>
&nbsp;Faculty Name:<asp:TextBox ID="FacultyNameTB" runat="server" Enabled="False"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="ProgramSubmitButton" runat="server" Text="Submit" />
            <asp:Button ID="ProgramClearButton" runat="server" Text="Clear" />
        </p>
    </form>
</body>
</html>
