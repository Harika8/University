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
        </p>
        <p style="margin-left: 40px">
            User ID:<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Go" />
        </p>
        <p style="margin-left: 40px">
            <span class="auto-style1">First Name:&nbsp;
        <asp:TextBox ID="TextBox12" runat="server" Width="179px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="177px" Height="22px" ></asp:TextBox>
        <br />
        <br />
        Phone Number:&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="168px" style="height: 22px"></asp:TextBox>
        <br />
        <br />
        Email:&nbsp;
        <asp:TextBox ID="TextBox13" runat="server" Width="287px"></asp:TextBox>
        </span>
        </p>
        <p style="margin-left: 40px">
            <span class="auto-style1">
        <br />
        </span>Type of accomodation : 
            
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="Single">Single bed room</asp:ListItem>
                <asp:ListItem Value="Double">Double bed room</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p style="margin-left: 40px">
            Select available room:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Visible="True">
                <asp:ListItem>101</asp:ListItem>
                <asp:ListItem>102</asp:ListItem>
                <asp:ListItem>103</asp:ListItem>
                <asp:ListItem>104</asp:ListItem>
                <asp:ListItem>105</asp:ListItem>
                <asp:ListItem>106</asp:ListItem>
                <asp:ListItem>107</asp:ListItem>
                <asp:ListItem>108</asp:ListItem>
                <asp:ListItem>109</asp:ListItem>
                <asp:ListItem>110</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p style="margin-left: 40px">
            <br />
            Duration of stay :
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem>6 Months</asp:ListItem>
                <asp:ListItem>12 Months</asp:ListItem>
            </asp:RadioButtonList>
            &nbsp;Availability date:<asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        </p>
        <p style="margin-left: 40px">
            <br />
            <br />
            Full Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
            <br />
            Date:<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;(MM/DD/YYYY)<asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
        </p>
    
    </div>
        <asp:SqlDataSource ID="roomsource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" SelectCommand="SELECT * FROM [room]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [user_info] WHERE [user_id] = @user_id" InsertCommand="INSERT INTO [user_info] ([first_name], [last_name]) VALUES (@first_name, @last_name)" SelectCommand="SELECT [first_name], [user_id], [last_name] FROM [user_info]" UpdateCommand="UPDATE [user_info] SET [first_name] = @first_name, [last_name] = @last_name WHERE [user_id] = @user_id">
            <DeleteParameters>
                <asp:Parameter Name="user_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="first_name" Type="String" />
                <asp:Parameter Name="last_name" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

