<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DepartmentCreation.aspx.cs" Inherits="University.Academics.DepartmentCreation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="DepartmentCreationForm" runat="server">
    <div>
    
    </div>
    <div>
    
        <p style="width: 203px; margin-left: 320px">
            Department Creation Form</p>
        <asp:Button ID="NewDeptButton" runat="server" Text="Enter New Department" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="UpdateDeptButton" runat="server" Text="Update Existing Department" Width="196px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="DeleteDeptButton" runat="server" Text="Delete Existing Department" Width="196px" />
    
    </div>
        <br />
        <asp:Label ID="DeptName" runat="server" Text="Department Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="DeptName0" runat="server" Text="Department ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <br />
        <br />
        <asp:Label ID="DeptName7" runat="server" Text="Department Staff"></asp:Label>
        &nbsp;<br />
        <br />
        <asp:Label ID="DeptName5" runat="server" Text="Faculty Name:"></asp:Label>
        &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="first_name" DataValueField="first_name">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Title: Director<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString %>" SelectCommand="SELECT per.first_name FROM user_info AS per INNER JOIN faculty AS fac ON per.user_id = fac.fuser_id"></asp:SqlDataSource>
        <asp:Label ID="DeptName6" runat="server" Text="Faculty Name:"></asp:Label>
        &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="first_name" DataValueField="first_name">
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="DeptName8" runat="server" Text="Title: Associate Director"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="DeptName1" runat="server" Text="Department Contact Details"></asp:Label>
        <br />
        &nbsp;&nbsp;<br />
        <asp:Label ID="DeptName4" runat="server" Text="Department Location:"></asp:Label>
        &nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="DeptName3" runat="server" Text="Email ID:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;</form>
</body>
</html>
