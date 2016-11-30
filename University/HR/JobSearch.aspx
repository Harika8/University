<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JobSearch.aspx.cs" Inherits="University.HR.JobSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Job Search" />
    <meta name="author" content="Harika" />
    <title>Job Search</title>
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
                        <li class="active"><a href="JobSearch.aspx">Job Search</a></li>
                        <li><a href="JobApplicationStatus.aspx">Job Application Status</a></li>                        
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
         Job Search Portal<br />
         <br /><br />
                 
        <asp:Panel ID="PanelResults" runat="server">
            <asp:GridView ID="gvSearchResults" runat="server" AutoGenerateColumns="False" DataKeyNames="vacancy_id" DataSourceID="SqlSearchResults" >
                <Columns>
                    <asp:BoundField DataField="vacancy_id" HeaderText="vacancy_id" InsertVisible="False" ReadOnly="True" SortExpression="vacancy_id" />
                    <asp:BoundField DataField="Job_Title" HeaderText="Job_Title" SortExpression="Job_Title" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                    <asp:BoundField DataField="Position_Type" HeaderText="Position_Type" SortExpression="Position_Type" />
                    <asp:BoundField DataField="Job_Description" HeaderText="Job_Description" SortExpression="Job_Description" />
                    <asp:TemplateField HeaderText="View Details"  ShowHeader="True">
                                 <ItemTemplate>
                                     <asp:LinkButton ID="lnkView" runat="server" CausesValidation="False" ToolTip=" click to view details" OnClick="lnkView_Click"  Text="View"></asp:LinkButton>
                                 </ItemTemplate>
                                
                    </asp:TemplateField>
                   <asp:TemplateField HeaderText="Apply"  ShowHeader="True">
                                 <ItemTemplate>
                                     <asp:LinkButton ID="lnkApply" runat="server" CausesValidation="False" ToolTip=" click to Apply" OnClick="lnkApply_Click"  Text="Apply"></asp:LinkButton>
                                 </ItemTemplate>
                                
                    </asp:TemplateField>
                    
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlSearchResults" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" SelectCommand="Select vacancy.vacancy_id,  position.designation as Job_Title, department.department_name as Department, position.pay_frequency as Position_Type, position.roles_responsibilities as Job_Description from vacancy, position,department where vacancy.position_id=position.position_id and position.department_id = department.department_id">
            </asp:SqlDataSource>
            </asp:Panel>

       
        <asp:SqlDataSource ID="SqlDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString4 %>" SelectCommand="SELECT [department_id], [department_name], [department_location], [department_phone_num], [department_email_id] FROM [department]"></asp:SqlDataSource>
      </div>
        
        
        
    </form>
</body>
</html>
