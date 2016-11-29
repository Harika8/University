<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hostel_RoomReport.aspx.cs" Inherits="University.Campus_Services.Hostel_RoomReport" %>

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
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">Hostel Room Report</span><br />
        <br />
        <span class="auto-style1">From:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="130px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label4" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To:&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="132px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        <br />
        Room Number:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>100</asp:ListItem>
            <asp:ListItem>101</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Room Status:&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Vacant</asp:ListItem>
            <asp:ListItem>Occupied</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Run Report" OnClick="Button1_Click" />
        <br />
&nbsp;</span></div>
        <asp:SqlDataSource ID="SqlTenant" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [tenent] WHERE [tuser_id] = @original_tuser_id AND [allocation_room_no] = @original_allocation_room_no" InsertCommand="INSERT INTO [tenent] ([tuser_id], [allocation_room_no]) VALUES (@tuser_id, @allocation_room_no)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tenent]" UpdateCommand="UPDATE [tenent] SET [allocation_room_no] = @allocation_room_no WHERE [tuser_id] = @original_tuser_id AND [allocation_room_no] = @original_allocation_room_no">
            <DeleteParameters>
                <asp:Parameter Name="original_tuser_id" Type="Int32" />
                <asp:Parameter Name="original_allocation_room_no" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tuser_id" Type="Int32" />
                <asp:Parameter Name="allocation_room_no" Type="Int16" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="allocation_room_no" Type="Int16" />
                <asp:Parameter Name="original_tuser_id" Type="Int32" />
                <asp:Parameter Name="original_allocation_room_no" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="roomSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [room] WHERE [room_no] = @room_no" InsertCommand="INSERT INTO [room] ([room_no], [room_type], [availability], [status], [user_id], [duration_stay]) VALUES (@room_no, @room_type, @availability, @status, @user_id, @duration_stay)" SelectCommand="SELECT * FROM [room]" UpdateCommand="UPDATE [room] SET [room_type] = @room_type, [availability] = @availability, [status] = @status, [user_id] = @user_id, [duration_stay] = @duration_stay WHERE [room_no] = @room_no">
            <DeleteParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
                <asp:Parameter Name="room_type" Type="String" />
                <asp:Parameter DbType="Date" Name="availability" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="duration_stay" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="room_type" Type="String" />
                <asp:Parameter DbType="Date" Name="availability" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="duration_stay" Type="String" />
                <asp:Parameter Name="room_no" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

