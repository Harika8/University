<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hostel_Accomodation.aspx.cs" Inherits="University.Campus_Services.Hostel_Accomodation" %>

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
            User ID:<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </p>
        <p style="margin-left: 40px">
            Name of the Applicant:<asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            <br />
            <br />
            Type of accomodation : 
            .<asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Single bed room</asp:ListItem>
                <asp:ListItem>Double bed room</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Duration of stay :
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem>6 Months</asp:ListItem>
                <asp:ListItem>12 Months</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            Passport Number :
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Full Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Signature(Initials):<br />
            <br />
            Date:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;(DD/MM/YYYY)</p>
        <p style="margin-left: 320px">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
        </p>
    
    </div>
        <asp:SqlDataSource ID="roomsource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [room] WHERE [room_no] = @room_no" InsertCommand="INSERT INTO [room] ([room_no], [room_type], [availability], [status]) VALUES (@room_no, @room_type, @availability, @status)" SelectCommand="SELECT * FROM [room]" UpdateCommand="UPDATE [room] SET [room_type] = @room_type, [availability] = @availability, [status] = @status WHERE [room_no] = @room_no">
            <DeleteParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
                <asp:Parameter Name="room_type" Type="String" />
                <asp:Parameter DbType="Date" Name="availability" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="room_type" Type="String" />
                <asp:Parameter DbType="Date" Name="availability" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="room_no" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

