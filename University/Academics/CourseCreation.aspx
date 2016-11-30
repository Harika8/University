<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseCreation.aspx.cs" Inherits="University.Academics.CourseCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>Create Course</title>
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
    <form id="CourseCreationForm" runat="server">
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
        <b>Course Creation Form</b></p>
        <br />
        <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="Back" />
        <br />
        <asp:SqlDataSource ID="CourseTBLDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [course]"></asp:SqlDataSource>
        <hr />
    
        <asp:Label ID="DepartmentIDLbl" runat="server" Text="Department ID:"></asp:Label>
        <asp:DropDownList ID="DepartmentIDDDList" runat="server" DataSourceID="DepartmentIDList" DataTextField="department_id" DataValueField="department_id" AutoPostBack="True">
        </asp:DropDownList>
        
        <asp:SqlDataSource ID="DepartmentIDList" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [department_id] FROM [department]"></asp:SqlDataSource>
        
        <p>
        <asp:Label ID="CourseLevelLbl" runat="server" Text="Course Level:"></asp:Label>
        <asp:DropDownList ID="CourseLevelDDList" runat="server">
                <asp:ListItem>Grad</asp:ListItem>
                <asp:ListItem>PhD</asp:ListItem>
                <asp:ListItem>UnderGrad</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="ProgramIDLbl" runat="server" Text="Program ID:"></asp:Label>
            <asp:DropDownList ID="ProgramIDDDL" runat="server" DataSourceID="ProgramIDList_DeptID_CRSLVL" DataTextField="program_id" DataValueField="program_id" Height="28px" Width="73px" AutoPostBack="True">
            </asp:DropDownList>
            <asp:SqlDataSource ID="ProgramIDList_DeptID_CRSLVL" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [program_id] FROM [program] WHERE (([department_id] = @department_id) AND ([course_level] = @course_level))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DepartmentIDDDList" DefaultValue="17" Name="department_id" PropertyName="SelectedValue" Type="Int16" />
                    <asp:ControlParameter ControlID="CourseLevelDDList" DefaultValue="Grad" Name="course_level" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="CourseNameLbl" runat="server" Text="Course Name:"></asp:Label>
            <asp:TextBox ID="CourseNameTB" runat="server" Width="127px"></asp:TextBox>
            <asp:Label ID="CourseNumberLbl" runat="server" Text="Course Number:"></asp:Label>
            <asp:TextBox ID="CourseNumberTB" runat="server" Width="125px" Enabled="False"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="CourseEffDtLbl" runat="server" Text="Effective Date:"></asp:Label>
            <asp:TextBox ID="CourseEffectiveDateTB" runat="server" Width="142px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="CourseDescriptionLbl" runat="server" Text="Course Description:"></asp:Label>
            <asp:TextBox ID="CourseDescriptionTB" runat="server" Width="372px" Height="56px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p style="margin-left: 200px">
            <asp:Button ID="CourseSubmitButton" runat="server" Text="Submit" OnClick="CourseSubmitButton_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="CourseClearButton" runat="server" Text="Clear" OnClick="CourseClearButton_Click" />
        </p>

   
        <asp:SqlDataSource ID="CourseInsertSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [course] WHERE [course_id] = @original_course_id AND [course_name] = @original_course_name AND (([Effective_start_date] = @original_Effective_start_date) OR ([Effective_start_date] IS NULL AND @original_Effective_start_date IS NULL)) AND (([course_description] = @original_course_description) OR ([course_description] IS NULL AND @original_course_description IS NULL)) AND [department_id] = @original_department_id AND [course_level] = @original_course_level AND [program_id] = @original_program_id" InsertCommand="INSERT INTO [course] ([course_name], [Effective_start_date], [course_description], [department_id], [course_level], [program_id]) VALUES (@course_name, @Effective_start_date, @course_description, @department_id, @course_level, @program_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [course]" UpdateCommand="UPDATE [course] SET [course_name] = @course_name, [Effective_start_date] = @Effective_start_date, [course_description] = @course_description, [department_id] = @department_id, [course_level] = @course_level, [program_id] = @program_id WHERE [course_id] = @original_course_id AND [course_name] = @original_course_name AND (([Effective_start_date] = @original_Effective_start_date) OR ([Effective_start_date] IS NULL AND @original_Effective_start_date IS NULL)) AND (([course_description] = @original_course_description) OR ([course_description] IS NULL AND @original_course_description IS NULL)) AND [department_id] = @original_department_id AND [course_level] = @original_course_level AND [program_id] = @original_program_id">
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

   
        <hr />
        <asp:GridView ID="CourseTBLGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="course_id" DataSourceID="CourseTBLDataSource" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" AllowPaging="True" PageSize="5">
            <Columns>
                <asp:BoundField DataField="course_id" HeaderText="Course ID" InsertVisible="False" ReadOnly="True" SortExpression="course_id" />
                <asp:BoundField DataField="course_name" HeaderText="Course Name" SortExpression="course_name" />
                <asp:BoundField DataField="course_description" HeaderText="Course Description" SortExpression="course_description" />
                <asp:BoundField DataField="Effective_start_date" HeaderText="Course - Eff Start Dt" SortExpression="Effective_start_date" />
                <asp:BoundField DataField="department_id" HeaderText="Department ID" SortExpression="department_id" />
                <asp:BoundField DataField="course_level" HeaderText="Course Level" SortExpression="course_level" />
                <asp:BoundField DataField="program_id" HeaderText="Program ID" SortExpression="program_id" />
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

   
    </form>
</body>
</html>
