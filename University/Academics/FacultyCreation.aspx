﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyCreation.aspx.cs" Inherits="University.Academics.FacultyCreation" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>Faculty</title>
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
    <form id="FacultyCreationForm" runat="server">
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
            <b>Form to create a Faculty under a Department</b></p>
    
        <asp:GridView ID="FacultyTBLGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="fuser_id" DataSourceID="FacultyTBLDataSource" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="5">
            <Columns>
                <asp:BoundField DataField="fuser_id" HeaderText="fuser_id" ReadOnly="True" SortExpression="fuser_id" />
                <asp:BoundField DataField="specalization" HeaderText="specalization" SortExpression="specalization" />
                <asp:BoundField DataField="education" HeaderText="education" SortExpression="education" />
                <asp:BoundField DataField="contract" HeaderText="contract" SortExpression="contract" />
                <asp:BoundField DataField="department_id" HeaderText="department_id" SortExpression="department_id" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="FacultyTBLDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [faculty]"></asp:SqlDataSource>
        <br />
        <hr />
        <br />
    
        <asp:Label ID="DeptName" runat="server" Text="Department Name:"></asp:Label>
        <asp:DropDownList ID="DeptNameDDList" runat="server" DataSourceID="FacultyDeptNameDataSource" DataTextField="department_name" DataValueField="department_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="FacultyDeptNameDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="select dept.department_name from dbo.department as dept, dbo.program as prg where dept.department_id = prg.department_id;"></asp:SqlDataSource>
        <br />
    
        <asp:Label ID="FacultyIDLbl" runat="server" Text="Faculty ID:"></asp:Label>
        <asp:DropDownList ID="FacultyIDDDL" runat="server" DataSourceID="FacultyIDListEMPLOYEE" DataTextField="EUSER_ID" DataValueField="EUSER_ID" >
        </asp:DropDownList>
        <asp:SqlDataSource ID="FacultyIDListEMPLOYEE" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [euser_id] FROM [employee] WHERE (([employee_type] = @employee_type) AND ([employement_status] = @employement_status))">
            <SelectParameters>
                <asp:Parameter DefaultValue="Teaching" Name="employee_type" Type="String" />
                <asp:Parameter DefaultValue="Activ" Name="employement_status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp; Faculty Name:
        <asp:TextBox ID="FacultyNameTB" runat="server" Enabled="False" Width="125px"></asp:TextBox>
&nbsp;<br />
        <asp:Label ID="FacultySpecializationLbl" runat="server" Text="Specialization:"></asp:Label>
        <asp:TextBox ID="FacultySpecializationTB" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="FacultyEducationLbl" runat="server" Text="Education:"></asp:Label>
        <asp:TextBox ID="FacultyEducationTB" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="ContractHoursLbl" runat="server" Text="Contract (Total Eligible Credits Dealt Per Year):"></asp:Label>
        <asp:TextBox ID="ContractHoursTB" runat="server"></asp:TextBox>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="FacultyCreateSubmitButton" runat="server" Text="Submit" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="FacultyCreateClearButton" runat="server" Text="Clear" OnClick="FacultyCreateClearButton_Click" />
        </p>
    
            
    </form>
</body>
</html>
