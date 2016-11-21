<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="HostelAccomodationApplication.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {}
        .auto-style2 {
            text-decoration: underline;
            margin-left: 240px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <p style="margin-left: 40px">
            &nbsp;</p>
        <p style="margin-left: 40px">
            <span class="auto-style2"><strong>Application From for Hostel Accomodation</strong></span><br />
            <br />
            Category of User :
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Student</asp:ListItem>
                <asp:ListItem>Faculty</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p style="margin-left: 40px">
            Name of the Applicant:<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            <br />
            Type of accomodation : <asp:CheckBox ID="CheckBox1" runat="server" Text="Single bed room" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="Double bed room" />
            .<br />
            <br />
            Duration of stay :
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>6 Months</asp:ListItem>
                <asp:ListItem>12 Months</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Date of Entry into the US:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;(DD/MM/YYYY)</p>
        <p style="margin-left: 40px">
            <br />
            Port of Entry: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Passport Number :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            VISA Number:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            Full Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Signature:<br />
            <br />
            Date:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;(DD/MM/YYYY)</p>
    
    </div>
    </form>
</body>
</html>
