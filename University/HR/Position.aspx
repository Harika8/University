<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Position.aspx.cs" Inherits="University.HR.Position" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Position Creation" />
    <meta name="author" content="Harika" />
    <title>Position Creation</title>
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
                        <li><a href="Payroll.aspx">Check Payroll</a></li>
                        <li class="active"><a href="Position.aspx">Create Position</a></li> 
                        <li><a href="Timesheet.aspx">Update Timesheet</a></li>
                        <li><a href="EmployeeJoining.aspx">Employee</a></li>                      
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <div style="margin-top:100px;" align="center">
         Position Creation Form<br /><br />
        </div>
        <div style="margin-left: 100px">
     
         <asp:Label ID="lblJobtype" Width="150" runat="server" Text="Job Type :"></asp:Label>         
         <asp:DropDownList ID="selJobtype" Width="150" runat="server">
             <asp:ListItem>part time</asp:ListItem>
             <asp:ListItem>full time</asp:ListItem>
         </asp:DropDownList>         
        <br /><br />
         <asp:Label ID="lbldesignation" runat="server" Width="150" Text="Designation :"></asp:Label>
         <asp:TextBox ID="txtdesignation" runat="server" Width="150"></asp:TextBox><br /><br />
         <asp:Label ID="lblRoles_resp" runat="server" Width="150" Text="Roles & Responsibilities :"></asp:Label>
         <asp:TextBox ID="txtrolesresp" runat="server" Width="500"></asp:TextBox><br /><br /><br />
             <asp:Label ID="lbldepartment" runat="server" Text="Department :" Width="150"></asp:Label>
            <asp:DropDownList ID="seldept" runat="server" Width="150" DataSourceID="SqlDepartment" DataTextField="department_name" DataValueField="department_name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionStringA %>" SelectCommand="SELECT [department_name] FROM [department]"></asp:SqlDataSource>
            <br />            
        </div>
        <div style="margin-top:100px;" align="center">
        <asp:Button ID="btnsubmit" runat="server" Width="150" Text="Submit" />
        <asp:Button ID="btnclear" runat="server" Width="150" Text="Clear" />
            <br />
        </div>
        
    </form>
  
</body>
</html>
