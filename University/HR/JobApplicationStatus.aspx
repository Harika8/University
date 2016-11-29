﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobApplicationStatus.aspx.cs" Inherits="University.HR.JobApplicationStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Employee Joining" />
    <meta name="author" content="Harika" />
    <title>Employee Joining Formalities</title>
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
    <form id="form1" runat="server">
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
                    <a class="navbar-brand" href="../Default.aspx">University</a>
                </div>
				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="HRDefault.aspx">HR - Home</a></li>
                        <li><a href="JobSearch.aspx">Job Search</a></li>
                        <li><a href="JobApplication.aspx">Job Application</a></li>                        
                        <li><a href="JobNotification.aspx">Create Vacancy</a></li> 
                        <li><a href="Position.aspx">Create Position</a></li> 
                        <li class="active"><a href="EmployeeJoining.aspx">Employee Joining</a></li>
                        <li><a href="EmployeeScreen.aspx">Employee</a></li>                 
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <div style="margin-top:75px;" align="center">
        <asp:GridView ID="gvJobApplications" runat="server" AutoGenerateColumns="False" DataKeyNames="job_application_id" DataSourceID="SqlJobApplications">
            <Columns>
                <asp:BoundField DataField="job_application_id" HeaderText="job_application_id" InsertVisible="False" ReadOnly="True" SortExpression="job_application_id" />
                <asp:BoundField DataField="juser_id" HeaderText="juser_id" InsertVisible="False" ReadOnly="True" SortExpression="juser_id" />
                <asp:BoundField DataField="vacancy_id" HeaderText="vacancy_id" InsertVisible="False" ReadOnly="True" SortExpression="vacancy_id" />
                <asp:BoundField DataField="first_name" HeaderText="first_name" ReadOnly="True" SortExpression="first_name" />
                <asp:BoundField DataField="Job_Title" HeaderText="Job_Title" ReadOnly="True" SortExpression="Job_Title" />
                <asp:BoundField DataField="Department" HeaderText="Department" ReadOnly="True" SortExpression="Department" />
                <asp:BoundField DataField="Status_of_Application" HeaderText="Status_of_Application" SortExpression="Status_of_Application" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlJobApplications" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" SelectCommand="Select job_application_id, juser_id, job_application.vacancy_id,  first_name, position.designation as Job_Title, department.department_name as Department, job_application.status as Status_of_Application from job_application, user_info, vacancy, position, department where job_application.vacancy_id = vacancy.vacancy_id and vacancy.position_id=position.position_id and position.department_id = department.department_id and juser_id  = user_id;"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
