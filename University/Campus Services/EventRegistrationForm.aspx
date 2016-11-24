<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventRegistrationForm.aspx.cs" Inherits="HostelAccomodationApplication.EventRegistrationForm" %>

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
    <div style="margin-left: 40px">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style2">Event Registration Form:</span><br />
        <br />
        <span class="auto-style1">Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:CheckBox ID="Student" runat="server" Text="Student" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="Faculty" runat="server" Text="Faculty" />
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
        Multi-Day Event:&nbsp;
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
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
        Event End Date:&nbsp;
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
        Event Hall* :&nbsp;<asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem>Cowart Hall</asp:ListItem>
            <asp:ListItem>Ball Room</asp:ListItem>
            <asp:ListItem>Student Center</asp:ListItem>
            <asp:ListItem>ZSC Lawn</asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        Expected attendance:&nbsp;
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <br />
        <br />
        Audio / Video Visuals:&nbsp;
        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            <asp:ListItem>YES</asp:ListItem>
            <asp:ListItem>NO</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Submit" />
        <asp:Button ID="Button2" runat="server" Text="Cancel" />
        <br />
        <asp:SqlDataSource ID="eventsource" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [event] WHERE [event_id] = @event_id" InsertCommand="INSERT INTO [event] ([event_title], [event_start_date], [multi_day_event], [event_end_date], [event_end_time], [event_start_time], [event_place], [event_capacity], [audio_visual]) VALUES (@event_title, @event_start_date, @multi_day_event, @event_end_date, @event_end_time, @event_start_time, @event_place, @event_capacity, @audio_visual)" SelectCommand="SELECT * FROM [event]" UpdateCommand="UPDATE [event] SET [event_title] = @event_title, [event_start_date] = @event_start_date, [multi_day_event] = @multi_day_event, [event_end_date] = @event_end_date, [event_end_time] = @event_end_time, [event_start_time] = @event_start_time, [event_place] = @event_place, [event_capacity] = @event_capacity, [audio_visual] = @audio_visual WHERE [event_id] = @event_id">
         
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
                <asp:Parameter Name="event_id" Type="Int16" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </span>
    
    </div>
    </form>
</body>
</html>
