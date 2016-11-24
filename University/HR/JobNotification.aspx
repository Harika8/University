<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobNotification.aspx.cs" Inherits="University.HR.JobNotification" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Vacancy Creation" />
    <meta name="author" content="Harika" />
    <title>Vacancy Creation</title>
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
                        <li class="active"><a href="JobNotification.aspx">Create Vacancy</a></li> 
                        <li><a href="Payroll.aspx">Check Payroll</a></li>
                        <li><a href="Position.aspx">Create Position</a></li> 
                        <li><a href="Timesheet.aspx">Update Timesheet</a></li>
                        <li><a href="EmployeeJoining.aspx">Employee</a></li>                      
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <div>
    
    </div>
    </form>
</body>
</html>
