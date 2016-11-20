<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepartmentCreation.aspx.cs" Inherits="University.Academics.DepartmentCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Academics Module" />
    <meta name="author" content="Sri Nuthalapati" />
    <title>Create Department</title>
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
    <form id="DepartmentCreationForm" runat="server">
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
                        <li><a href="DepartmentCreation.aspx">Create Department</a></li>
                        <li><a href="ProgramCreation.aspx">Create Program</a></li>                        
                        <li><a href="CourseCreation.aspx">Create Course</a></li>                  
                        <li><a href="AssignFacultyToCourse.aspx">Faculty Course Assignments</a></li> 
                        <li><a href="FacultyLoadReport.aspx">Faculty Load Report</a></li>                                          
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->
    </header>
    <div>
        <p style="width: 203px; margin-left: 600px">
        <b>Department Creation Form</b></p><br />
        <asp:Button ID="NewDeptButton" runat="server" Text="Enter New Department" />
        <asp:Button ID="UpdateDeptButton" runat="server" Text="Update Existing Department" Width="196px" />
        <asp:Button ID="DeleteDeptButton" runat="server" Text="Delete Existing Department" Width="196px" />
    
    
        <br />
        <asp:Label ID="DeptName" runat="server" Text="Department Name:"></asp:Label>
        <asp:TextBox ID="DepartmentNameTB" runat="server"></asp:TextBox>
        <asp:Label ID="DeptName0" runat="server" Text="Department ID:"></asp:Label>
        <asp:TextBox ID="DepartmentIDTB" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="DeptName1" runat="server" Text="Department Contact Details" CssClass="auto-style1"></asp:Label>
        <br class="auto-style1" />
        <br />
        <asp:Label ID="DeptName4" runat="server" Text="Department Location:"></asp:Label>
        <asp:DropDownList ID="DepartmentLocationDDL" runat="server">
            <asp:ListItem>Block A - Room 101</asp:ListItem>
            <asp:ListItem>Block B - Room 101</asp:ListItem>
            <asp:ListItem>Block B - Room 201</asp:ListItem>
            <asp:ListItem Value="Block C - Room 201"></asp:ListItem>
            <asp:ListItem>Block A - Room 301</asp:ListItem>
            <asp:ListItem>Block A - Room 302</asp:ListItem>
            <asp:ListItem>Block A - Room 140</asp:ListItem>
            <asp:ListItem>Block B - Room 222</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Label ID="DeptName2" runat="server" Text="Phone Number:"></asp:Label>
        <asp:TextBox ID="DepartmentPhoneNoTB" runat="server"></asp:TextBox>
        <asp:Label ID="DeptName3" runat="server" Text="Email ID:"></asp:Label>
        <asp:TextBox ID="DepartmentEmailIDTB" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="ProgramSubmitButton" runat="server" Text="Submit" OnClick="ProgramSubmitButton_Click" />
        <asp:Button ID="ProgramClearButton" runat="server" Text="Clear" />

        <asp:SqlDataSource ID="sqldepartment" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" DeleteCommand="DELETE FROM [department] WHERE [department_id] = @original_department_id AND [department_name] = @original_department_name AND [department_location] = @original_department_location AND [department_phone_num] = @original_department_phone_num AND [department_email_id] = @original_department_email_id" InsertCommand="INSERT INTO [department] ([department_name], [department_location], [department_phone_num], [department_email_id]) VALUES (@department_name, @department_location, @department_phone_num, @department_email_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [department]" UpdateCommand="UPDATE [department] SET [department_name] = @department_name, [department_location] = @department_location, [department_phone_num] = @department_phone_num, [department_email_id] = @department_email_id WHERE [department_id] = @original_department_id AND [department_name] = @original_department_name AND [department_location] = @original_department_location AND [department_phone_num] = @original_department_phone_num AND [department_email_id] = @original_department_email_id">
            <DeleteParameters>
                <asp:Parameter Name="original_department_id" Type="Int16" />
                <asp:Parameter Name="original_department_name" Type="String" />
                <asp:Parameter Name="original_department_location" Type="String" />
                <asp:Parameter Name="original_department_phone_num" Type="String" />
                <asp:Parameter Name="original_department_email_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="department_name" Type="String" />
                <asp:Parameter Name="department_location" Type="String" />
                <asp:Parameter Name="department_phone_num" Type="String" />
                <asp:Parameter Name="department_email_id" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="department_name" Type="String" />
                <asp:Parameter Name="department_location" Type="String" />
                <asp:Parameter Name="department_phone_num" Type="String" />
                <asp:Parameter Name="department_email_id" Type="String" />
                <asp:Parameter Name="original_department_id" Type="Int16" />
                <asp:Parameter Name="original_department_name" Type="String" />
                <asp:Parameter Name="original_department_location" Type="String" />
                <asp:Parameter Name="original_department_phone_num" Type="String" />
                <asp:Parameter Name="original_department_email_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
      </div>
    </form>
</body>
</html>
