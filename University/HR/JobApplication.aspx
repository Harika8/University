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

         
         <asp:Label ID="lblUserid" Width="150" runat="server" Text="User ID :"></asp:Label>       
         <asp:TextBox ID="txtUserid" runat="server" Width="150px"></asp:TextBox>        
         <br /><br />
          
        </div>
         <div style="margin-top:50px;" align="center">
        <asp:Button ID="btnsubmit" runat="server"  Text="Submit" OnClick="btnsubmit_Click" />&nbsp;&nbsp;
            <br />
        </div> 

        <asp:SqlDataSource ID="Sqljobapplication" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" DeleteCommand="DELETE FROM [job_application] WHERE [job_application_id] = @original_job_application_id AND [juser_id] = @original_juser_id AND [vacancy_id] = @original_vacancy_id AND [date_applied] = @original_date_applied AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" InsertCommand="INSERT INTO [job_application] ([juser_id], [vacancy_id], [date_applied], [status]) VALUES (@juser_id, @vacancy_id, @date_applied, @status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [job_application]" UpdateCommand="UPDATE [job_application] SET [juser_id] = @juser_id, [vacancy_id] = @vacancy_id, [date_applied] = @date_applied, [status] = @status WHERE [job_application_id] = @original_job_application_id AND [juser_id] = @original_juser_id AND [vacancy_id] = @original_vacancy_id AND [date_applied] = @original_date_applied AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_job_application_id" Type="Int32" />
                <asp:Parameter Name="original_juser_id" Type="Int32" />
                <asp:Parameter Name="original_vacancy_id" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_date_applied" />
                <asp:Parameter Name="original_status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="juser_id" Type="Int32" />
                <asp:Parameter Name="vacancy_id" Type="Int16" />
                <asp:Parameter DbType="Date" Name="date_applied" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="juser_id" Type="Int32" />
                <asp:Parameter Name="vacancy_id" Type="Int16" />
                <asp:Parameter DbType="Date" Name="date_applied" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="original_job_application_id" Type="Int32" />
                <asp:Parameter Name="original_juser_id" Type="Int32" />
                <asp:Parameter Name="original_vacancy_id" Type="Int16" />
                <asp:Parameter DbType="Date" Name="original_date_applied" />
                <asp:Parameter Name="original_status" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource> 

    </form>
</body>
</html>
