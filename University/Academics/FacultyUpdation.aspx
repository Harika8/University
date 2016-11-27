<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyUpdation.aspx.cs" Inherits="University.Academics.FacultyUpdation" %>

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
    <form id="FacultyUpdationForm" runat="server">
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
                        <li><a href="AssignFacultyToCourse.aspx">Faculty Course Assignments</a></li> 
                        <li><a href="FacultyLoadReport.aspx">Faculty Load Report</a></li>                  
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>

        <p style="width: 203px; margin-left: 600px">
            <b>Form to Update/Delete a Faculty under a Department</b></p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="fuser_id" DataSourceID="FacultytblDataSource">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="fuser_id" HeaderText="fuser_id" ReadOnly="True" SortExpression="fuser_id" />
                <asp:BoundField DataField="specalization" HeaderText="specalization" SortExpression="specalization" />
                <asp:BoundField DataField="education" HeaderText="education" SortExpression="education" />
                <asp:BoundField DataField="contract" HeaderText="contract" SortExpression="contract" />
                <asp:BoundField DataField="department_id" HeaderText="department_id" SortExpression="department_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="FacultytblDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [faculty] WHERE [fuser_id] = @original_fuser_id AND [specalization] = @original_specalization AND [education] = @original_education AND [contract] = @original_contract AND [department_id] = @original_department_id" InsertCommand="INSERT INTO [faculty] ([fuser_id], [specalization], [education], [contract], [department_id]) VALUES (@fuser_id, @specalization, @education, @contract, @department_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [faculty]" UpdateCommand="UPDATE [faculty] SET [specalization] = @specalization, [education] = @education, [contract] = @contract, [department_id] = @department_id WHERE [fuser_id] = @original_fuser_id AND [specalization] = @original_specalization AND [education] = @original_education AND [contract] = @original_contract AND [department_id] = @original_department_id">
            <DeleteParameters>
                <asp:Parameter Name="original_fuser_id" Type="Int32" />
                <asp:Parameter Name="original_specalization" Type="String" />
                <asp:Parameter Name="original_education" Type="String" />
                <asp:Parameter Name="original_contract" Type="Int16" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fuser_id" Type="Int32" />
                <asp:Parameter Name="specalization" Type="String" />
                <asp:Parameter Name="education" Type="String" />
                <asp:Parameter Name="contract" Type="Int16" />
                <asp:Parameter Name="department_id" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="specalization" Type="String" />
                <asp:Parameter Name="education" Type="String" />
                <asp:Parameter Name="contract" Type="Int16" />
                <asp:Parameter Name="department_id" Type="Int16" />
                <asp:Parameter Name="original_fuser_id" Type="Int32" />
                <asp:Parameter Name="original_specalization" Type="String" />
                <asp:Parameter Name="original_education" Type="String" />
                <asp:Parameter Name="original_contract" Type="Int16" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
