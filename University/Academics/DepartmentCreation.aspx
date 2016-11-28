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
        <b>Department - Creation Form</b></p>
        <asp:GridView ID="DepartmentTBLGridView" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="department_id" DataSourceID="DepartmentTBLDataSource" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="department_id" HeaderText="department_id" InsertVisible="False" ReadOnly="True" SortExpression="department_id" />
                <asp:BoundField DataField="department_name" HeaderText="department_name" SortExpression="department_name" />
                <asp:BoundField DataField="department_location" HeaderText="department_location" SortExpression="department_location" />
                <asp:BoundField DataField="department_phone_num" HeaderText="department_phone_num" SortExpression="department_phone_num" />
                <asp:BoundField DataField="department_email_id" HeaderText="department_email_id" SortExpression="department_email_id" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="DepartmentTBLDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT * FROM [department]"></asp:SqlDataSource>
        <br />
        <hr />
        <br />
        <asp:Label ID="DepartmentName" runat="server" Text="Department Name:"></asp:Label>
        <asp:TextBox ID="DepartmentNameTB" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="DepartmentIDLbl" runat="server" Text="Department ID:"></asp:Label>
        <asp:TextBox ID="DepartmentIDTB" runat="server" Enabled="False" Width="79px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="DepartmentDetailsLbl" runat="server" Text="***Department Contact Details" CssClass="auto-style1"></asp:Label>
        <br class="auto-style1" />
        <br />
        <asp:Label ID="DepartmentLocationLbl" runat="server" Text="Department Location:"></asp:Label>
        <asp:DropDownList ID="DepartmentLocationDDL" runat="server">
            <asp:ListItem>Block A - Room 101</asp:ListItem>
            <asp:ListItem>Block A - Room 120</asp:ListItem>
            <asp:ListItem>Block A - Room 302</asp:ListItem>
            <asp:ListItem>Block A - Room 311</asp:ListItem>
            <asp:ListItem>Block A - Room 312</asp:ListItem>
            <asp:ListItem>Block B - Room 101</asp:ListItem>
            <asp:ListItem>Block B - Room 111</asp:ListItem>
            <asp:ListItem>Block B - Room 111</asp:ListItem>
            <asp:ListItem>Block B - Room 119</asp:ListItem>
            <asp:ListItem>Block B - Room 129</asp:ListItem>
            <asp:ListItem>Block B - Room 201</asp:ListItem>
            <asp:ListItem>Block B - Room 204</asp:ListItem>
            <asp:ListItem>Block B - Room 211</asp:ListItem>
            <asp:ListItem>Block B - Room 212</asp:ListItem>
            <asp:ListItem>Block B - Room 214</asp:ListItem>
            <asp:ListItem>Block B - Room 221</asp:ListItem>
            <asp:ListItem>Block C - Room 119</asp:ListItem>
            <asp:ListItem>Block C - Room 201</asp:ListItem>
            <asp:ListItem>Block C - Room 210</asp:ListItem>
            <asp:ListItem>Block C - Room 219</asp:ListItem>
            <asp:ListItem>Block C - Room 310</asp:ListItem>
            <asp:ListItem>Block A - Room 111</asp:ListItem>
            <asp:ListItem>Block A - Room 221</asp:ListItem>
            <asp:ListItem>Block A - Room 222</asp:ListItem>
            <asp:ListItem>Block A - Room 121</asp:ListItem>
            <asp:ListItem>Block A - Room 301</asp:ListItem>
            <asp:ListItem>Block C - Room 101</asp:ListItem>
            <asp:ListItem>Block B - Room 222</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="DepartmentNoLbl" runat="server" Text="Phone Number:"></asp:Label>
        <asp:TextBox ID="DepartmentPhoneNoTB" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="DepartmentEmailIDLbl" runat="server" Text="Email ID:"></asp:Label>
        <asp:TextBox ID="DepartmentEmailIDTB" runat="server"></asp:TextBox>
        <br />
        <br />
        
        <asp:Button ID="ProgramSubmitButton" runat="server" Text="Submit" OnClick="ProgramSubmitButton_Click" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="ProgramClearButton" runat="server" Text="Clear" OnClick="ProgramClearButton_Click" />
        <br />
        <br />
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