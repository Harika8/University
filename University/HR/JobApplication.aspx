<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobApplication.aspx.cs" Inherits="University.HR.JobApplication" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Job Application" />
    <meta name="author" content="Harika" />
    <title>Job Application</title>
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
                        <li class="active"><a href="JobApplication.aspx">Job Application</a></li>                        
                        <li><a href="JobNotification.aspx">Create Vacancy</a></li> 
                        <li><a href="Position.aspx">Create Position</a></li> 
                        <li><a href="EmployeeJoining.aspx">Employee Joining</a></li>
                        <li><a href="EmployeeScreen.aspx">Employee</a></li>                       
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
      <div style="margin-top:75px;" align="center">
         Job Application<br />

         <br /><br />
            <asp:Button ID="btnNewUser" runat="server" Width="150" Text="New User" OnClick="btnNewUser_Click" />
          <br /><br />
        </div>
        <div style="margin-left: 100px">

         
         <asp:Label ID="lblPosition" Width="150" runat="server" Text="Select Designation :"></asp:Label> 
         <asp:DropDownList ID="selPosition" runat="server" Width="150px" AutoPostBack="true" AppendDataBoundItems="True" EnableViewState="False"  DataSourceID="SqlPosition" DataTextField="designation" DataValueField="position_id" OnSelectedIndexChanged="selPosition_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="-1">Select Designation</asp:ListItem>
            </asp:DropDownList>   <br /><br />

            
         <asp:Label ID="lblJobtype" Width="150" runat="server" Text="Job Type :"></asp:Label>         
         <asp:TextBox ID="txtJobtype" runat="server" Width="150px"  ReadOnly="true"></asp:TextBox>        
        <br /><br />
         <asp:Label ID="lbldepartment" runat="server" Text="Department :" Width="150"></asp:Label>
         <asp:TextBox ID="txtDepartment" runat="server" Width="150" ReadOnly="true"></asp:TextBox>        
        <br /><br />
        <asp:Label ID="lblSalary" runat="server" Width="150" Text="Salary :"></asp:Label>
        <asp:TextBox ID="txtSalary" runat="server" Width="150" ReadOnly="true"></asp:TextBox><br /><br />
        <asp:Label ID="lblPayfrequency" runat="server" Width="150" Text="Pay Frequency :"></asp:Label>
        <asp:TextBox ID="txtPayFrequency" runat="server" Width="150" ReadOnly="true"></asp:TextBox><br /><br />     
         <asp:Label ID="lblRoles_resp" runat="server" Width="150" Height="50px" Text="Job Description :"></asp:Label>
         <asp:TextBox ID="txtrolesresp" runat="server" Width="500" Height="50px" ReadOnly="true"></asp:TextBox><br /><br />
        <asp:Label ID="lblRequiredQualification" runat="server" Width="200px" Text="Required Qualification :" Height="50px"></asp:Label>
         <asp:TextBox ID="txtRequiredQualification" runat="server" Width="500" Height="50px"></asp:TextBox><br /><br />
        <asp:Label ID="lblDuration" runat="server" Width="150" Text="Duration :"></asp:Label>
         <asp:TextBox ID="txtDuration" runat="server" Width="150"></asp:TextBox><br /><br />
        <asp:Label ID="lblnoofVacancies" runat="server" Width="200" Text="Number of Vacancies :"></asp:Label>
         <asp:TextBox ID="txtnoofvacancies" runat="server" Width="150"></asp:TextBox><br /><br />
         <asp:Label ID="lblCloseDate" runat="server" Width="150" Text="Close Date :"></asp:Label>
         <asp:TextBox ID="txtCloseDate" ReadOnly="false" Width="150" runat="server"></asp:TextBox>&nbsp;
        <asp:ImageButton ID="calimgCloseDate" runat="server" height="30px" ImageUrl="~/images/calender.png" OnClick="calimgCloseDate_Click" Width="25px" />
        <asp:Panel ID="calpanelCloseDate" runat="server" Visible="false">
          <asp:Calendar ID="calCloseDate" runat="server" OnSelectionChanged="calCloseDate_SelectionChanged"></asp:Calendar>           
          <br />
        </asp:Panel>
          <br />
            <br />

              
                
            <br />            
        </div>
         <div style="margin-top:50px;" align="center">
        <asp:Button ID="btnsubmit" runat="server"  Text="Submit" OnClick="btnsubmit_Click" />&nbsp;&nbsp;
        <asp:Button ID="btnclear" runat="server"  Text="Clear" OnClick="btnclear_Click" />
            <br />
        </div>

 

    </form>
</body>
</html>
