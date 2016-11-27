<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HostelConfirmation.aspx.cs" Inherits="University.Campus_Services.HostelConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            margin-left: 240px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p style="margin-left: 40px">
            <span class="auto-style1"><strong>Hostel Accomodation Confirmation</strong></span><br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Allotted Room Number :
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Duration Assigned :
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>6 Months</asp:ListItem>
            <asp:ListItem>12 Months</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start Date:
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;(DD/MM/YYYY)<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Approved Employee Name :<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>
