<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hostel_Confirmation.aspx.cs" Inherits="University.Campus_Services.Hostel_Confirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
            margin-left: 240px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p style="margin-left: 40px">
            <span class="auto-style1"><strong>Hostel Accomodation Confirmation</strong></span><br />
        </p>
        <p style="margin-left: 80px">
            User Id:<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
        </p>
        <p style="margin-left: 40px">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Allotted Room Number :
        <asp:TextBox ID="TextBox4" runat="server" Height="22px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Duration Assigned :
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start Date:
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;(DD/MM/YYYY)<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <div>
    
        <asp:SqlDataSource ID="roomSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UniversityConnectionString3 %>" DeleteCommand="DELETE FROM [room] WHERE [room_no] = @room_no" InsertCommand="INSERT INTO [room] ([room_no], [room_type], [availability], [status], [user_id], [duration_stay]) VALUES (@room_no, @room_type, @availability, @status, @user_id, @duration_stay)" SelectCommand="SELECT * FROM [room]" UpdateCommand="UPDATE [room] SET [room_type] = @room_type, [availability] = @availability, [status] = @status, [user_id] = @user_id, [duration_stay] = @duration_stay WHERE [room_no] = @room_no">
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
    
    </div>
    </form>
</body>
</html>
