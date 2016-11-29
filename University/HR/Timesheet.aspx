<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Timesheet.aspx.cs" Inherits="University.HR.Timesheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Update Timesheet" />
    <meta name="author" content="Harika" />
    <title>Update Timesheet</title>
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
                        <li><a href="Position.aspx">Create Position</a></li> 
                        <li class="active"><a href="Timesheet.aspx">Update Timesheet</a></li>
                        <li><a href="EmployeeJoining.aspx">Employee</a></li>                      
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
        <div style="margin-left: 100px">
        <asp:Panel ID="EmpSearchPanel" runat="server">
            <br />
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="EmpIDTxtBox" runat="server" Text="Employee ID: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Employee Name: "></asp:Label>
            <asp:TextBox ID="EmpNameTxtBox" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="SearchBtn" runat="server" OnClick="Button1_Click" Text="Search " />
            <br />
            <br />
            <br />
        </asp:Panel>
            <asp:Button ID="TimesheetBtn" runat="server" Text="Timesheet" Width="151px" />
            <asp:Button ID="Payrollbtn" runat="server" Text="Payroll" Width="166px" />
        <br />
            <asp:Panel ID="WrknPayPanel" runat="server">
                <br />
               
                &nbsp;<asp:Table ID="MonTimeshtTable" runat="server" Width="333px">
                    <asp:TableRow runat="server">
                        <asp:TableCell ID="Date" runat="server" BorderColor="#0066FF">Week</asp:TableCell>
                        <asp:TableCell runat="server" BorderColor="#0066FF">Number of Hours</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 1</asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 2</asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 3</asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 4</asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Total Hours</asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
                <br />
               
                <asp:Table ID="BiwktimeshtTable" runat="server" Width="327px">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week </asp:TableCell>
                        <asp:TableCell runat="server">Number of Hours</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 1</asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Week 2</asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">Total Hours</asp:TableCell>
                        <asp:TableCell runat="server"></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
               
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Submitbtn" runat="server" Text="Submit" />
                &nbsp;&nbsp;
                <asp:Button ID="Clearbtn" runat="server" Text="Clear" Width="62px" />
                <br />
            </asp:Panel>
            <br />
            <asp:Panel ID="PayRollPanel" runat="server">
                Payroll :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                Gross Pay :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                Deducations:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                Net pay :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="OkBtn" runat="server" Text="Okay" />
                <br />
                <br />
            </asp:Panel>
            <br />

           
            <br />
            </div>
    </form>
    
</body>
</html>
