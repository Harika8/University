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
                Room No :<asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="roomservice" DataTextField="room_no" DataValueField="room_no" Width="69px">
                </asp:DropDownList>
                </p>
            <p style="margin-left: 40px">
                Service Id:<asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="servicesource" DataTextField="service_id" DataValueField="service_id">
                </asp:DropDownList>
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
        <asp:SqlDataSource ID="servicesource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [service] WHERE [service_id] = @original_service_id AND (([service_alloted_time] = @original_service_alloted_time) OR ([service_alloted_time] IS NULL AND @original_service_alloted_time IS NULL)) AND (([service_alloted_date] = @original_service_alloted_date) OR ([service_alloted_date] IS NULL AND @original_service_alloted_date IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL))" InsertCommand="INSERT INTO [service] ([service_alloted_time], [service_alloted_date], [status]) VALUES (@service_alloted_time, @service_alloted_date, @status)" SelectCommand="SELECT * FROM [service]" UpdateCommand="UPDATE [service] SET [service_alloted_time] = @service_alloted_time, [service_alloted_date] = @service_alloted_date, [status] = @status WHERE [service_id] = @original_service_id ;" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_service_id" Type="Int16" />
                <asp:Parameter Name="original_service_alloted_time" Type="DateTime" />
                <asp:Parameter DbType="Date" Name="original_service_alloted_date" />
                <asp:Parameter Name="original_status" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="service_alloted_time" Type="DateTime" />
                <asp:Parameter Name="service_alloted_date" DbType="Date" />
                <asp:Parameter Name="status" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="service_alloted_time" Type="DateTime" />
                <asp:Parameter Name="service_alloted_date" DbType="Date" />
                <asp:Parameter Name="status" Type="String" />
                <asp:Parameter Name="original_service_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="roomservice" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" SelectCommand="SELECT * FROM [room]"></asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>

