<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Service_AllotedForm.aspx.cs" Inherits="University.Campus_Services.Service_AllotedForm" %>



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
                Room No :<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </p>
            <p style="margin-left: 40px">
                Assign Service Id:<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </p>
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
            </p>
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Allot service" OnClick="Button1_Click" />
        <asp:SqlDataSource ID="servicesource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [service] WHERE [service_id] = @service_id" InsertCommand="INSERT INTO [service] ([room_no], [service_type], [service_req_time], [service_req_date], [service_alloted_time], [service_alloted_date], [status]) VALUES (@room_no, @service_type, @service_req_time, @service_req_date, @service_alloted_time, @service_alloted_date, @status)" SelectCommand="SELECT * FROM [service]" UpdateCommand="UPDATE [service] SET [room_no] = @room_no, [service_type] = @service_type, [service_req_time] = @service_req_time, [service_req_date] = @service_req_date, [service_alloted_time] = @service_alloted_time, [service_alloted_date] = @service_alloted_date, [status] = @status WHERE [service_id] = @service_id">
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
    
        <asp:SqlDataSource ID="roomsource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [room] WHERE [room_no] = @room_no" InsertCommand="INSERT INTO [room] ([room_no]) VALUES (@room_no)" SelectCommand="SELECT [room_no] FROM [room]">
            <DeleteParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="room_no" Type="Int16" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>

