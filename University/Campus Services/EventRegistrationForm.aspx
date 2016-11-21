<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EventRegistrationForm.aspx.vb" Inherits="HostelAccomodationApplication.EventRegistrationForm" %>

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
        }
    </style>
</head>
<body style="font-weight: 700">
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">Event Registration Form:</span><br />
        <br />
        <span class="auto-style1">Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:CheckBox ID="Student" runat="server" Text="Student" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="Faculty" runat="server" Text="Faculty" />
        <br />
        <br />
        Name of the applicant:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        First Name:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="179px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="177px"></asp:TextBox>
        <br />
        <br />
        Student / Faculty ID:&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        Phone Number:&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="168px"></asp:TextBox>
        <br />
        <br />
        Email:&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="287px"></asp:TextBox>
        <br />
        <br />
        Event Title:&nbsp;
        <asp:TextBox ID="TextBox7" runat="server" Width="274px"></asp:TextBox>
        <br />
        <br />
        Event Description:&nbsp;
        <asp:TextBox ID="TextBox8" runat="server" Height="56px" TextMode="MultiLine" Width="226px"></asp:TextBox>
        <br />
        <br />
        <br />
        Sponsoring Organization:&nbsp;
        <asp:TextBox ID="TextBox9" runat="server" Width="196px"></asp:TextBox>
        <br />
        <br />
        <br />
        Multi-Day Event:&nbsp;
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox2" runat="server" Text="No" />
        <br />
        <br />
        <br />
        Recurring Event:&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Yes" />
&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox4" runat="server" Text="No" />
        <br />
        <br />
        <br />
        Event Start Date:&nbsp;
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        <br />
        Event Start Time:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox11" runat="server" Width="113px"></asp:TextBox>
        <br />
        <br />
        <br />
        Event EndEvent End Date:&nbsp;
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label3" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        <br />
        Event End Time:&nbsp;
        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Event Hall* :&nbsp;&nbsp;&nbsp; ID="DropDownList1" runat="server">
            <asp:ListItem>Student Centre Ball Room</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        If other, Please specify:&nbsp;
        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Expected attendance:&nbsp;
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Catering needed:&nbsp;
        <asp:CheckBox ID="CheckBox5" runat="server" Text="Yes" />
&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox6" runat="server" Text="No" />
        <br />
        <br />
        <br />
        Audio / Video Visuals:&nbsp;
        <asp:CheckBox ID="CheckBox7" runat="server" Text="Yes" />
&nbsp;
        <asp:CheckBox ID="CheckBox8" runat="server" Text="No" />
        <br />
        <br />
        <br />
        Describe any setup needed:&nbsp;
        <asp:TextBox ID="TextBox16" runat="server" TextMode="MultiLine" Width="179px"></asp:TextBox>
        <br />
        <br />
        <br />
        Additional Needs (Band Playing, Lecture, ...etc.):<br />
        <asp:TextBox ID="TextBox17" runat="server" Height="54px" TextMode="MultiLine" Width="289px"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <br />
        </span>
    
    </div>
    </form>
</body>
</html>
