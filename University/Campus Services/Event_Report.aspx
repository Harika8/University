<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event_Report.aspx.cs" Inherits="University.Campus_Services.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style1">Event Report<br />
        <br />
        </span></strong>From :
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label2" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To :
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label3" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        Event Hall :
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Student Centre Ball room</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Run Report" OnClick="Button1_Click" />
    
    </div>
        <asp:SqlDataSource ID="eventSource2" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [event] WHERE [event_id] = @event_id" InsertCommand="INSERT INTO [event] ([event_title], [event_start_date], [multi_day_event], [event_end_date], [event_end_time], [event_start_time], [event_place], [event_capacity], [audio_visual], [user_id]) VALUES (@event_title, @event_start_date, @multi_day_event, @event_end_date, @event_end_time, @event_start_time, @event_place, @event_capacity, @audio_visual, @user_id)" SelectCommand="SELECT * FROM [event]" UpdateCommand="UPDATE [event] SET [event_title] = @event_title, [event_start_date] = @event_start_date, [multi_day_event] = @multi_day_event, [event_end_date] = @event_end_date, [event_end_time] = @event_end_time, [event_start_time] = @event_start_time, [event_place] = @event_place, [event_capacity] = @event_capacity, [audio_visual] = @audio_visual, [user_id] = @user_id WHERE [event_id] = @event_id">
            <DeleteParameters>
                <asp:Parameter Name="event_id" Type="Int16" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="event_title" Type="String" />
                <asp:Parameter DbType="Date" Name="event_start_date" />
                <asp:Parameter Name="multi_day_event" Type="String" />
                <asp:Parameter DbType="Date" Name="event_end_date" />
                <asp:Parameter Name="event_end_time" Type="DateTime" />
                <asp:Parameter Name="event_start_time" Type="DateTime" />
                <asp:Parameter Name="event_place" Type="String" />
                <asp:Parameter Name="event_capacity" Type="Int16" />
                <asp:Parameter Name="audio_visual" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="event_title" Type="String" />
                <asp:Parameter DbType="Date" Name="event_start_date" />
                <asp:Parameter Name="multi_day_event" Type="String" />
                <asp:Parameter DbType="Date" Name="event_end_date" />
                <asp:Parameter Name="event_end_time" Type="DateTime" />
                <asp:Parameter Name="event_start_time" Type="DateTime" />
                <asp:Parameter Name="event_place" Type="String" />
                <asp:Parameter Name="event_capacity" Type="Int16" />
                <asp:Parameter Name="audio_visual" Type="String" />
                <asp:Parameter Name="user_id" Type="Int32" />
                <asp:Parameter Name="event_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

