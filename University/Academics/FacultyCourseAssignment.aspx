<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyCourseAssignment.aspx.cs" Inherits="University.Academics.FacultyCourseAssignment" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>FacultyCourseAssignment</title>
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
    <form id="FacultyCourseAssignmentForm" runat="server">
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
            <b>Form to Assign a Faculty to a Course</b></p>
    
        <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="Back" />
        <br />
        <hr />
        <br />
    
        <asp:Label ID="DeptIDLbl" runat="server" Text="Department ID:"></asp:Label>
        <asp:DropDownList ID="DeptIDDDList" runat="server" DataSourceID="DeptIDs_DataSource" DataTextField="department_id" DataValueField="department_id" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="DeptIDs_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [department_id] FROM [department]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="UniversityDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [department_id] FROM [department]"></asp:SqlDataSource>
        <p>
            Course ID:
            <asp:DropDownList ID="CourseIDDDL" runat="server" DataSourceID="CourseIDs_DeptIDbased_DataSource" DataTextField="course_id" DataValueField="course_id" AutoPostBack="True" OnSelectedIndexChanged="CourseIDDDL_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="CourseIDs_DeptIDbased_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [course_id] FROM [course] WHERE ([department_id] = @department_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DeptIDDDList" DefaultValue="17" Name="department_id" PropertyName="SelectedValue" Type="Int16" />
                </SelectParameters>
            </asp:SqlDataSource>
&nbsp;Course Name:<asp:TextBox ID="CourseNameTB" runat="server" Enabled="False"></asp:TextBox>
        </p>
        <p>
            Faculty ID:
            <asp:DropDownList ID="FacultyIDDDL" runat="server" DataSourceID="FacutyIDs_DeptIDbased_DataSource" DataTextField="fuser_id" DataValueField="fuser_id" AutoPostBack="True" OnSelectedIndexChanged="FacultyIDDDL_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:SqlDataSource ID="FacutyIDs_DeptIDbased_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [fuser_id] FROM [faculty] WHERE ([department_id] = @department_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DeptIDDDList" DefaultValue="17" Name="department_id" PropertyName="SelectedValue" Type="Int16" />
                </SelectParameters>
            </asp:SqlDataSource>
&nbsp;Faculty Name:<asp:TextBox ID="FacultyNameTB" runat="server" Enabled="False"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="FacCrsSubmitBtn" runat="server" OnClick="FacCrsSubmitBtn_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="FacCrsResetBtn" runat="server" OnClick="FacCrsResetBtn_Click" Text="Reset" />
        </p>
        <p>
            <asp:SqlDataSource ID="Faculty_Course_TBL" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [faculty_course] WHERE [fuser_id] = @original_fuser_id AND [course_id] = @original_course_id AND [department_id] = @original_department_id" InsertCommand="INSERT INTO [faculty_course] ([fuser_id], [course_id], [department_id]) VALUES (@fuser_id, @course_id, @department_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [faculty_course]" UpdateCommand="UPDATE [faculty_course] SET [department_id] = @department_id WHERE [fuser_id] = @original_fuser_id AND [course_id] = @original_course_id AND [department_id] = @original_department_id">
                <DeleteParameters>
                    <asp:Parameter Name="original_fuser_id" Type="Int32" />
                    <asp:Parameter Name="original_course_id" Type="Int16" />
                    <asp:Parameter Name="original_department_id" Type="Int16" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fuser_id" Type="Int32" />
                    <asp:Parameter Name="course_id" Type="Int16" />
                    <asp:Parameter Name="department_id" Type="Int16" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="department_id" Type="Int16" />
                    <asp:Parameter Name="original_fuser_id" Type="Int32" />
                    <asp:Parameter Name="original_course_id" Type="Int16" />
                    <asp:Parameter Name="original_department_id" Type="Int16" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <hr />
        <p>
            <asp:GridView ID="Faculty_Course_GridView" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="fuser_id,course_id" DataSourceID="FacCrs_TBL_DataSource" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="fuser_id" HeaderText="fuser_id" ReadOnly="True" SortExpression="fuser_id" />
                    <asp:BoundField DataField="course_id" HeaderText="course_id" ReadOnly="True" SortExpression="course_id" />
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
            <asp:SqlDataSource ID="FacCrs_TBL_DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [faculty_course]"></asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
