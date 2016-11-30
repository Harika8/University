<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service_RequestForm.aspx.cs" Inherits="University.Campus_Services.Service_RequestForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;<a href="ServiceRequestForm.aspx">ServiceRequestForm.aspx</a>
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">Service Request Form<br />
        </span></strong>
        <br />
        <br />
        Room Number:&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="roomservice2" DataTextField="room_no" DataValueField="room_no">
        </asp:DropDownList>
        &nbsp;
        <br />
        <br />
        Service Type:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Electricity</asp:ListItem>
            <asp:ListItem>Plumbing</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Service Time:&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>9 AM</asp:ListItem>
            <asp:ListItem>10 AM</asp:ListItem>
            <asp:ListItem>11 AM</asp:ListItem>
            <asp:ListItem>12 PM</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        Service Date:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="156px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        <br />
        Description:&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Height="64px" TextMode="MultiLine" Width="276px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" Width="61px" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:SqlDataSource ID="servicesource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [service] WHERE [service_id] = @service_id" InsertCommand="INSERT INTO [service] ([room_no], [service_type], [service_req_time], [service_req_date], [service_alloted_time], [service_alloted_date], [status]) VALUES (@room_no, @service_type, @service_req_time, @service_req_date, @service_alloted_time, @service_alloted_date, @status)" SelectCommand="SELECT * FROM [service]" UpdateCommand="UPDATE [service] SET [room_no] = @room_no, [service_type] = @service_type, [service_req_time] = @service_req_time, [service_req_date] = @service_req_date, [service_alloted_time] = @service_alloted_time, [service_alloted_date] = @service_alloted_date, [status] = @status WHERE [service_id] = @service_id">
            <DeleteParameters>
                <asp:Parameter Name="service_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
                <asp:Parameter Name="service_type" Type="String" />
                <asp:Parameter Name="service_req_time" Type="DateTime" />
                <asp:Parameter DbType="Date" Name="service_req_date" />
                <asp:Parameter Name="service_alloted_time" Type="DateTime" />
                <asp:Parameter DbType="Date" Name="service_alloted_date" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
                <asp:Parameter Name="service_type" Type="String" />
                <asp:Parameter Name="service_req_time" Type="DateTime" />
                <asp:Parameter DbType="Date" Name="service_req_date" />
                <asp:Parameter Name="service_alloted_time" Type="DateTime" />
                <asp:Parameter DbType="Date" Name="service_alloted_date" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="service_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="roomservice2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [room] WHERE [room_no] = @room_no" InsertCommand="INSERT INTO [room] ([room_no], [room_type], [availability], [user_id], [duration_stay]) VALUES (@room_no, @room_type, @availability, @user_id, @duration_stay)" SelectCommand="SELECT * FROM [room]" UpdateCommand="UPDATE [room] SET [room_type] = @room_type, [availability] = @availability, [user_id] = @user_id, [duration_stay] = @duration_stay WHERE [room_no] = @room_no">
            <DeleteParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
                <asp:Parameter Name="room_type" Type="String" />
                <asp:Parameter DbType="Date" Name="availability" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="duration_stay" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="room_type" Type="String" />
                <asp:Parameter DbType="Date" Name="availability" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="duration_stay" Type="String" />
                <asp:Parameter Name="room_no" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>

