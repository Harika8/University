<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceAllotedForm.aspx.cs" Inherits="University.Campus_Services.ServiceAllotedForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            margin-left: 320px;
        }
    </style>
</head>
<body>
        <br />
        <form id="form1" runat="server">
            <p style="margin-left: 40px">
                <span class="auto-style1"><strong>Service Allotment Form</strong></span></p>
            <p style="margin-left: 40px">
                <br />
        Service Completion Time:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList4" runat="server">
            <asp:ListItem>10 AM</asp:ListItem>
            <asp:ListItem>11 AM</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        Service Completion Date:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        <br />
        Service Status:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList5" runat="server">
            <asp:ListItem>Completed</asp:ListItem>
            <asp:ListItem>Work in Progress</asp:ListItem>
            <asp:ListItem>Pending</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <br />
        Signature (Enter your initials):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
    <div>
    
    </div>
    </form>
</body>
</html>
