<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyLoadReport.aspx.cs" Inherits="University.Academics.FacultyLoadReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>FacultyLoad</title>
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

    <form id="FacultyLoadReport" runat="server">
    
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
            <b>Faculty Load Report</b></p><br/>
        </div>
            
        <asp:Label ID="DeptName" runat="server" Text="Department Name:"></asp:Label>
        <asp:DropDownList ID="DeptNameDDList" runat="server">
        </asp:DropDownList>
        <p>
            &nbsp;</p>
    
        <asp:Label ID="FacultyNameLbl" runat="server" Text="Faculty Name:"></asp:Label>
        <asp:DropDownList ID="FacultyNameDDL" runat="server">
        </asp:DropDownList>
            
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Generate Report" />
        <asp:GridView ID="FacultyLoadGridView" runat="server" DataSourceID="FacultyLoadDataSource">
        </asp:GridView>
        <asp:SqlDataSource ID="FacultyLoadDataSource" runat="server"></asp:SqlDataSource>
            
    </form>
</body>
</html>
