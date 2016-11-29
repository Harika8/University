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
                        <li><a href="Position.aspx">Create Position</a></li> 
                        <li><a href="EmployeeJoining.aspx">Employee Joining</a></li>
                        <li><a href="EmployeeScreen.aspx">Employee</a></li>                         
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
 
    </header>
    <div style="margin-top:75px;" align="center">
         Create Job Notification for new vacancy<br />
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
                  
            <asp:SqlDataSource ID="SqlDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" SelectCommand="SELECT [department_name], [department_id] FROM [department]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlPosition" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [position_id], [job_type], [designation], [roles_responsibilities], [salary], [department_id], [pay_frequency] FROM [position] ORDER BY [designation]">
            </asp:SqlDataSource>       
              
                
            <asp:SqlDataSource ID="SqlData" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>"  SelectCommand="SELECT * FROM [position]">
            </asp:SqlDataSource>
              
                
            <asp:SqlDataSource ID="SqlVacancy" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" DeleteCommand="DELETE FROM [vacancy] WHERE [vacancy_id] = @original_vacancy_id AND [position_id] = @original_position_id AND [no_of_vacancies] = @original_no_of_vacancies AND (([req_qualification] = @original_req_qualification) OR ([req_qualification] IS NULL AND @original_req_qualification IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND [open_date] = @original_open_date AND [close_date] = @original_close_date" InsertCommand="INSERT INTO [vacancy] ([position_id], [no_of_vacancies], [req_qualification], [duration], [open_date], [close_date]) VALUES (@position_id, @no_of_vacancies, @req_qualification, @duration, @open_date, @close_date)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [vacancy]" UpdateCommand="UPDATE [vacancy] SET [position_id] = @position_id, [no_of_vacancies] = @no_of_vacancies, [req_qualification] = @req_qualification, [duration] = @duration, [open_date] = @open_date, [close_date] = @close_date WHERE [vacancy_id] = @original_vacancy_id AND [position_id] = @original_position_id AND [no_of_vacancies] = @original_no_of_vacancies AND (([req_qualification] = @original_req_qualification) OR ([req_qualification] IS NULL AND @original_req_qualification IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND [open_date] = @original_open_date AND [close_date] = @original_close_date">
                <DeleteParameters>
                    <asp:Parameter Name="original_vacancy_id" Type="Int16" />
                    <asp:Parameter Name="original_position_id" Type="Int16" />
                    <asp:Parameter Name="original_no_of_vacancies" Type="Int16" />
                    <asp:Parameter Name="original_req_qualification" Type="String" />
                    <asp:Parameter Name="original_duration" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_open_date" />
                    <asp:Parameter DbType="Date" Name="original_close_date" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="position_id" Type="Int16" />
                    <asp:Parameter Name="no_of_vacancies" Type="Int16" />
                    <asp:Parameter Name="req_qualification" Type="String" />
                    <asp:Parameter Name="duration" Type="String" />
                    <asp:Parameter DbType="Date" Name="open_date" />
                    <asp:Parameter DbType="Date" Name="close_date" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="position_id" Type="Int16" />
                    <asp:Parameter Name="no_of_vacancies" Type="Int16" />
                    <asp:Parameter Name="req_qualification" Type="String" />
                    <asp:Parameter Name="duration" Type="String" />
                    <asp:Parameter DbType="Date" Name="open_date" />
                    <asp:Parameter DbType="Date" Name="close_date" />
                    <asp:Parameter Name="original_vacancy_id" Type="Int16" />
                    <asp:Parameter Name="original_position_id" Type="Int16" />
                    <asp:Parameter Name="original_no_of_vacancies" Type="Int16" />
                    <asp:Parameter Name="original_req_qualification" Type="String" />
                    <asp:Parameter Name="original_duration" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_open_date" />
                    <asp:Parameter DbType="Date" Name="original_close_date" />
                </UpdateParameters>
            </asp:SqlDataSource>
              
                
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
