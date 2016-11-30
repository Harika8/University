<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event_Confirmation.aspx.cs" Inherits="University.Campus_Services.Event_Confirmation" %>

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
            User Id:
            <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
        </p>
        <p style="margin-left: 40px">
        Allotted Hall:&nbsp;
        <asp:TextBox ID="TextBox18" runat="server" Width="164px"></asp:TextBox>
        <br />
        <br />
            Allotted Start Date:&nbsp;
        <asp:TextBox ID="TextBox23" runat="server" Width="148px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="(MM/DD/YYYY)"></asp:Label>
        <br />
        <br />
        Allotted Start Time:&nbsp;<asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
            <br />
        <br />
        Allotted Capacity:&nbsp;
        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
        <br />
        <br />
            Allotted End Date:&nbsp;
        <asp:TextBox ID="TextBox21" runat="server" Width="177px"></asp:TextBox>
        <br />
        <br />
            Allotted End Time:&nbsp;
        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
        </p>
        <p style="margin-left: 360px">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" />
        </p>
    
 
    
        <asp:SqlDataSource ID="eventSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [event] WHERE [event_id] = @event_id" InsertCommand="INSERT INTO [event] ([event_title], [event_start_date], [multi_day_event], [event_end_date], [event_end_time], [event_start_time], [event_place], [event_capacity], [audio_visual], [user_id]) VALUES (@event_title, @event_start_date, @multi_day_event, @event_end_date, @event_end_time, @event_start_time, @event_place, @event_capacity, @audio_visual, @user_id)" SelectCommand="SELECT * FROM [event]" UpdateCommand="UPDATE [event] SET [event_title] = @event_title, [event_start_date] = @event_start_date, [multi_day_event] = @multi_day_event, [event_end_date] = @event_end_date, [event_end_time] = @event_end_time, [event_start_time] = @event_start_time, [event_place] = @event_place, [event_capacity] = @event_capacity, [audio_visual] = @audio_visual, [user_id] = @user_id WHERE [event_id] = @event_id">
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
    
    </div>
    </form>
</body>
</html>
