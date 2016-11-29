<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseUpdation.aspx.cs" Inherits="University.Academics.CourseUpdation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>Update Course</title>
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
    <form id="CourseUpdationForm" runat="server">
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
        <b>Course - Updation/Deletion Form</b></p><br />
        <asp:GridView ID="CourseGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="course_id" DataSourceID="CourseUpdationSQLDataSource" AllowPaging="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="course_id" HeaderText="course_id" InsertVisible="False" ReadOnly="True" SortExpression="course_id" />
                <asp:BoundField DataField="course_name" HeaderText="course_name" SortExpression="course_name" />
                <asp:BoundField DataField="Effective_start_date" HeaderText="Effective_start_date" SortExpression="Effective_start_date" />
                <asp:BoundField DataField="course_description" HeaderText="course_description" SortExpression="course_description" />
                <asp:BoundField DataField="department_id" HeaderText="department_id" SortExpression="department_id" />
                <asp:BoundField DataField="course_level" HeaderText="course_level" SortExpression="course_level" />
                <asp:BoundField DataField="program_id" HeaderText="program_id" SortExpression="program_id" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="CourseUpdationSQLDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [course_id] = @original_course_id AND [course_name] = @original_course_name AND (([Effective_start_date] = @original_Effective_start_date) OR ([Effective_start_date] IS NULL AND @original_Effective_start_date IS NULL)) AND (([course_description] = @original_course_description) OR ([course_description] IS NULL AND @original_course_description IS NULL)) AND [department_id] = @original_department_id AND [course_level] = @original_course_level AND [program_id] = @original_program_id" InsertCommand="INSERT INTO [course] ([course_name], [Effective_start_date], [course_description], [department_id], [course_level], [program_id]) VALUES (@course_name, @Effective_start_date, @course_description, @department_id, @course_level, @program_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [course]" UpdateCommand="UPDATE [course] SET [course_name] = @course_name, [Effective_start_date] = @Effective_start_date, [course_description] = @course_description, [department_id] = @department_id, [course_level] = @course_level, [program_id] = @program_id WHERE [course_id] = @original_course_id AND [course_name] = @original_course_name AND (([Effective_start_date] = @original_Effective_start_date) OR ([Effective_start_date] IS NULL AND @original_Effective_start_date IS NULL)) AND (([course_description] = @original_course_description) OR ([course_description] IS NULL AND @original_course_description IS NULL)) AND [department_id] = @original_department_id AND [course_level] = @original_course_level AND [program_id] = @original_program_id">
            <DeleteParameters>
                <asp:Parameter Name="original_course_id" Type="Int16" />
                <asp:Parameter Name="original_course_name" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Effective_start_date" />
                <asp:Parameter Name="original_course_description" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
                <asp:Parameter Name="original_course_level" Type="String" />
                <asp:Parameter Name="original_program_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="course_name" Type="String" />
                <asp:Parameter DbType="Date" Name="Effective_start_date" />
                <asp:Parameter Name="course_description" Type="String" />
                <asp:Parameter Name="department_id" Type="Int16" />
                <asp:Parameter Name="course_level" Type="String" />
                <asp:Parameter Name="program_id" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="course_name" Type="String" />
                <asp:Parameter DbType="Date" Name="Effective_start_date" />
                <asp:Parameter Name="course_description" Type="String" />
                <asp:Parameter Name="department_id" Type="Int16" />
                <asp:Parameter Name="course_level" Type="String" />
                <asp:Parameter Name="program_id" Type="Int16" />
                <asp:Parameter Name="original_course_id" Type="Int16" />
                <asp:Parameter Name="original_course_name" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Effective_start_date" />
                <asp:Parameter Name="original_course_description" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
                <asp:Parameter Name="original_course_level" Type="String" />
                <asp:Parameter Name="original_program_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
