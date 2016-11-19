<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseCreation.aspx.cs" Inherits="University.Academics.CourseCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div>
    
        <p style="width: 203px; margin-left: 320px">
            Course Creation Form</p>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="DeptName" runat="server" Text="Department Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DeptNameDDList" runat="server" DataSourceID="UniversityDatabase" DataTextField="department_name" DataValueField="department_name">
        </asp:DropDownList>
        <asp:SqlDataSource ID="UniversityDatabase" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT DISTINCT [department_name] FROM [department]"></asp:SqlDataSource>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="CourseLevel" runat="server" Text="Course Level:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="CourseLevelDDList" runat="server">
                <asp:ListItem>Grad</asp:ListItem>
                <asp:ListItem>PhD</asp:ListItem>
                <asp:ListItem>UnderGrad</asp:ListItem>
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="CourseLevel0" runat="server" Text="Program Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </p>
        <p style="margin-left: 200px">
            <asp:Button ID="NewProgramButton" runat="server" Text="Create" />
&nbsp;&nbsp;<asp:Button ID="ProgramSubmitButton0" runat="server" Text="Update" />
&nbsp;
            <asp:Button ID="DeleteProgramButton" runat="server" Text="Delete Existing" Width="112px" />
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ProgramName" runat="server" Text="Course Name:"></asp:Label>
&nbsp;
            <asp:TextBox ID="ProgramNameTB" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ProgramCode0" runat="server" Text="Course Number:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ProgramCodeTB0" runat="server" Width="125px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="ProgramCode1" runat="server" Text="Effective Date:"></asp:Label>
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ProgramCode" runat="server" Text="Course Description:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="ProgramCodeTB" runat="server" Width="372px" Height="56px"></asp:TextBox>
        </p>
        <p>
            ***Additional Information</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ProgramName1" runat="server" Text="Course Name:"></asp:Label>
&nbsp;
            <asp:TextBox ID="ProgramNameTB1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        </p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="ProgramName0" runat="server" Text="Course Name:"></asp:Label>
&nbsp;
            <asp:TextBox ID="ProgramNameTB0" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        </p>
        <p style="margin-left: 200px">
            <asp:Button ID="ProgramSubmitButton" runat="server" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="ProgramClearButton" runat="server" Text="Clear" />
        </p>
    
    </div>
    </form>
</body>
</html>
