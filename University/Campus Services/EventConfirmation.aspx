<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventConfirmation.aspx.cs" Inherits="University.Campus_Services.EventConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            font-weight: normal;
        }
        .auto-style2 {
            text-decoration: underline;
            margin-left: 320px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div class="auto-style1">
    
        <p style="margin-left: 40px">
            <span class="auto-style2"><strong>Confirmed Event Details</strong></span><br />
        </p>
        <p style="margin-left: 40px">
        Allotted Hall:&nbsp;
        <asp:TextBox ID="TextBox18" runat="server" Width="164px"></asp:TextBox>
        <br />
        <br />
        Allotted Allotted Date:&nbsp;
        <asp:TextBox ID="TextBox23" runat="server" Width="148px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        Allotted Time:&nbsp; extBox19" runat="server"></asp:TextBox>
        <br />
        <br />
        Allotted Capacity:&nbsp;
        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
        <br />
        <br />
        Event Manager Name:&nbsp;
        <asp:TextBox ID="TextBox21" runat="server" Width="177px"></asp:TextBox>
        <br />
        <br />
        Signature (Please enter initials):&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date:&nbsp;
        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
        </p>
    
    </div>
    </form>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
